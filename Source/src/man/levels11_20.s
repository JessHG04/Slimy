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
.include "game.h.s"
.include "obstacles.h.s"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 11 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_11::
    ld a, (_level_seconds)  
    cp #0x04                      
    jr z, comprobarEntidades1lvl11
    cp #0x08 
    jr z, comprobarEntidades2lvl11
    cp #0x0C
    jr z, comprobarEntidades3lvl11
    cp #0x0E
    jr z, comprobarEntidades4lvl11
    cp #0x12
    jr z, comprobarEntidades5lvl11
    cp #0x14
    jr z, comprobarEntidades6lvl11
    cp #0x17
    jr z, comprobarEntidades7lvl11
    cp #0x19
    jr z, comprobarEntidades8lvl11
    ret
    
    comprobarEntidades1lvl11:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades2lvl11:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle   
        call generar1entidad
        ret  
    
    comprobarEntidades3lvl11:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret 
    
    comprobarEntidades4lvl11:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle  
        call generar1entidad
        ret 

    comprobarEntidades5lvl11:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades6lvl11:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades7lvl11:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades8lvl11:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 12 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_12::
    ld a, (_level_seconds)  
    cp #0x03                      
    jr z, comprobarEntidades1lvl12
    cp #0x07
    jr z, comprobarEntidades2lvl12
    cp #0x0C
    jr z, comprobarEntidades3lvl12
    cp #0x13
    jr z, comprobarEntidades4lvl12
    cp #0x15
    jr z, comprobarEntidades5lvl12
    cp #0x1A
    jr z, comprobarEntidades6lvl12
    ret

    comprobarEntidades1lvl12:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades2lvl12:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle   
        call generar1entidad
        ret
    
    comprobarEntidades3lvl12:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad    
        ret
    
    comprobarEntidades4lvl12:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret 
    
    comprobarEntidades5lvl12:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades6lvl12:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad    
        ret    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 13 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

man_game_controller_lvl_13::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl13
    cp #0x04
    jr z, comprobarEntidades2lvl13
    cp #0x05
    jr z, comprobarEntidades3lvl13
    cp #0x08
    jr z, comprobarEntidades4lvl13
    cp #0x0C
    jr z, comprobarEntidades5lvl13
    cp #0x0E
    jr z, comprobarEntidades6lvl13
    cp #0x0F
    jr z, comprobarEntidades7lvl13
    cp #0x11
    jr z, comprobarEntidades8lvl13
    cp #0x14
    jp z, comprobarEntidades9lvl13
    cp #0x18
    jp z, comprobarEntidades10lvl13
    ret
    
    comprobarEntidades1lvl13:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades2lvl13:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades3lvl13:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades4lvl13:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost    
        ret 
    
    comprobarEntidades5lvl13:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades6lvl13:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret  
    
    comprobarEntidades7lvl13:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret 
    
    comprobarEntidades8lvl13:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades9lvl13:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost  
        ret

    comprobarEntidades10lvl13:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad

        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad   
        ret 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 14 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

man_game_controller_lvl_14::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl14
    cp #0x03
    jr z, comprobarEntidades2lvl14
    cp #0x06
    jr z, comprobarEntidades3lvl14
    cp #0x09
    jr z, comprobarEntidades4lvl14
    cp #0x0C
    jr z, comprobarEntidades5lvl14
    cp #0x0F
    jr z, comprobarEntidades6lvl14
    cp #0x12
    jr z, comprobarEntidades7lvl14
    cp #0x16
    jr z, comprobarEntidades8lvl14
    cp #0x19
    jp z, comprobarEntidades9lvl14
    ret

    comprobarEntidades1lvl14:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades2lvl14:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad        
        ret

    comprobarEntidades3lvl14:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad        
        ret
        
    comprobarEntidades4lvl14:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades5lvl14:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades6lvl14:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades7lvl14:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret 

    comprobarEntidades8lvl14:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades9lvl14:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 15 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_15::
    ld a, (_level_seconds)  
    cp #0x03                      
    jr z, comprobarEntidades1lvl15
    cp #0x04
    jr z, comprobarEntidades2lvl15
    cp #0x05
    jr z, comprobarEntidades3lvl15
    cp #0x0A
    jr z, comprobarEntidades4lvl15
    cp #0x0B
    jr z, comprobarEntidades5lvl15
    cp #0x0C
    jr z, comprobarEntidades6lvl15
    cp #0x10
    jr z, comprobarEntidades7lvl15
    cp #0x13
    jr z, comprobarEntidades8lvl15
    cp #0x17
    jp z, comprobarEntidades9lvl15
    cp #0x1A
    jp z, comprobarEntidades10lvl15
    ret

    comprobarEntidades1lvl15:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades2lvl15:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x95
        call set_y_last_obstacle
        call generar1entidad
        ret  
    
    comprobarEntidades3lvl15:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades4lvl15:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
         
    comprobarEntidades5lvl15:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x95
        call set_y_last_obstacle
        call generar1entidad
        ret 

    comprobarEntidades6lvl15:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret  

    comprobarEntidades7lvl15:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret 
    
    comprobarEntidades8lvl15:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades9lvl15:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades10lvl15:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 16 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_16::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl16
    cp #0x05
    jr z, comprobarEntidades2lvl16
    cp #0x06
    jr z, comprobarEntidades3lvl16
    cp #0x09
    jr z, comprobarEntidades4lvl16
    cp #0x0B
    jr z, comprobarEntidades5lvl16
    cp #0x0C
    jr z, comprobarEntidades6lvl16
    cp #0x0F
    jr z, comprobarEntidades7lvl16
    cp #0x12
    jp z, comprobarEntidades8lvl16
    cp #0x16
    jp z, comprobarEntidades9lvl16
    cp #0x19
    jp z, comprobarEntidades10lvl16
    ret
    
    comprobarEntidades1lvl16:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades2lvl16:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret  
    
    comprobarEntidades3lvl16:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle   
        call generar1entidad
        ret 

    comprobarEntidades4lvl16:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x95
        call set_y_last_obstacle   
        call generar1entidad
        ret 

    comprobarEntidades5lvl16:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret 

    comprobarEntidades6lvl16:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades7lvl16:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades8lvl16:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades9lvl16:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades10lvl16:
    ld a, (level_obstacles)
    cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 17 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_17::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl17
    cp #0x05
    jr z, comprobarEntidades2lvl17
    cp #0x07
    jr z, comprobarEntidades3lvl17
    cp #0x0C
    jr z, comprobarEntidades4lvl17
    cp #0x0F
    jr z, comprobarEntidades5lvl17
    cp #0x11
    jr z, comprobarEntidades6lvl17
    cp #0x16
    jp z, comprobarEntidades7lvl17
    cp #0x19
    jp z, comprobarEntidades8lvl17
    ret
    
    comprobarEntidades1lvl17:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades2lvl17:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades3lvl17:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades4lvl17:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades5lvl17:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades6lvl17:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades7lvl17:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades8lvl17:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 18 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_18::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl18
    cp #0x06
    jr z, comprobarEntidades2lvl18
    cp #0x08
    jr z, comprobarEntidades3lvl18
    cp #0x0A
    jr z, comprobarEntidades4lvl18
    cp #0x10
    jr z, comprobarEntidades5lvl18
    cp #0x12
    jr z, comprobarEntidades6lvl18
    cp #0x14
    jr z, comprobarEntidades7lvl18
    cp #0x16
    jr z, comprobarEntidades8lvl18
    cp #0x19
    jp z, comprobarEntidades9lvl18
    ret
    
    comprobarEntidades1lvl18:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades2lvl18:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades3lvl18:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades4lvl18:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret 

    comprobarEntidades5lvl18:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades6lvl18:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades7lvl18:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades8lvl18:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades9lvl18:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 19 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_19::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl19
    cp #0x06
    jr z, comprobarEntidades2lvl19
    cp #0x0A
    jr z, comprobarEntidades3lvl19
    cp #0x0B
    jr z, comprobarEntidades4lvl19
    cp #0x0C
    jr z, comprobarEntidades5lvl19
    cp #0x0F
    jr z, comprobarEntidades6lvl19
    cp #0x14
    jp z, comprobarEntidades7lvl19
    cp #0x18
    jp z, comprobarEntidades8lvl19
    ret
    
    comprobarEntidades1lvl19:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades2lvl19:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades3lvl19:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades4lvl19:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x95
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades5lvl19:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades6lvl19:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0x86
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xA5
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades7lvl19:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades8lvl19:
    ld a, (level_obstacles)
    cp #0x0D                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret 
   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 20 (HALLOWEEN)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_20::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl20
    cp #0x06
    jr z, comprobarEntidades2lvl20
    cp #0x0A
    jr z, comprobarEntidades3lvl20
    cp #0x0B
    jr z, comprobarEntidades4lvl20    
    cp #0x0E
    jr z, comprobarEntidades5lvl20
    cp #0x0F
    jr z, comprobarEntidades6lvl20
    cp #0x13
    jr z, comprobarEntidades7lvl20
    cp #0x14
    jp z, comprobarEntidades8lvl20
    cp #0x18
    jp z, comprobarEntidades9lvl20
    ret
    
    comprobarEntidades1lvl20:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades2lvl20:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades3lvl20:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades4lvl20:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z       
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades5lvl20:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades6lvl20:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z       
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades7lvl20:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades8lvl20:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z       
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades9lvl20:
    ld a, (level_obstacles)
    cp #0x0C                ;; Si ya tengo 14 entidades no compruebo ninguna mas
    ret z
        ld a, #0xA4
        call set_y_last_obstacle
        call generar1entidad
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret