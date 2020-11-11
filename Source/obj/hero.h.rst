ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 1.
Hexadecimal [16-Bits]



                              1 ;;----------------------------------LICENSE NOTICE-----------------------------------------------------
                              2 ;;Slimy is a challenging videogame made for Amstrad CPC
                              3 ;;    Copyright (C) 2020  Maria del Rosario Fernandez Garcia // David Llopis Romero // Jessica Hernandez Gomez
                              4 ;;
                              5 ;;    This program is free software: you can redistribute it and/or modify
                              6 ;;    it under the terms of the GNU General Public License as published by
                              7 ;;    the Free Software Foundation, either version 3 of the License, or
                              8 ;;    (at your option) any later version.
                              9 ;;
                             10 ;;    This program is distributed in the hope that it will be useful,
                             11 ;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
                             12 ;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
                             13 ;;    GNU General Public License for more details.
                             14 ;;
                             15 ;;    You should have received a copy of the GNU General Public License
                             16 ;;    along with this program.  If not, see <https://www.gnu.org/licenses/>.
                             17 ;;------------------------------------------------------------------------------------------------------
                             18 .globl hero_init
                             19 .globl hero_getIXPtr
                             20 .globl hero_getIYPtr
                             21 .globl keyboard_inputs
                             22 .globl hero_update
                             23 .globl hero_restart
                             24 .globl _hero_sp_00
                             25 .globl _hero_sp_01
                             26 .globl _hero_sp_02
                             27 .globl _hero_sp_03
                             28 .globl _hero_sp_04
                             29 .globl _hero_sp_05
                             30 .globl _hero_sp_06
                             31 .globl _hero_sp_07
                             32 .globl _hero_sp_08
                             33 
                             34 
                             35 ;; _salto indica si estoy en un salto o no 0xFF indica que NO estoy saltando
                             36 ;; _posicion indica si estoy en la parte de arriba o en la parte de abajo 0x0A indica que estoy arriba y 0x0B abajo
                             37 .macro DefineEntity _name, _x, _y, _w, _h, _vx, _vy, _color, _salto, _posicion, _animacion
                             38 _name::
                             39     .db _x
                             40     .db _y
                             41     .db _w
                             42     .db _h
                             43     .db _vx
                             44     .db _vy     ;;Marcador para saber si debemos destruir la entidad o no
                             45     .db _color
                             46     .db _salto
                             47     .db _posicion
                             48     .db _animacion
                             49 .endm
                             50 
                     0000    51 h_x = 0
                     0001    52 h_y = 1
                     0002    53 h_w = 2
                     0003    54 h_h = 3
                     0004    55 h_vx = 4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                     0005    56 h_vy = 5
                     0006    57 h_color = 6
                     0007    58 h_salto = 7
                     0008    59 h_posicion = 8
                     0009    60 h_animacion = 9
