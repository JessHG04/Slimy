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
.area _DATA
.area _CODE

.include "cpctelera.h.s"
.include "cpctelera_functions.h.s"
.include "hero.h.s"
.include "sys/physics.h.s"
.include "obstacles.h.s"
.include "man/timer.h.s"
.include "man/interrup.h.s"
.include "man/menu.h.s"
.include "sys/render.h.s"
.include "man/game.h.s"
.include "man/gameover.h.s"

_main::
   ;; Disable firmware to prevent it from interfering with string drawing
   ;;call cpct_disableFirmware_asm
   call man_game_init   
   init_game::
   call man_menu_run             ;; Bucle infinito hasta que se pulse espacio 
   call hero_init                ;; Inicializa al heroe con los datos por defecto. Lo mismo con el obstaculo
   call obstacle_init  

_lvl_control::;;Inicia el nivel en el que nos encontramos

   call man_game_init_lvl

loop:
    
   ;;Heroe
   call sys_render_clear_hero
   call hero_update              ;;Incluye la función de salto, de keyboard input y de caída
   call sys_render_update_hero
   ;;Comprobacion si existen obstaculos
   call obs_getNumObstacles_A
   cp #0
   jr z, no_enem

   ;;Obstaculos
   ld hl, #sys_render_clear_obstacle
   call obs_doForAll
   ld hl, #position_update
   call obs_doForAll
   ld hl, #sys_render_update_obstacle
   call obs_doForAll
   ;;Colisiones
   call hero_getIYPtr
   ld hl, #sys_collision_check
   call obs_doForAll

   call obs_destroy
   

no_enem:

   call man_game_check_level;;Controla el nivel en el que nos encontramos

   call cpct_waitVSYNC_asm
   halt
   halt
   jr    loop