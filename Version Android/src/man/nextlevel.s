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
.include "sys/render.h.s"
.include "timer.h.s"
.include "menu.h.s"
.include "hero.h.s";;orovisional
.include "obstacles.h.s";;orovisional
.include "nextlevel.h.s"
.include "game.h.s"
.globl _lvl_control
.globl init_game

;;=======================================================================
;;PRIVATE FUNCTIONS
;;=======================================================================

str_press3:  .asciz  "Press start to next level"

;;=======================================================================
;;PUBLIC FUNCTIONS
;;=======================================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;INIT
;;      Initializes the main menu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_nextlevel_init::

    ;;Press String
    ld      hl, #0x0004
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x00
    ld       b, #0x90
    call    cpct_getScreenPtr_asm
    ld      iy, #str_press3
    call    cpct_drawStringM0_asm
    
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;RUN
;;      Runs the menu until finished
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

man_nextlevel_run::
    call man_nextlevel_init
    call timer_value   ;;Coloca el contador a un valor por defecto para que no salta la comprobacion con 0
    _control:
    ;;Key control
    call    cpct_scanKeyboard_asm
    ld      hl, #Key_Space
    call    cpct_isKeyPressed_asm
    jr      z, _control
    ld hl, #1

    call sys_render_clear_screen
    call man_game_restart
    jp _lvl_control  ;; Volver al menu principal tras pulsar espacio ;;EN UN FUTURO CAMBIAR AL SIGUIENTE NIVEL
ret


