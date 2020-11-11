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
;;  NIVEL 1
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_1::
    ld a, (_level_seconds)  
    cp #0x06                      
    jr z, comprobarEntidades1lvl1
    cp #0x0A
    jr z, comprobarEntidades2lvl1
    cp #0x0E
    jr z, comprobarEntidades3lvl1
    cp #0x14
    jr z, comprobarEntidades4lvl1
    cp #0x18
    jr z, comprobarEntidades5lvl1
    ret
    
    comprobarEntidades1lvl1:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades2lvl1:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle  
        call generar1entidad
        ret
    
    comprobarEntidades3lvl1:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret 
    
    comprobarEntidades4lvl1:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret        

    comprobarEntidades5lvl1:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 2
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_2::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl2
    cp #0x04
    jr z, comprobarEntidades2lvl2
    cp #0x07
    jr z, comprobarEntidades3lvl2
    cp #0x0A
    jr z, comprobarEntidades4lvl2
    cp #0x0D
    jr z, comprobarEntidades5lvl2
    cp #0x0E
    jr z, comprobarEntidades6lvl2
    cp #0x12
    jr z, comprobarEntidades7lvl2
    cp #0x17
    jr z, comprobarEntidades8lvl2
    ret
    
    comprobarEntidades1lvl2:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret
    
    comprobarEntidades2lvl2:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret  
    
    comprobarEntidades3lvl2:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 
    
    comprobarEntidades4lvl2:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret  z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 

    comprobarEntidades5lvl2:    
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret
    
    comprobarEntidades6lvl2:    
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x96
        call set_y_last_obstacle 
        call generar1entidad
        ret   
    
    comprobarEntidades7lvl2:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret   

    comprobarEntidades8lvl2:
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
;;  NIVEL 3
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_3::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl3
    cp #0x04
    jr z, comprobarEntidades2lvl3
    cp #0x06
    jr z, comprobarEntidades3lvl3
    cp #0x09
    jr z, comprobarEntidades4lvl3
    cp #0x12
    jr z, comprobarEntidades5lvl3
    cp #0x15
    jr z, comprobarEntidades6lvl3
    cp #0x18
    jp z, comprobarEntidades7lvl3
    ret

    comprobarEntidades1lvl3:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades2lvl3:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_last_obstacle
        call generar1entidad    
        ret

    comprobarEntidades3lvl3:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret 
    
    comprobarEntidades4lvl3:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret   

    comprobarEntidades5lvl3:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret 

    comprobarEntidades6lvl3:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x96
        call set_y_last_obstacle
        call generar1entidad
        ret 
    
    comprobarEntidades7lvl3:
     ld a, (level_obstacles)
     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
     ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 4
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_4::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl4
    cp #0x05
    jr z, comprobarEntidades2lvl4
    cp #0x07
    jr z, comprobarEntidades3lvl4
    cp #0x08
    jr z, comprobarEntidades4lvl4
    cp #0x0B
    jr z, comprobarEntidades5lvl4
    cp #0x0F
    jp z, comprobarEntidades6lvl4
    cp #0x12
    jp z, comprobarEntidades7lvl4
    cp #0x16
    jp z, comprobarEntidades8lvl4
    cp #0x17
    jp z, comprobarEntidades9lvl4
    ret

    comprobarEntidades1lvl4:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret
    
    comprobarEntidades2lvl4:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad    
        ret

    comprobarEntidades3lvl4:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 
    
    comprobarEntidades4lvl4:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret   

    comprobarEntidades5lvl4:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_wave
        call generar1entidadWave
        ret 

    comprobarEntidades6lvl4:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret 
    
    comprobarEntidades7lvl4:
     ld a, (level_obstacles)
     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
     ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 

    comprobarEntidades8lvl4:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 
    
    comprobarEntidades9lvl4:
     ld a, (level_obstacles)
     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
     ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 5
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_5::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl5
    cp #0x03
    jr z, comprobarEntidades2lvl5
    cp #0x06
    jr z, comprobarEntidades3lvl5
    cp #0x07
    jr z, comprobarEntidades4lvl5
    cp #0x0B
    jr z, comprobarEntidades5lvl5
    cp #0x0F
    jr z, comprobarEntidades6lvl5
    cp #0x13
    jp z, comprobarEntidades7lvl5
    cp #0x17
    jp z, comprobarEntidades8lvl5
    ret

    comprobarEntidades1lvl5:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret
    
    comprobarEntidades2lvl5:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xA4
        call set_y_last_obstacle 
        call generar1entidad
        ret   

    comprobarEntidades3lvl5:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 
    
    comprobarEntidades4lvl5:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x96
        call set_y_last_obstacle 
        call generar1entidad
        ret   

    comprobarEntidades5lvl5:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 

    comprobarEntidades6lvl5:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_wave 
        call generar1entidadWave
        ret 
    
    comprobarEntidades7lvl5:
     ld a, (level_obstacles)
     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
     ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 

    comprobarEntidades8lvl5:
     ld a, (level_obstacles)
     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
     ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 6
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_6::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl6
    cp #0x05
    jr z, comprobarEntidades2lvl6
    cp #0x09
    jr z, comprobarEntidades3lvl6
    cp #0x0D
    jr z, comprobarEntidades4lvl6
    cp #0x11
    jr z, comprobarEntidades5lvl6
    cp #0x15
    jr z, comprobarEntidades6lvl6
    cp #0x18
    jp z, comprobarEntidades7lvl6
    cp #0x19
    jp z, comprobarEntidades8lvl6
    ret

    comprobarEntidades1lvl6:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret
    
    comprobarEntidades2lvl6:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        ld a,#0x3C
        call set_x_last_obstacle
        call generar1entidad
        
        ld a,#0x46
        call set_x_last_obstacle
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades3lvl6:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret

    comprobarEntidades4lvl6:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        ld a,#0x3C
        call set_x_last_obstacle
        call generar1entidad

        ld a,#0x46
        call set_x_last_obstacle
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret   

    comprobarEntidades5lvl6:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_wave 
        call generar1entidadWave
        ret 

    comprobarEntidades6lvl6:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 
    
    comprobarEntidades7lvl6:
     ld a, (level_obstacles)
     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
     ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret 
    
    comprobarEntidades8lvl6:
     ld a, (level_obstacles)
     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
     ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 7
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_7::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl7
    cp #0x05
    jr z, comprobarEntidades2lvl7
    cp #0x06
    jr z, comprobarEntidades3lvl7
    cp #0x08
    jr z, comprobarEntidades4lvl7
    cp #0x0C
    jr z, comprobarEntidades5lvl7
    cp #0x11
    jr z, comprobarEntidades6lvl7
    cp #0x15
    jp z, comprobarEntidades7lvl7
    cp #0x19
    jp z, comprobarEntidades8lvl7
    ret

    comprobarEntidades1lvl7:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret
    
    comprobarEntidades2lvl7:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret   

    comprobarEntidades3lvl7:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret

    comprobarEntidades4lvl7:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret   

    comprobarEntidades5lvl7:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 

    comprobarEntidades6lvl7:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_wave 
        call generar1entidadWave
        ret 
    
    comprobarEntidades7lvl7:
     ld a, (level_obstacles)
     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
     ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 

    comprobarEntidades8lvl7:
     ld a, (level_obstacles)
     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
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
;;  NIVEL 8
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_8::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl8
    cp #0x06
    jr z, comprobarEntidades2lvl8
    cp #0x09
    jr z, comprobarEntidades3lvl8
    cp #0x0C
    jr z, comprobarEntidades4lvl8
    cp #0x12
    jr z, comprobarEntidades5lvl8
    cp #0x15
    jr z, comprobarEntidades6lvl8
    cp #0x1A
    jp z, comprobarEntidades7lvl8
    ret

    comprobarEntidades1lvl8:
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

    comprobarEntidades2lvl8:
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
    
    comprobarEntidades3lvl8:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades4lvl8:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        ld a,#0x3C
        call set_x_last_obstacle
        call generar1entidad

        ld a,#0x46
        call set_x_last_obstacle
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret   

    comprobarEntidades5lvl8:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 

    comprobarEntidades6lvl8:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_wave 
        call generar1entidadWave
        ret 
    
    comprobarEntidades7lvl8:
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
;;  NIVEL 9
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_9::
    ld a, (_level_seconds)  
    cp #0x02                      
    jr z, comprobarEntidades1lvl9
    cp #0x03
    jr z, comprobarEntidades2lvl9
    cp #0x05
    jr z, comprobarEntidades3lvl9
    cp #0x08
    jr z, comprobarEntidades4lvl9
    cp #0x0D
    jr z, comprobarEntidades5lvl9
    cp #0x16
    jr z, comprobarEntidades6lvl9
    cp #0x19
    jp z, comprobarEntidades7lvl9
    ret

    comprobarEntidades1lvl9:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades2lvl9:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades3lvl9:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret 
    
    comprobarEntidades4lvl9:
    ld a, (level_obstacles)
    cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        ld a,#0x3C
        call set_x_last_obstacle
        call generar1entidad

        ld a,#0x46
        call set_x_last_obstacle
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret   

    comprobarEntidades5lvl9:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad

        ld a, #0x86
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret 

    comprobarEntidades6lvl9:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave 
        call generar1entidadWave
        ret 
    
    comprobarEntidades7lvl9:
     ld a, (level_obstacles)
     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
     ret z
        ld a, #0x76
        call set_y_last_obstacle 
        call generar1entidad
        ret 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 10
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_10::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl10
    cp #0x07
    jr z, comprobarEntidades2lvl10
    cp #0x0B
    jr z, comprobarEntidades3lvl10
    cp #0x11
    jr z, comprobarEntidades4lvl10
    cp #0x17
    jr z, comprobarEntidades5lvl10
    cp #0x1B
    jp z, comprobarEntidades6lvl10
    ret

    comprobarEntidades1lvl10:
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

    comprobarEntidades2lvl10:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0x86
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades3lvl10:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x86
        call set_y_last_obstacle
        call generar1entidad

        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades4lvl10:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xA4
        call set_y_last_obstacle
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret   

    comprobarEntidades5lvl10:
    ld a, (level_obstacles)
    cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        ld a,#0x3C
        call set_x_last_obstacle
        call generar1entidad
        
        ld a,#0x46
        call set_x_last_obstacle
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret 

    comprobarEntidades6lvl10:
    ld a, (level_obstacles)
    cp #0x0E                ;; Si ya tengo 14 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        ld a,#0x3C
        call set_x_last_obstacle
        call generar1entidad
        
        ld a,#0x43
        call set_x_last_obstacle
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret 
    
    comprobarEntidades7lvl10:
     ld a, (level_obstacles)
     cp #0x0F                ;; Si ya tengo 15 entidades no compruebo ninguna mas
     ret z
        ld a, #0xB4
        call set_y_last_obstacle 
        call generar1entidad
        ret 