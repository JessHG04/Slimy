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
                             18 .globl cpct_disableFirmware_asm
                             19 .globl cpct_getScreenPtr_asm
                             20 .globl cpct_drawSolidBox_asm
                             21 .globl cpct_scanKeyboard_asm
                             22 .globl cpct_waitVSYNC_asm
                             23 .globl cpct_isKeyPressed_asm
                             24 .globl cpct_setVideoMode_asm
                             25 .globl cpct_setDrawCharM0_asm
                             26 .globl cpct_drawStringM0_asm
                             27 .globl cpct_drawSprite_asm
                             28 .globl cpct_setPalette_asm
                             29 .globl cpct_setPALColour_asm
                             30 .globl cpct_zx7b_decrunch_s_asm
                             31 .globl cpct_akp_musicInit_asm
                             32 .globl cpct_akp_musicPlay_asm
