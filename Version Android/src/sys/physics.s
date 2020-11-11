;;----------------------------------LICENSE NOTICE-----------------------------------------------------
;;Slimy is a challenging videogame made for Amstrad CPC
;;    Copyright (C) 2020  Maria del Rosario Fernandez Garcia // David Llopis Romero // Jessica Hernandez Gomez
;;
;;    This program is free software: you can redistribute it and/or modify
;;    it under the terms of the GNU General Public License as published by
;;    the Free Software Foundation, either version 3 of the License, or
;;    (at your option) any later version.
;;
;;    This program is distributed in the hope that it will be useful,
;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;    GNU General Public License for more details.
;;
;;    You should have received a copy of the GNU General Public License
;;    along with this program.  If not, see <https://www.gnu.org/licenses/>.
;;------------------------------------------------------------------------------------------------------
.include "hero.h.s"
.include "cpctelera.h.s"
.include "cpctelera_functions.h.s"
.include "man/game.h.s"
.include "man/gameover.h.s"
.globl _juego_pausado
jumptable:
    .db     #-5         
    .db     #-5          ;;20
    .db     #-4, #-4           ;;12
    .db     #-4, #-4, #-4, #-3, #-3      ;;15
    .db     #-2, #-2, #-2, #-2, #-2      ;;10       
    .db     #-2, #-2, #-2, #-2, #-2
    .db     #-1, #-1, #-1, #-1 , #-1, #-1   ;;5           
  
    .db     #0x80
  

falltable:
    ;;.db      #6, #8     
    ;;.db      #22, #26     TOTAL: 62
    .db     #6,     #8,     #10
    .db     #12,    #12,    #14

    .db     #0x80

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  CONTROLA EL SALTO DEL HEROE, REQUIERE PUNTERO IX AL PRIMER BYTE DEL HEROE
;;  DESTROYED REGISTER VALUES: IX, A, BC, HL
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


sys_physics_jump_control::
    call hero_getIXPtr  

    ;;Controla si ahora mismo estamos saltando                
    ld a, h_salto(ix)                   ;; Cargo el status del salto en a
    cp #-1                              ;; -1 indica que el heroe no esta saltando
    ret z                               ;; Si A == -1 no salta

    ld a, h_posicion(ix)                ;; Cargo la posicion del heroe en a (arriba o abajo)
    cp #0x0A                            ;; 0x0A indica que el heroe esta arriba ya
    ret z                               ;; Si ya esta arriba, no podemos seguir saltando
    

    ;;Get jump value
    ld a, h_salto(ix)                   ;; Cargo en a el status del salto
    ld      hl, #jumptable              ;; HL apunta al inicio de la tabla de salto
    ld      c,  a                       ;; Cargo en c el contenido de a y en b cargo un 0 para que el registro
    ld      b,  #0                      ;; BC sea igual a A (Offset)
    add     hl, bc                      ;; HL += BC incremento hl lo que me indica bc para ir desplazandome por la tabla de salto


    ;; Check End of jumping
    ld      a, (hl)                     ;; Cargo en a el contenido de la direccion de memoria que indica hl
    cp      #0x80                       ;; Si es un 80 querra decir que ya hemos terminado de leer la tabla de salto y ya podemos parar
    jr      z, sys_physics_end_of_jump  ;; Dejo de leer la tabla de salto y llamo al manejador de fin de salto


    ;; Do Jump Movement
    ld      b, a                        ;; A = Jump Movement // A tiene el contenido de la direccion de memoria de HL (sera un valor de la tabla de salto)
    ld      a, h_y(ix)                  ;; a = Posicion y del heroe
    add     b                           ;; Le sumo a la posicion del heroe el valor de la tabla de salto (que esta almacenado en b)
    ld      h_y(ix), a                  ;; Cambio la posicion del heroe cargando el contenido del registro a
    


    ;; Increment Hero Jump Index
    ld      a, h_salto(ix)              ;; A = Hero_jump
    inc     a                           ;; Incremento a para leer el siguiente valor de la tabla jump
    ld      h_salto(ix), a              ;; Cargo el contenido del status de salto en a
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  TERMINA EL SALTO PONIENDO LA ETIQUETA H_SALTO A -1
;;  DESTROYED REGISTER VALUES: A
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_end_of_jump::
    ld    a,                #-1
    ld    h_salto(ix),      a 

    ;;Controla si estamos en la parte de arriba
    ld              a,      h_y(ix)
    cp #0x76                     ;;Si mi posicion es 0x51 en el eje y, establezco el _posicion a 0x0A (arriba)
    call z, sys_physics_estoy_arriba
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  COMIENZA EL SALTO (COMPRUEBA ANTES QUE NO ESTEMOS YA EN UN SALTO Y, SI NO LO ESTAMOS, PONE H_SALTO A 0)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_startJump::
    call    hero_getIXPtr 
    ld      a, h_salto(ix)
    cp      #-1                         ;; Comprueba que el h_salto sea -1 para que, si no esta saltando, siga con la funcion y el salto se inicie
    ret     nz                          ;; Si es un 0 seguimos con la funcion (Si NO es un 0, no seguimos con la funcion)

    ld      a, h_posicion(ix)           ;;Si el personaje ya esta arriba no iniciamos el salto
    cp      #0x0A
    ret     z
    ;; (El resultado de cp #-1 sera 0 si el heroe NO esta saltando y distinto de 0 o nz si el heroe SI esta saltando)
    ;; Jump is inactive, activate it
    ld      a       , #0
    ld  h_salto(ix) , a

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  SI EL HEROE ESTA ARRIBA (POSICION Y: 0x00), CAMBIAMOS LA ETIQUETA H_POSICION A 0x0A
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_estoy_arriba::
      call hero_getIXPtr
      ld a, #0x0A
      ld h_posicion(ix), a
  ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  MUEVE EL HEROE HACIA LA DERECHA
;;  DESTROYED REGISTER VALUES: A, D, BC, HL
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_move_hero_right::

        ld      a, h_x(ix)
        cp      #80-8               ;;Comprueba el limite derecho (Tamanyo de la pantalla - Tamanyo del heroe)
        jr      z, do_not_move_r        ;;Posicion x heroe == limite de pantalla, asi que NO se mueve a la derecha

            ;; Move right
            inc     a 
            ld      h_x(ix), a          ;;Actualizo la posicion del heroe
        
        do_not_move_r:
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  MUEVE EL HEROE HACIA LA IZQUIERDA
;;  DESTROYED REGISTER VALUES: A, D, BC, HL
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_move_hero_left::

        ld      a, h_x(ix)
        cp      #00                     ;;Comprueba el limite izquierdo (inicio de la pantalla)
        jr      z, do_not_move_l        ;; Si el heroe esta en el limite, no se mueve mas hacia la izquierda
        
            ;;Move left
            dec     a 
            ld      h_x(ix), a

        do_not_move_l: 

ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  CONTROLA LA CAIDA DEL HEROE
;;  DESTROYED REGISTER VALUES: IX, BC, HL
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_fall_control::
    call hero_getIXPtr  

    ;;Controla si ahora mismo estamos saltando                
    ld a, h_salto(ix)                   ;; Hero jump status
    cp #-1                              ;; -1 indica que el heroe no esta saltando
    ret z                               ;; Si A == -1 no salta

    ld a, h_posicion(ix)
    cp #0x0B                            ;; Si nuestra posicion es 0x0B significa que ya estamos abajo
    ret z                               ;; y por tanto no podemos caer mas

    ;;Get jump value
    ld a, h_salto(ix)                   ;; Hero jump status
    ld      hl, #falltable              ;; HL apunta al inicio de la tabla de jum
    ld      c,  a
    ld      b,  #0                      ;; BC = A (Offset)
    add     hl, bc                      ;; HL += BC

    ;; Check End of jumping
    ld      a, (hl)
    cp      #0x80                       ;; Jump Value == 0
    jr      z, sys_physics_end_of_fall

    ;; Do Jump Movement
    ld      b, a                        ;; A = Jump Movement
    ld      a, h_y(ix)                  ;; a = Posicion y del heroe
    add     b                           ;; A+= 
    ld      h_y(ix), a
    
;; Increment Hero Fall Index
    ld      a, h_salto(ix)              ;; A = Hero_jump                         ;;Si ha llegado arriba del todo no sigue saltando
    inc     a 
    ld      h_salto(ix), a
ret

sys_physics_startFall::
    call    hero_getIXPtr 
    ld      a, h_salto(ix)
    cp      #-1                         ;; Comprueba que el h_salto sea -1 para que, si no esta saltando, siga con la funcion y el salto se inicie
    ret     nz                          ;; Si es un 0 seguimos con la funcion (Si NO es un 0, no seguimos con la funcion)

    ld      a, h_posicion(ix)           ;;Si el personaje ya esta arriba no iniciamos el salto
    cp      #0x0B
    ret     z
    ;; (El resultado de cp #-1 sera 0 si el heroe NO esta saltando y distinto de 0 o nz si el heroe SI esta saltando)
    ;; Jump is inactive, activate it
    ld      a       , #0
    ld  h_salto(ix) , a

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;;  TERMINA LA CAIDA PONIENDO LA ETIQUETA H_SALTO A -1
;;;;  Put -1 in the jump index when jump ends
;;;;  DESTROYED REGISTER VALUES: A, IX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_end_of_fall::
    ld      a,          #-1
    ld    h_salto(ix),  a 
                                      
    ld a, h_y(ix)
    cp #0xB4                            ;; Comprueba si estoy en el carril de abajo (posicion 0xB4)
    call z, sys_physics_estoy_abajo
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;;  COLOCA LA POSICION DEL HEROE O DEL OBSTACULO A 0x0B
;;;;  DESTROYED REGISTER VALUES: IX, A
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_physics_estoy_abajo::
      call hero_getIXPtr
      ld a, #0x0B
      ld h_posicion(ix), a
  ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;;  COMPRUEBA SI SE HA PRODUCIDO UNA COLISION O NO
;;;;  Put -1 in the jump index when jump ends
;;;;  IX: Entity_1 (Obstacles)
;;;;  IY: Entity_2 ((Hero))
;;;;  INPUT -> IX
;;;;  DESTROYED REGISTER VALUES: IX, IY, AF, BC, DE, BC
;;;;  SI SE PRODUCE UNA COLISION, REINICIAMOS EL JUEGO E INICIAMOS EL GAMEOVER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_collision_check::
call hero_getIYPtr
    ;; if ( A < B) no collision
    ;; A = e_x(ix) + e_w(ix)
    ;; B = e_x(iy) 
    ;; if ( e_x(ix) + e_w(ix)  <  e_x(iy)) ;;No collision
    ;; if ( e_x(ix) + e_w(ix)  -  e_x(iy)) < 0 ;;No collision
    ld          a, h_x(ix)
    add         h_w(ix)       
    sub         h_x(iy)
    jr          c, __no_collision

    ;; if ( C < D) no collision
    ;; C = e_x(iy) + e_w(iy)
    ;; D = e_x(ix) 
    ;; if ( e_x(iy) + e_w(iy)  <  e_x(ix)) ;;No collision
    ;; if ( e_x(iy) + e_w(iy)  -  e_x(ix)) < 0 ;;No collision
    ld          a, h_x(iy)
    add         h_w(iy)       
    sub         h_x(ix)
    jr          c, __no_collision

   ;;EL CODIGO ANTERIOR ERA EN EL EJE X, AHORA EN EL EJE Y
    ld          a, h_y(ix)
    add         h_h(ix)       
    sub         h_y(iy)
    jr          c, __no_collision

    
    ld          a, h_y(iy)
    add         h_h(iy)       
    sub         h_y(ix)
    jr          c, __no_collision

  ;;SI HAY COLISION LLEGA AQUI

    ld      h_vy(ix), #0x10
    ld a, #0
    ld (_juego_pausado), a ;;Pausa el timer si hay colision
    call man_game_restart;;Reinicia el heroe y limpia obstaculos
    call man_gameover_run;;Invoca la pantalla gameover

    ret

__no_collision:
    
ret