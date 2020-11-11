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
;;  NIVEL 21 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_21::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl21
    cp #0x05
    jr z, comprobarEntidades2lvl21
    cp #0x0A                                
    jr z, comprobarEntidades3lvl21
    cp #0x0D
    jr z, comprobarEntidades4lvl21
    cp #0x13
    jr z, comprobarEntidades5lvl21
    cp #0x18
    jr z, comprobarEntidades6lvl21
    ret

    comprobarEntidades1lvl21:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad    
        ret

    comprobarEntidades2lvl21:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_bigobstacle
        call generar1entidadBig
        ret

    comprobarEntidades3lvl21:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave
        call generar1entidadWave
        ret

    comprobarEntidades4lvl21:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret        
 
    comprobarEntidades5lvl21:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret        

    comprobarEntidades6lvl21:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret  
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 22 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_22::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl22
    cp #0x03
    jr z, comprobarEntidades2lvl22
    cp #0x07                             
    jr z, comprobarEntidades3lvl22
    cp #0x09
    jr z, comprobarEntidades4lvl22
    cp #0x0C
    jr z, comprobarEntidades5lvl22
    cp #0x0F
    jr z, comprobarEntidades6lvl22
    cp #0x14
    jr z, comprobarEntidades7lvl22
    cp #0x18
    jr z, comprobarEntidades8lvl22
    ret

    comprobarEntidades1lvl22:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call  set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades2lvl22:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x98
        call set_y_bigobstacle
        call generar1entidadBig
        ret

    comprobarEntidades3lvl22:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades4lvl22:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad       
        ret   

    comprobarEntidades5lvl22:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades6lvl22:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades7lvl22:
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

    comprobarEntidades8lvl22:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0x98
        call set_y_bigobstacle
        call generar1entidadBig
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 23 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_23::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl23
    cp #0x04
    jr z, comprobarEntidades2lvl23
    cp #0x06
    jr z, comprobarEntidades3lvl23
    cp #0x0A
    jr z, comprobarEntidades4lvl23
    cp #0x0C
    jr z, comprobarEntidades5lvl23
    cp #0x10
    jr z, comprobarEntidades6lvl23
    cp #0x13
    jr z, comprobarEntidades7lvl23
    cp #0x15
    jr z, comprobarEntidades8lvl23
    ret

    comprobarEntidades1lvl23:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0x88
        call set_y_bigobstacle
        call generar1entidadBig
        ret
    
    comprobarEntidades2lvl23:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad   
        ret

    comprobarEntidades3lvl23:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
    ld a, #0xB4
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades4lvl23:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret        

    comprobarEntidades5lvl23:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call  generar1entidadGhost
        ret  
    
    comprobarEntidades6lvl23:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_bigobstacle
        call generar1entidadBig
        ret

    comprobarEntidades7lvl23:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret  
    
    comprobarEntidades8lvl23:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x96
        call set_y_bigobstacle
        call generar1entidadBig
        ret  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 24 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_24::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl24
    cp #0x03
    jr z, comprobarEntidades2lvl24
    cp #0x06                 
    jr z, comprobarEntidades3lvl24
    cp #0x0A
    jr z, comprobarEntidades4lvl24
    cp #0x0B
    jr z, comprobarEntidades5lvl24
    cp #0x0E
    jr z, comprobarEntidades6lvl24
    cp #0x12
    jp z, comprobarEntidades7lvl24
    cp #0x16
    jp z, comprobarEntidades8lvl24
    cp #0x17
    jp z, comprobarEntidades9lvl24
    cp #0x1A
    jp z, comprobarEntidades10lvl24
    ret

    comprobarEntidades1lvl24:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades2lvl24:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades3lvl24:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret        

    comprobarEntidades4lvl24:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades5lvl24:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades6lvl24:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades7lvl24:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x98
        call set_y_bigobstacle
        call generar1entidadBig
        ret      

    comprobarEntidades8lvl24:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle
        call generar1entidad
        ret
    
    comprobarEntidades9lvl24:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle
        call generar1entidad
        ret

    comprobarEntidades10lvl24:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 25 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_25::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl25
    cp #0x03
    jr z, comprobarEntidades2lvl25
    cp #0x07                        
    jr z, comprobarEntidades3lvl25
    cp #0x09
    jr z, comprobarEntidades4lvl25
    cp #0x0A
    jr z, comprobarEntidades5lvl25
    cp #0x0E
    jr z, comprobarEntidades6lvl25
    cp #0x12
    jr z, comprobarEntidades7lvl25
    cp #0x16
    jr z, comprobarEntidades8lvl25
    cp #0x18
    jp z, comprobarEntidades9lvl25
    ret

    comprobarEntidades1lvl25:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades2lvl25:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave
        call generar1entidadWave
        ret
    
    comprobarEntidades3lvl25:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades4lvl25:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades5lvl25:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades6lvl25:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades7lvl25:
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

    comprobarEntidades8lvl25:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades9lvl25:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z        
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret
        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 26 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_26::
    ld a, (_level_seconds)  
    cp #0x01         
    jr z, comprobarEntidades1lvl26
    cp #0x02
    jr z, comprobarEntidades2lvl26
    cp #0x07             
    jr z, comprobarEntidades3lvl26
    cp #0x08
    jr z, comprobarEntidades4lvl26
    cp #0x0B
    jr z, comprobarEntidades5lvl26
    cp #0x0C
    jr z, comprobarEntidades6lvl26
    cp #0x10
    jr z, comprobarEntidades7lvl26
    cp #0x12
    jp z, comprobarEntidades8lvl26
    cp #0x14
    jp z, comprobarEntidades9lvl26
    cp #0x16
    jp z, comprobarEntidades10lvl26
    cp #0x18
    jp z, comprobarEntidades11lvl26
    ret

    comprobarEntidades1lvl26:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call  set_y_last_obstacle
        call  generar1entidad
        ret
    
    comprobarEntidades2lvl26:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call  set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades3lvl26:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call  set_y_last_obstacle
        call  generar1entidad

        ld a, #0xB4
        call  set_y_last_obstacle
        call  generar1entidad
        ret

    comprobarEntidades4lvl26:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z    
        ld a, #0x95
        call  set_y_last_obstacle
        call  generar1entidad
        ret

    comprobarEntidades5lvl26:
    ld a, (level_obstacles)
    cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call  set_y_last_obstacle
        call  generar1entidad
        ret        

    comprobarEntidades6lvl26:
    ld a, (level_obstacles)
    cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z    
        ld a, #0x98
        call  set_y_bigobstacle
        call  generar1entidadBig
        ret

    comprobarEntidades7lvl26:
    ld a, (level_obstacles)
    cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z    
        ld a, #0xB4
        call  set_y_ghost
        call  generar1entidadGhost
        ret

    comprobarEntidades8lvl26:
    ld a, (level_obstacles)
    cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z    
        ld a, #0x76
        call  set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades9lvl26:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z    
        ld a, #0x76
        call  set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades10lvl26:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z    
        ld a, #0xB4
        call  set_y_ghost
        call  generar1entidadGhost
        ret
    
    comprobarEntidades11lvl26:
    ld a, (level_obstacles)
    cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
    ret z    
        ld a, #0xB4
        call  set_y_ghost
        call  generar1entidadGhost
        ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 27 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_27::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl27
    cp #0x05
    jr z, comprobarEntidades2lvl27
    cp #0x09                    
    jr z, comprobarEntidades3lvl27
    cp #0x0A
    jr z, comprobarEntidades4lvl27
    cp #0x0F
    jr z, comprobarEntidades5lvl27
    cp #0x13
    jr z, comprobarEntidades6lvl27
    cp #0x14
    jr z, comprobarEntidades7lvl27
    cp #0x18
    jp z, comprobarEntidades8lvl27
    ret

    comprobarEntidades1lvl27:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_bigobstacle
        call generar1entidadBig
        ret
    
    comprobarEntidades2lvl27:
    ld a, (level_obstacles)
    cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades3lvl27:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades4lvl27:
    ld a, (level_obstacles)
    cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades5lvl27:
    ld a, (level_obstacles)
    cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad

        ld a, #0x85
        call set_y_last_obstacle     
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades6lvl27:
    ld a, (level_obstacles)
    cp #0x09               ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0x95
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades7lvl27:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x98
        call set_y_bigobstacle
        call generar1entidadBig
        ret

    comprobarEntidades8lvl27:
    ld a, (level_obstacles)
    cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades9lvl27:
    ld a, (level_obstacles)
    cp #0x0E               ;; Si ya tengo 14 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad

        ld a, #0x95
        call set_y_last_obstacle     
        call generar1entidad
        
        ld a, #0xA1
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 28 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_28::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl28
    cp #0x02
    jr z, comprobarEntidades2lvl28
    cp #0x05
    jr z, comprobarEntidades3lvl28
    cp #0x06
    jr z, comprobarEntidades4lvl28
    cp #0x09
    jr z, comprobarEntidades5lvl28
    cp #0x0A
    jr z, comprobarEntidades6lvl28
    cp #0x0C
    jr z, comprobarEntidades7lvl28
    cp #0x0D
    jr z, comprobarEntidades8lvl28
    cp #0x10
    jp z, comprobarEntidades9lvl28
    cp #0x15
    jp z, comprobarEntidades10lvl28
    cp #0x18
    jp z, comprobarEntidades11lvl28
    ret

    comprobarEntidades1lvl28:
    ld a, (level_obstacles)
    cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades2lvl28:
    ld a, (level_obstacles)
    cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades3lvl28:
    ld a, (level_obstacles)
    cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades4lvl28:
    ld a, (level_obstacles)
    cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades5lvl28:
    ld a, (level_obstacles)
    cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades6lvl28:
    ld a, (level_obstacles)
    cp #0x06               ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades7lvl28:
    ld a, (level_obstacles)
    cp #0x07               ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades8lvl28:
    ld a, (level_obstacles)
    cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades9lvl28:
    ld a, (level_obstacles)
    cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades10lvl28:
    ld a, (level_obstacles)
    cp #0x0B               ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z
        ld a, #0xAC
        call set_y_wave
        call generar1entidadWave
        ret
    
    comprobarEntidades11lvl28:
    ld a, (level_obstacles)
    cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 29 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_29::
    ld a, (_level_seconds)  
    cp #0x01        
    jr z, comprobarEntidades1lvl29
    cp #0x04
    jr z, comprobarEntidades2lvl29
    cp #0x05                                
    jr z, comprobarEntidades3lvl29
    cp #0x06
    jr z, comprobarEntidades4lvl29
    cp #0x0B
    jr z, comprobarEntidades5lvl29
    cp #0x0C
    jr z, comprobarEntidades6lvl29
    cp #0x13
    jp z, comprobarEntidades7lvl29
    cp #0x14
    jp z, comprobarEntidades8lvl29
    cp #0x18
    jp z, comprobarEntidades9lvl29
    ret

    comprobarEntidades1lvl29:
    ld a, (level_obstacles)
    cp #0x01               ;; Si ya tengo 1 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades2lvl29:
    ld a, (level_obstacles)
    cp #0x02               ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades3lvl29:
    ld a, (level_obstacles)
    cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x95
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades4lvl29:
    ld a, (level_obstacles)
    cp #0x04               ;; Si ya tengo 4 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades5lvl29:
    ld a, (level_obstacles)
    cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades6lvl29:
    ld a, (level_obstacles)
    cp #0x06               ;; Si ya tengo 6 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades7lvl29:
    ld a, (level_obstacles)
    cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades8lvl29:
    ld a, (level_obstacles)
    cp #0x09               ;; Si ya tengo 9 entidades no compruebo ninguna mas
    ret z
        ld a, #0x95
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades9lvl29:
    ld a, (level_obstacles)
    cp #0x0B               ;; Si ya tengo 11 entidades no compruebo ninguna mas
    ret z    
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  NIVEL 30 (FUEGUITO)
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
man_game_controller_lvl_30::
    ld a, (_level_seconds)  
    cp #0x01                      
    jr z, comprobarEntidades1lvl30
    cp #0x03
    jr z, comprobarEntidades2lvl30
    cp #0x06                                
    jr z, comprobarEntidades3lvl30
    cp #0x0A
    jr z, comprobarEntidades4lvl30
    cp #0x0E
    jr z, comprobarEntidades5lvl30
    cp #0x12
    jr z, comprobarEntidades6lvl30
    cp #0x16
    jp z, comprobarEntidades7lvl30
    cp #0x19
    jp z, comprobarEntidades8lvl30
    ret
    
    comprobarEntidades1lvl30:
    ld a, (level_obstacles)
    cp #0x02               ;; Si ya tengo 2 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades2lvl30:
    ld a, (level_obstacles)
    cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
    ret z
        ld a, #0x8C
        call set_y_last_obstacle     
        call generar1entidad
        ret
    
    comprobarEntidades3lvl30:
    ld a, (level_obstacles)
    cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_last_obstacle     
        call generar1entidad
        
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret

    comprobarEntidades4lvl30:
    ld a, (level_obstacles)
    cp #0x07               ;; Si ya tengo 7 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
    
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    
    comprobarEntidades5lvl30:
    ld a, (level_obstacles)
    cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades6lvl30:
    ld a, (level_obstacles)
    cp #0x0A               ;; Si ya tengo 10 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret
    comprobarEntidades7lvl30:
    ld a, (level_obstacles)
    cp #0x0C               ;; Si ya tengo 12 entidades no compruebo ninguna mas
    ret z
        ld a, #0x76
        call set_y_ghost
        call generar1entidadGhost
        
        ld a, #0xB4
        call set_y_ghost
        call generar1entidadGhost
        ret

    comprobarEntidades8lvl30:
    ld a, (level_obstacles)
    cp #0x0D               ;; Si ya tengo 13 entidades no compruebo ninguna mas
    ret z
        ld a, #0xB4
        call set_y_last_obstacle     
        call generar1entidad
        ret