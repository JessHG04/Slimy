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
.include "hero.h.s"
.include "obstacles.h.s"
.include "interrup.h.s"
.globl level
.globl _juego_pausado

;;=======================================================================
;;PRIVATE FUNCTIONS
;;=======================================================================

str_menu:   .asciz  "Slimy"
str_press:  .asciz  "Press space to start"

;;=======================================================================
;;PUBLIC FUNCTIONS
;;=======================================================================
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;INIT
;;      Initializes the main menu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_menu_init::
    ;;MODE 0
    call sys_render_init

    ld a, #1
    ld (level), a;;Desde el menu siempre vamos al nivel 1
    ld a, #0
    ld (_juego_pausado), a
    call    sys_render_update_menu
    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;RUN
;;      Runs the menu until finished
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

man_menu_run::
    call timer_value              ;; PONE EL CRONOMETRO AL VALOR POR DEFECTO AL SALIR DEL MENU Y COMENZAR EL JUEGO;;usar esto al cargar cada nivel
    
    call man_menu_init            ;; Inicializa el menu
  
    _run:
    ;;Key control
    call    cpct_scanKeyboard_asm
    ld      hl, #Key_Space
    call    cpct_isKeyPressed_asm
    
    jr      z, _run
    ld hl, #1

    ret



