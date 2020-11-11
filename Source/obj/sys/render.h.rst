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
                             18 .globl sys_render_init
                             19 .globl _hero_pal
                             20 .globl sys_render_update_hero
                             21 .globl sys_render_clear_hero
                             22 .globl sys_render_update_obstacle
                             23 .globl sys_render_clear_obstacle
                             24 .globl sys_render_clear_screen
                             25 .globl sys_render_draw
                             26 .globl sys_render_update_bginit123
                             27 .globl sys_render_update_bginit456
                             28 .globl sys_render_update_bginit789
                             29 .globl sys_render_update_menu
                             30 .globl sys_render_update_win
                             31 .globl _wave_sp_0
                             32 .globl _wave_sp_1
                             33 .globl _wave_sp_2
                             34 .globl _wave_sp_4
                             35 .globl _wave_sp_5
                             36 .globl _fireball_sp_0
                             37 .globl _fireball_sp_1
                             38 .globl _bigfire_sp_0
                             39 .globl _bigfire_sp_1
                             40 .globl _bigfire_sp_2
                             41 .globl _ghost_sp_0
                             42 .globl _ghost_sp_1
                             43 .globl _salicornio_sp_0
                             44 .globl _salicornio_sp_1
                             45 .globl sys_render_draw_stlvl1
                             46 .globl sys_render_draw_stlvl2
                             47 .globl sys_render_draw_stlvl3
                             48 .globl sys_render_draw_stlvl4
                             49 .globl sys_render_draw_stlvl5
                             50 .globl sys_render_draw_stlvl6
                             51 .globl sys_render_draw_stlvl7
                             52 .globl sys_render_draw_stlvl8
                             53 .globl sys_render_draw_stlvl9
                             54 .globl sys_render_draw_stlvl10
                             55 .globl sys_render_draw_stlvl11
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             56 .globl sys_render_draw_stlvl12
                             57 .globl sys_render_draw_stlvl13
                             58 .globl sys_render_draw_stlvl14
                             59 .globl sys_render_draw_stlvl15
                             60 .globl sys_render_draw_stlvl16
                             61 .globl sys_render_draw_stlvl17
                             62 .globl sys_render_draw_stlvl18
                             63 .globl sys_render_draw_stlvl19
                             64 .globl sys_render_draw_stlvl20
                             65 .globl sys_render_draw_stlvl21
                             66 .globl sys_render_draw_stlvl22
                             67 .globl sys_render_draw_stlvl23
                             68 .globl sys_render_draw_stlvl24
                             69 .globl sys_render_draw_stlvl25
                             70 .globl sys_render_draw_stlvl26
                             71 .globl sys_render_draw_stlvl27
                             72 .globl sys_render_draw_stlvl28
                             73 .globl sys_render_draw_stlvl29
                             74 .globl sys_render_draw_stlvl30
