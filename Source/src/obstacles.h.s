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
.globl obstacle_update
.globl obstacle_init
.globl obstacle_getIYPtr
.globl obstacle_getIXPtr
.globl _obstacle_sp_0
.globl _obstacle_sp_1
.globl obstacle_size
.globl max_obstacles
.globl obstacle_array_size
.globl generar1entidad
.globl generar1entidadWave
.globl obs_doForAll
.globl get_lastObsPtr
.globl set_y_last_obstacle
.globl set_x_last_obstacle
.globl set_y_wave
.globl obs_getObstacleArray_IX
.globl obs_getObstacleArray_IX
.globl obs_getNumObstacles_A
.globl obs_destroy
.globl num_obstacles_marcados
.globl last_obs_ptr
.globl obstacle_array
.globl obs_destroy_all
.globl generar1entidadGhost
.globl set_y_ghost
.globl position_update
.globl generar1entidadBig
.globl set_y_bigobstacle
;;.globl obstacle_restart
;;.globl set_y_obstacles
;;.globl obs_destroy_all
;;;;;;;;;;;;;;;;;;;;;;
;;                  ;;
;;    CONSTANTES    ;;
;;                  ;;
;;;;;;;;;;;;;;;;;;;;;;
obstacle_size  == 10
max_obstacles == 20
obstacle_array_size == obstacle_size*max_obstacles