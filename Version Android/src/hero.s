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
.include "cpctelera.h.s"
.include "cpctelera_functions.h.s"
.include "hero.h.s"
.include "sys/physics.h.s"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  PUBLIC FUNCTIONS
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  LLAMA AL CONTROL DE SALTO, DE CAIDA Y RECIBE INFORMACION DE LAS TECLAS W,A,S,D DEL TECLADO
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
hero_update::
   call  sys_physics_fall_control
   call  sys_physics_jump_control
   call  keyboard_inputs
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  INICIALIZA LA INFORMACION DE LA ENTIDAD HEROE
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
hero_init::
    ;;_posicion 0x0B -> ABAJO   _posicion 0x0A -> ARRIB
    ;;DefineHero        _x,     _y,     _w,     _h,     _vx,    _vy,    tipo,     _salto,         _posicion, _animacion
    DefineEntity heroe    0x00,   0xB4,   0x06,   0x09,   0x00,   0x00,   0x03,       0xFF,           0x0B,     0x00
ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  DEVUELVE EN IX EL PRIMER BYTE DE LA DIRECCION DE LA ENTIDAD HEROE
;;  DESTROYED REGISTER VALUES: IX
;;  RETURNS; IX
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
hero_getIXPtr::
    ld ix, #heroe
ret

hero_getIYPtr::
    ld iy, #heroe
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  REESTABLECE LOS VALORES POR DEFECTO DEL HERIE
;;  DESTROYED REGISTER VALUES: A
;;  REQUIERE; PUNTERO IX CON LA DIRECCION DE MEMORIA DEL HEROE
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
hero_restart::
    call hero_getIXPtr
    ld a, #0
    ld h_x(ix), a 
    ld a, #0xB4
    ld h_y(ix), a
    ld a, #0xFF
    ld h_salto(ix), a
    ld a, #0x0B
    ld h_posicion(ix), a
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  RECOGE INFORMACION DEL TECLADO, DE LAS TECLAS W, A, S, D.
;;  LLAMA A LOS MOVIMIENTOS IZQUIERDA Y DERECHA
;;  LLAMA A LAS FUNCIONES START JUMP Y START FALL
;;  DESTROYED REGISTER VALUES: A, D, BC, HL, IX
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
keyboard_inputs::
    call hero_getIXPtr
    ;;Escanea el teclado completo 
    call cpct_scanKeyboard_asm
    
    ;;Comprueba si la tecla 'D' esta presionada
    ld hl,  #Key_P                      ;; HL = Key_P KeyCode
    call    cpct_isKeyPressed_asm       ;; Comprueba si la "P" esta pulsada
    cp      #0                          ;; Comprueba si P == 0
    jr      z, d_not_pressed            ;; Salta si P == 0 (D no esta pulsada)
        ;; D esta pulsada
        call sys_physics_move_hero_right
    d_not_pressed:


    ;;Comprueba si la tecla 'A' esta presionada
    ld hl,  #Key_O                      ;;HL = Key_O KeyCode
    call    cpct_isKeyPressed_asm       ;;Comprueba si la "O" esta pulsada
    cp      #0                          ;;Comprueba si O == 0
    jr      z, a_not_pressed            ;;Salta si O == 0 (O no esta pulsada)
        ;; A esta pulsada
         call sys_physics_move_hero_left
    a_not_pressed:


    ;;Comprueba si la tecla 'W' esta presionada, y si esta presionada empieza el salto
    ld hl,  #Key_Q                      ;; HL = Key_Q KeyCode
    call    cpct_isKeyPressed_asm       ;; Comprueba si la "Q" esta pulsada
    cp      #0                          ;;define
    jr      z, w_not_pressed    
        call sys_physics_startJump

    w_not_pressed:
        
        do_not_jump:
    

    ;;Comprueba si la tecla 'S' esta presionada, y si esta presionada empieza la caida
    ld hl,  #Key_A                      ;; HL = Key_A KeyCode
    call    cpct_isKeyPressed_asm       ;; Comprueba si la "A" esta pulsada
    cp      #0                          ;;define
    jr      z, s_not_pressed    
        call sys_physics_startFall

    s_not_pressed:
        
        do_not_fall:
    ret