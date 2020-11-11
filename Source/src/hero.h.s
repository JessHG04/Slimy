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
.globl hero_init
.globl hero_getIXPtr
.globl hero_getIYPtr
.globl keyboard_inputs
.globl hero_update
.globl hero_restart
.globl _hero_sp_00
.globl _hero_sp_01
.globl _hero_sp_02
.globl _hero_sp_03
.globl _hero_sp_04
.globl _hero_sp_05
.globl _hero_sp_06
.globl _hero_sp_07
.globl _hero_sp_08


;; _salto indica si estoy en un salto o no 0xFF indica que NO estoy saltando
;; _posicion indica si estoy en la parte de arriba o en la parte de abajo 0x0A indica que estoy arriba y 0x0B abajo
.macro DefineEntity _name, _x, _y, _w, _h, _vx, _vy, _color, _salto, _posicion, _animacion
_name::
    .db _x
    .db _y
    .db _w
    .db _h
    .db _vx
    .db _vy     ;;Marcador para saber si debemos destruir la entidad o no
    .db _color
    .db _salto
    .db _posicion
    .db _animacion
.endm

h_x = 0
h_y = 1
h_w = 2
h_h = 3
h_vx = 4
h_vy = 5
h_color = 6
h_salto = 7
h_posicion = 8
h_animacion = 9