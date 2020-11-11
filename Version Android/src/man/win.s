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
.include "hero.h.s";;provisional
.include "obstacles.h.s";;provisional
.include "nextlevel.h.s"
.include "win.h.s"
.include "game.h.s"

.globl init_game

;;=======================================================================
;;PRIVATE FUNCTIONS
;;=======================================================================

str_win:   .asciz  "Win"
str_press3:  .asciz  "Press space to Menu"

;;=======================================================================
;;PUBLIC FUNCTIONS
;;=======================================================================

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;INIT
;;      Initializes the main menu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_win_init::

call    sys_render_update_win
    
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;RUN
;;      Runs the menu until finished
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

man_win_run::
    call sys_render_clear_screen
    call man_win_init

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
    jp init_game  ;; Volver al menu principal tras pulsar espacio 
ret


