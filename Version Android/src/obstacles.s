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
;;HOLIWI
.include "cpctelera_functions.h.s"
.include "obstacles.h.s"
.include "hero.h.s"
.include "cpctelera.h.s"
.include "man/gameover.h.s"
.include "man/menu.h.s"
.include "sys/render.h.s"
.globl level_obstacles



obstacle_array::
    .ds max_obstacles*obstacle_size
ret

last_obs_ptr:: .dw #obstacle_array
num_obstacles:: .db 0
num_obstacles_marcados:: .db 0      ;; Esto lo quiero usar para obs_destroy

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  PUBLIC FUNCTIONS
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  MARCAMOS PARA DESTRUIR LOS OBSTACULOS QUE HAN LLEGADO AL EXTREMO DE LA PANTALLA Y MOVEMOS EL OBSTACULO A LA IZDA
;;  SI EL OBSTACULO LLEGA A LA POSICION 80 - 8 (8 ES TAMANYO DE OBSTACULO), SE MARCA PARA DESTRUIR
;;  DESTROYED REGISTER VALUES -> A
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


position_update::
    ld a, h_color(ix) ;;En realidad es el tipo
    cp #0x03
    jr z, obstacle_ghost_update
    jr nz, obstacle_update

ret

obstacle_update::
   ld   a, h_x(ix)
   ;;cp   #00
   ;;ret  z
   dec a
   jr nz,   move_left
            ld h_vy(ix), #0x10
            ld a, (num_obstacles_marcados) ;;Incremento en 1 el nº de obstaculos marcados
            add #1
            ld (num_obstacles_marcados), a
            ret 
    move_left:
    ld  h_x(ix), a
    ret
ret

;;HACE QUE EL FANTASMA VAYA REBOTANDO
obstacle_ghost_update::
   ld   a, h_x(ix)
   dec a
   jr nz, move_left_ghost
   
            ld h_vy(ix), #0x10
            ld a, (num_obstacles_marcados) ;;Incremento en 1 el nº de obstaculos marcados
            add #1
            ld (num_obstacles_marcados), a
            ret 

    move_left_ghost:
    ld  h_x(ix), a
    ld  a, h_y(ix)
    cp   #0x77
    jr   z, _marcar_descender
    cp   #0x76
    jr   z, _marcar_descender
    cp   #0xB4
    jr   z, _marcar_ascender
    cp   #0xB3
    jr   z, _marcar_ascender
    ld  a, h_posicion(ix)
    cp  #0x0D
    jr   z, _descendiendo
    cp  #0x05
    jr   z, _ascendiendo

        _marcar_descender:
            ld a, #0x0D
            ld h_posicion(ix), a
            ld a, h_y(ix)
            inc a
            ld h_y(ix), a
        ret
        _marcar_ascender:
            ld a, #0x05
            ld h_posicion(ix), a
            ld a, h_y(ix)
            dec a
            ld h_y(ix), a
        ret

        _descendiendo:
            ld a, h_y(ix)
            inc a
            inc a
            ld h_y(ix), a
        ret

        _ascendiendo:
            ld a, h_y(ix)
            dec a 
            dec a
            ld h_y(ix), a
        ret
    ret
ret

obstacle_init::
    ;; Posicion 0x0D ->Descendiendo 0x05 -> Subiendo
    ;;_posicion 0x0B -> ABAJO   _posicion 0x0A -> ARRIB
    ;;DefineHero                      _x,     _y,     _w,     _h,     _vx,   marca, tipo obs,     _salto,         _posicion, _animacion
    DefineEntity obstacle           0x46,   0xB4,   0x04,   0x04,   0x00,   0x00,   0x01,       0xFF,           0x0B,           0x00
    DefineEntity big_obstacle       0x46,   0xB4,   0x06,   0x25,   0x00,   0x00,   0x02,       0xFF,           0x0B,           0x00
    DefineEntity moving_obstacle    0x46,   0xB4,   0x06,   0x09,   0x00,   0x00,   0x03,       0xFF,           0x0B,           0x00
    DefineEntity wave_obstacle      0x40,   0xB4,   0x10,   0x14,   0x00,   0x00,   0x04,       0xFF,           0x0B,           0x00
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  PRIVATE FUNCTIONS
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  OBTIENE LA POSICION DEL INICIO DEL ARRAY DE OBSTACULOS EN EL REGISTRO IX
;;  DESTROYED REGISTER VALUES -> IX
;;  RETURNS: IX
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
obs_getObstacleArray_IX::
    ld      ix, #obstacle_array
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  OBTIENE LA POSICION DEL INICIO DEL ARRAY DE OBSTACULOS EN EL REGISTRO IY
;;  DESTROYED REGISTER VALUES -> IY
;;  RETURNS: IY
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
obs_getObstacleArray_IY::
    ld      iy, #obstacle_array
    ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  OBTIENE EL NUMERO DE OBSTACULOS EN EL REGISTRO A
;;  DESTROYED REGISTER VALUES -> A
;;  RETURNS: A
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
obs_getNumObstacles_A::
    ld      a, (num_obstacles)
    ret



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  DESTRUYE SOLO LAS ENTIDADES MARCADAS PARA DESTRUIR
;;  DESTROYED REGISTER VALUES -> IX, AF,BC
;;  INPUT:
;;      IX -> Array obstaculos
;;      A  -> Numero de entidades
;;  (SE MARCAN PARA DESTRUIR EN UPDATE)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

obs_destroy::
    call obs_getObstacleArray_IX
    call obs_getObstacleArray_IY
    call obs_getNumObstacles_A
    
_destroyloop:
    push af
    ld      a, h_vy(ix) ;;Comprobamos con el parametro que queramos
    cp      #0x10       ;;Marcador
    jr      z, _destroy
    jr      nz, _seguir

_destroy:
    ld hl, #sys_render_clear_obstacle
    call obs_doForAll
    ;;ld hl, #obstacle_array + (obstacle_size*num_obstacles_marcados)  ;; Valor que quiero copiar
    ld a, (num_obstacles_marcados)
    cp  #0
    jr z, _seguir
    ld de, #obstacle_size
    ld hl, #obstacle_array

    _sumar:
    add hl, de
    dec a
    jr nz, _sumar

    ld a, (num_obstacles_marcados)
    cp #2
    jr z, _dos_obstaculos
    jr nz, _un_obstaculo

    _dos_obstaculos:
    ld de, #obstacle_array                  ;; Lugar en el que lo voy a copiar
    ld bc, #max_obstacles                ;; Lo ideal sería poner el num_obstaculos * size, pero como soy una vaga y hay que hacer un bucle lo dejo en 70
    ldir    
    jp _decrementar
    _un_obstaculo:
    ld de, #obstacle_array                  ;; Lugar en el que lo voy a copiar
    ld bc, #max_obstacles                  ;; Veces que voy a copiar
    ldir 

    
      ;;Para decrementar lstptr y num obs
                                            ;; tantas veces como obstacles marcados haya
             
;; Esto decrementa lstptr y el numero de obstaculos tantas veces como obstaculos marcados hayan (los obstaculos se marcan en update)
_decrementar:
     

      ;;CAMBIAR DONDE APUNTA LASTPTR
    ld      a, (last_obs_ptr)       ;;Esto no apunta bien al last_obs_ptr
    sub     #obstacle_size
    ld      (last_obs_ptr), a

    ;;REDUCIR EL NUM DE OBSTACULOS TOTAL
    
    ld      hl, (num_obstacles)
    dec     hl
    ld      (num_obstacles), hl

    
    ld      hl, (num_obstacles_marcados) 
    ld      a, l
    dec     a
    ld      (num_obstacles_marcados), a 
    cp      #0
    jr      nz, _decrementar

    ;;DISMINUIR EL NUMERO DE OBSTACULOS MARCADOS
    ;;ld      a, (num_obstacles_marcados)
    ;;dec     a
    ;;ld      a, #0
    ;;ld      (num_obstacles_marcados), a
    
    jr      _seguir
_seguir:
    pop     af
    dec     a
    ret     z

    ld      bc, #obstacle_size
    add     ix, bc

    
    jr      _destroyloop
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  OBTIENE POSICIONES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
obstacle_getIXPtr::
    ld ix, #obstacle
ret

obstacle_getIYPtr::
    ld iy, #obstacle
ret

get_lastObsPtr::
    ld ix, (last_obs_ptr)
ret 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  CAMBIA LA Y DE LA ENTIDAD #OBSTACLE
;;  DESTROYED REGISTER VALUES -> IX
;;  INPUT -> A, CON LA NUEVA POSICION Y
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

set_y_last_obstacle::
ld ix, #obstacle
ld h_y(ix), a
ret

set_x_last_obstacle::
ld ix, #obstacle
ld h_x(ix), a
ret


set_y_wave::
ld ix, #wave_obstacle
ld h_y(ix), a
ret

set_y_ghost::
ld ix, #moving_obstacle
ld h_y(ix), a
ret

set_y_bigobstacle::
ld ix, #big_obstacle
ld h_y(ix), a
ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  LE PASAMOS EN HL EL PUNTERO A UNA FUNCION, OBS_DOFORALL APLICA ESA FUNCION A TODAS LAS ENTIDADES DEL ARRAY
;;  DESTROYED REGISTER VALUES -> AF, IX, HL, BC, DE
;;  INPUT -> HL CON LA DIRECCION DE LA FUNCION A IMPLEMENTAR 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

obs_doForAll::
    ld  a, (num_obstacles)
    ld  ix, #obstacle_array
    ld  (metodo), hl 

buc:
    push af
    metodo = . + 1
    call sys_render_draw
    pop af
    ld bc, #obstacle_size
    add ix, bc 

    dec a
    jr nz, buc

    ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  CREO UN NUEVO OBSTACULO COPIANDO LOS VALORES QUE LE PASO EN HL, EN EL ARRAY DE OBSTACULOS
;;  DESTROYED REGISTER VALUES -> AF, DE, BC, HL
;;  INPUT:
;;      HL -> DIRECCION DE LA ENTIDAD QUE QUIERO COPIAR (PARA ESTE CASO #OBSTACLE)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

obs_create::
    ld de, (last_obs_ptr)
    ld bc, #obstacle_size
    ldir                        ;;Mete los valores a los que apunta hl en la direccion a la que apunta de, tantas veces como diga bc
                                ;;Incremento el contador de entidades y guardo su valor
    ld a, (num_obstacles)
    inc a
    ld (num_obstacles), a

    ld hl, (last_obs_ptr)
    ld bc, #obstacle_size
    add hl, bc
    ld (last_obs_ptr), hl

ret



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  GENERA TANTAS ENTIDADES COMO INDICQUEMOS EN EL REGISTRO A
;;  DESTROYED REGISTER VALUES -> AF, IX, HL, BC, DE
;;  INPUT:
;;      A  -> Numero de entidades a crear
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;REQUIERE EL NUMERO DE ENTIDADES A CREAR EN EL REGISTRO A
generar1entidad::
    ld ix, #obstacle
    ld hl, #obstacle
    call obs_create
    ld a, (level_obstacles)
    inc a 
    ld (level_obstacles),a
ret
generar1entidadWave::
    ld ix, #wave_obstacle
    ld hl, #wave_obstacle
    call obs_create
    ld a, (level_obstacles)
    inc a 
    ld (level_obstacles),a
ret

generar1entidadGhost::
    ld ix, #moving_obstacle
    ld hl, #moving_obstacle
    call obs_create
    ld a, (level_obstacles)
    inc a 
    ld (level_obstacles),a
ret

generar1entidadBig::
    ld ix, #big_obstacle
    ld hl, #big_obstacle
    call obs_create
    ld a, (level_obstacles)
    inc a 
    ld (level_obstacles),a
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  DESTRUYE TODAS LAS ENTIDADES
;;  DESTROYED REGISTER VALUES -> IX, AF,BC, HL
;;  INPUT:
;;      IX -> Array obstaculos
;;      A  -> Numero de entidades
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
obs_destroy_all::
call obs_getObstacleArray_IX
call obs_getNumObstacles_A
ld      hl, #obstacle_array ;; Como vamos a destruir todo, el last_obs_ptr apuntara al principio del array
ld      (last_obs_ptr), hl  
_destroyallloop:
    ld      h_x(ix), #0x00
    ld      h_y(ix), #0x00
    ld      h_w(ix), #0x00
    ld      h_h(ix), #0x00
    ld      h_vx(ix), #0x00
    ld      h_vy(ix), #0x00
    ld      h_color(ix), #0x00
    ld      h_salto(ix), #0x00
    ld      h_posicion(ix), #0x00
    
    ld      hl, (num_obstacles)
    dec     hl
    ld      (num_obstacles), hl
    dec     a
    ret     z
    ld      bc, #obstacle_size
    add     ix, bc
    jr      _destroyallloop
    
    ret