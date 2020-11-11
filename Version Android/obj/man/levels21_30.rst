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
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 2.
Hexadecimal [16-Bits]



                             18 .include "game.h.s"
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
                             18 .globl man_game_init
                             19 .globl man_game_restart
                             20 .globl man_game_init_lvl_123
                             21 .globl man_game_check_level
                             22 .globl man_game_init_lvl
                             23 .globl _juego_pausado
                             24 .globl init_game
                             25 .globl _level_seconds
                             26 .globl level_obstacles
                             27 .globl level
                             28 
                             29 .globl man_game_controller_lvl_1
                             30 .globl man_game_controller_lvl_2
                             31 .globl man_game_controller_lvl_3
                             32 .globl man_game_controller_lvl_4
                             33 .globl man_game_controller_lvl_5
                             34 .globl man_game_controller_lvl_6
                             35 .globl man_game_controller_lvl_7
                             36 .globl man_game_controller_lvl_8
                             37 .globl man_game_controller_lvl_9
                             38 .globl man_game_controller_lvl_10
                             39 .globl man_game_controller_lvl_11
                             40 .globl man_game_controller_lvl_12
                             41 .globl man_game_controller_lvl_13
                             42 .globl man_game_controller_lvl_14
                             43 .globl man_game_controller_lvl_15
                             44 .globl man_game_controller_lvl_16
                             45 .globl man_game_controller_lvl_17
                             46 .globl man_game_controller_lvl_18
                             47 .globl man_game_controller_lvl_19
                             48 .globl man_game_controller_lvl_20
                             49 .globl man_game_controller_lvl_21
                             50 .globl man_game_controller_lvl_22
                             51 .globl man_game_controller_lvl_23
                             52 .globl man_game_controller_lvl_24
                             53 .globl man_game_controller_lvl_25
                             54 .globl man_game_controller_lvl_26
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 3.
Hexadecimal [16-Bits]



                             55 .globl man_game_controller_lvl_27
                             56 .globl man_game_controller_lvl_28
                             57 .globl man_game_controller_lvl_29
                             58 .globl man_game_controller_lvl_30
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 4.
Hexadecimal [16-Bits]



                             19 .include "obstacles.h.s"
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
                             18 .globl obstacle_update
                             19 .globl obstacle_init
                             20 .globl obstacle_getIYPtr
                             21 .globl obstacle_getIXPtr
                             22 .globl _obstacle_sp_0
                             23 .globl _obstacle_sp_1
                             24 .globl obstacle_size
                             25 .globl max_obstacles
                             26 .globl obstacle_array_size
                             27 .globl generar1entidad
                             28 .globl generar1entidadWave
                             29 .globl obs_doForAll
                             30 .globl get_lastObsPtr
                             31 .globl set_y_last_obstacle
                             32 .globl set_x_last_obstacle
                             33 .globl set_y_wave
                             34 .globl obs_getObstacleArray_IX
                             35 .globl obs_getObstacleArray_IX
                             36 .globl obs_getNumObstacles_A
                             37 .globl obs_destroy
                             38 .globl num_obstacles_marcados
                             39 .globl last_obs_ptr
                             40 .globl obstacle_array
                             41 .globl obs_destroy_all
                             42 .globl generar1entidadGhost
                             43 .globl set_y_ghost
                             44 .globl position_update
                             45 .globl generar1entidadBig
                             46 .globl set_y_bigobstacle
                             47 ;;.globl obstacle_restart
                             48 ;;.globl set_y_obstacles
                             49 ;;.globl obs_destroy_all
                             50 ;;;;;;;;;;;;;;;;;;;;;;
                             51 ;;                  ;;
                             52 ;;    CONSTANTES    ;;
                             53 ;;                  ;;
                             54 ;;;;;;;;;;;;;;;;;;;;;;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 5.
Hexadecimal [16-Bits]



                     000A    55 obstacle_size  == 10
                     0014    56 max_obstacles == 20
                     00C8    57 obstacle_array_size == obstacle_size*max_obstacles
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 6.
Hexadecimal [16-Bits]



                             20 
                             21 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             22 ;;
                             23 ;;
                             24 ;;  NIVEL 21 (FUEGUITO)
                             25 ;;
                             26 ;;
                             27 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   587E                      28 man_game_controller_lvl_21::
   587E 3A 6E 60      [13]   29     ld a, (_level_seconds)  
   5881 FE 01         [ 7]   30     cp #0x01                      
   5883 28 15         [12]   31     jr z, comprobarEntidades1lvl21
   5885 FE 05         [ 7]   32     cp #0x05
   5887 28 20         [12]   33     jr z, comprobarEntidades2lvl21
   5889 FE 0A         [ 7]   34     cp #0x0A                                
   588B 28 2B         [12]   35     jr z, comprobarEntidades3lvl21
   588D FE 0D         [ 7]   36     cp #0x0D
   588F 28 36         [12]   37     jr z, comprobarEntidades4lvl21
   5891 FE 13         [ 7]   38     cp #0x13
   5893 28 41         [12]   39     jr z, comprobarEntidades5lvl21
   5895 FE 18         [ 7]   40     cp #0x18
   5897 28 4C         [12]   41     jr z, comprobarEntidades6lvl21
   5899 C9            [10]   42     ret
                             43 
   589A                      44     comprobarEntidades1lvl21:
   589A 3A 6C 47      [13]   45     ld a, (level_obstacles)
   589D FE 01         [ 7]   46     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   589F C8            [11]   47     ret z
   58A0 3E B4         [ 7]   48         ld a, #0xB4
   58A2 CD 3C 46      [17]   49         call set_y_last_obstacle
   58A5 CD 97 46      [17]   50         call generar1entidad    
   58A8 C9            [10]   51         ret
                             52 
   58A9                      53     comprobarEntidades2lvl21:
   58A9 3A 6C 47      [13]   54     ld a, (level_obstacles)
   58AC FE 02         [ 7]   55     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   58AE C8            [11]   56     ret z
   58AF 3E 76         [ 7]   57         ld a, #0x76
   58B1 CD 5C 46      [17]   58         call set_y_bigobstacle
   58B4 CD CD 46      [17]   59         call generar1entidadBig
   58B7 C9            [10]   60         ret
                             61 
   58B8                      62     comprobarEntidades3lvl21:
   58B8 3A 6C 47      [13]   63     ld a, (level_obstacles)
   58BB FE 03         [ 7]   64     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   58BD C8            [11]   65     ret z
   58BE 3E AC         [ 7]   66         ld a, #0xAC
   58C0 CD 4C 46      [17]   67         call set_y_wave
   58C3 CD A9 46      [17]   68         call generar1entidadWave
   58C6 C9            [10]   69         ret
                             70 
   58C7                      71     comprobarEntidades4lvl21:
   58C7 3A 6C 47      [13]   72     ld a, (level_obstacles)
   58CA FE 04         [ 7]   73     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   58CC C8            [11]   74     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   58CD 3E 76         [ 7]   75         ld a, #0x76
   58CF CD 54 46      [17]   76         call set_y_ghost
   58D2 CD BB 46      [17]   77         call generar1entidadGhost
   58D5 C9            [10]   78         ret        
                             79  
   58D6                      80     comprobarEntidades5lvl21:
   58D6 3A 6C 47      [13]   81     ld a, (level_obstacles)
   58D9 FE 05         [ 7]   82     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   58DB C8            [11]   83     ret z
   58DC 3E B4         [ 7]   84         ld a, #0xB4
   58DE CD 3C 46      [17]   85         call set_y_last_obstacle     
   58E1 CD 97 46      [17]   86         call generar1entidad
   58E4 C9            [10]   87         ret        
                             88 
   58E5                      89     comprobarEntidades6lvl21:
   58E5 3A 6C 47      [13]   90     ld a, (level_obstacles)
   58E8 FE 06         [ 7]   91     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   58EA C8            [11]   92     ret z
   58EB 3E 76         [ 7]   93         ld a, #0x76
   58ED CD 3C 46      [17]   94         call set_y_last_obstacle     
   58F0 CD 97 46      [17]   95         call generar1entidad
   58F3 C9            [10]   96         ret  
                             97  
                             98 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             99 ;;
                            100 ;;
                            101 ;;  NIVEL 22 (FUEGUITO)
                            102 ;;
                            103 ;;
                            104 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   58F4                     105 man_game_controller_lvl_22::
   58F4 3A 6E 60      [13]  106     ld a, (_level_seconds)  
   58F7 FE 01         [ 7]  107     cp #0x01                      
   58F9 28 1D         [12]  108     jr z, comprobarEntidades1lvl22
   58FB FE 03         [ 7]  109     cp #0x03
   58FD 28 28         [12]  110     jr z, comprobarEntidades2lvl22
   58FF FE 07         [ 7]  111     cp #0x07                             
   5901 28 33         [12]  112     jr z, comprobarEntidades3lvl22
   5903 FE 09         [ 7]  113     cp #0x09
   5905 28 3E         [12]  114     jr z, comprobarEntidades4lvl22
   5907 FE 0C         [ 7]  115     cp #0x0C
   5909 28 49         [12]  116     jr z, comprobarEntidades5lvl22
   590B FE 0F         [ 7]  117     cp #0x0F
   590D 28 54         [12]  118     jr z, comprobarEntidades6lvl22
   590F FE 14         [ 7]  119     cp #0x14
   5911 28 5F         [12]  120     jr z, comprobarEntidades7lvl22
   5913 FE 18         [ 7]  121     cp #0x18
   5915 28 72         [12]  122     jr z, comprobarEntidades8lvl22
   5917 C9            [10]  123     ret
                            124 
   5918                     125     comprobarEntidades1lvl22:
   5918 3A 6C 47      [13]  126     ld a, (level_obstacles)
   591B FE 01         [ 7]  127     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   591D C8            [11]  128     ret z
   591E 3E B4         [ 7]  129         ld a, #0xB4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   5920 CD 54 46      [17]  130         call  set_y_ghost
   5923 CD BB 46      [17]  131         call  generar1entidadGhost
   5926 C9            [10]  132         ret
                            133 
   5927                     134     comprobarEntidades2lvl22:
   5927 3A 6C 47      [13]  135     ld a, (level_obstacles)
   592A FE 02         [ 7]  136     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   592C C8            [11]  137     ret z
   592D 3E 98         [ 7]  138         ld a, #0x98
   592F CD 5C 46      [17]  139         call set_y_bigobstacle
   5932 CD CD 46      [17]  140         call generar1entidadBig
   5935 C9            [10]  141         ret
                            142 
   5936                     143     comprobarEntidades3lvl22:
   5936 3A 6C 47      [13]  144     ld a, (level_obstacles)
   5939 FE 03         [ 7]  145     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   593B C8            [11]  146     ret z
   593C 3E 76         [ 7]  147         ld a, #0x76
   593E CD 3C 46      [17]  148         call set_y_last_obstacle     
   5941 CD 97 46      [17]  149         call generar1entidad
   5944 C9            [10]  150         ret
                            151 
   5945                     152     comprobarEntidades4lvl22:
   5945 3A 6C 47      [13]  153     ld a, (level_obstacles)
   5948 FE 04         [ 7]  154     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   594A C8            [11]  155     ret z
   594B 3E B4         [ 7]  156         ld a, #0xB4
   594D CD 3C 46      [17]  157         call set_y_last_obstacle     
   5950 CD 97 46      [17]  158         call generar1entidad       
   5953 C9            [10]  159         ret   
                            160 
   5954                     161     comprobarEntidades5lvl22:
   5954 3A 6C 47      [13]  162     ld a, (level_obstacles)
   5957 FE 05         [ 7]  163     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5959 C8            [11]  164     ret z
   595A 3E 76         [ 7]  165         ld a, #0x76
   595C CD 54 46      [17]  166         call set_y_ghost
   595F CD BB 46      [17]  167         call  generar1entidadGhost
   5962 C9            [10]  168         ret
                            169 
   5963                     170     comprobarEntidades6lvl22:
   5963 3A 6C 47      [13]  171     ld a, (level_obstacles)
   5966 FE 06         [ 7]  172     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5968 C8            [11]  173     ret z
   5969 3E B4         [ 7]  174         ld a, #0xB4
   596B CD 54 46      [17]  175         call set_y_ghost
   596E CD BB 46      [17]  176         call  generar1entidadGhost
   5971 C9            [10]  177         ret
                            178 
   5972                     179     comprobarEntidades7lvl22:
   5972 3A 6C 47      [13]  180     ld a, (level_obstacles)
   5975 FE 08         [ 7]  181     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5977 C8            [11]  182     ret z
   5978 3E 76         [ 7]  183         ld a, #0x76
   597A CD 3C 46      [17]  184         call set_y_last_obstacle
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   597D CD 97 46      [17]  185         call generar1entidad
   5980 3E B4         [ 7]  186         ld a, #0xB4
   5982 CD 3C 46      [17]  187         call set_y_last_obstacle
   5985 CD 97 46      [17]  188         call generar1entidad
   5988 C9            [10]  189         ret
                            190 
   5989                     191     comprobarEntidades8lvl22:
   5989 3A 6C 47      [13]  192     ld a, (level_obstacles)
   598C FE 09         [ 7]  193     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   598E C8            [11]  194     ret z
   598F 3E 98         [ 7]  195         ld a, #0x98
   5991 CD 5C 46      [17]  196         call set_y_bigobstacle
   5994 CD CD 46      [17]  197         call generar1entidadBig
   5997 C9            [10]  198         ret
                            199 
                            200 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            201 ;;
                            202 ;;
                            203 ;;  NIVEL 23 (FUEGUITO)
                            204 ;;
                            205 ;;
                            206 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5998                     207 man_game_controller_lvl_23::
   5998 3A 6E 60      [13]  208     ld a, (_level_seconds)  
   599B FE 01         [ 7]  209     cp #0x01                      
   599D 28 1D         [12]  210     jr z, comprobarEntidades1lvl23
   599F FE 04         [ 7]  211     cp #0x04
   59A1 28 28         [12]  212     jr z, comprobarEntidades2lvl23
   59A3 FE 06         [ 7]  213     cp #0x06
   59A5 28 33         [12]  214     jr z, comprobarEntidades3lvl23
   59A7 FE 0A         [ 7]  215     cp #0x0A
   59A9 28 40         [12]  216     jr z, comprobarEntidades4lvl23
   59AB FE 0C         [ 7]  217     cp #0x0C
   59AD 28 4B         [12]  218     jr z, comprobarEntidades5lvl23
   59AF FE 10         [ 7]  219     cp #0x10
   59B1 28 56         [12]  220     jr z, comprobarEntidades6lvl23
   59B3 FE 13         [ 7]  221     cp #0x13
   59B5 28 61         [12]  222     jr z, comprobarEntidades7lvl23
   59B7 FE 15         [ 7]  223     cp #0x15
   59B9 28 6C         [12]  224     jr z, comprobarEntidades8lvl23
   59BB C9            [10]  225     ret
                            226 
   59BC                     227     comprobarEntidades1lvl23:
   59BC 3A 6C 47      [13]  228     ld a, (level_obstacles)
   59BF FE 01         [ 7]  229     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   59C1 C8            [11]  230     ret z
   59C2 3E 88         [ 7]  231         ld a, #0x88
   59C4 CD 5C 46      [17]  232         call set_y_bigobstacle
   59C7 CD CD 46      [17]  233         call generar1entidadBig
   59CA C9            [10]  234         ret
                            235     
   59CB                     236     comprobarEntidades2lvl23:
   59CB 3A 6C 47      [13]  237     ld a, (level_obstacles)
   59CE FE 02         [ 7]  238     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   59D0 C8            [11]  239     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   59D1 3E B4         [ 7]  240         ld a, #0xB4
   59D3 CD 3C 46      [17]  241         call set_y_last_obstacle
   59D6 CD 97 46      [17]  242         call generar1entidad   
   59D9 C9            [10]  243         ret
                            244 
   59DA                     245     comprobarEntidades3lvl23:
   59DA 3A 6C 47      [13]  246     ld a, (level_obstacles)
   59DD FE 03         [ 7]  247     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   59DF C8            [11]  248     ret z
   59E0 3E B4         [ 7]  249     ld a, #0xB4
   59E2 3E 76         [ 7]  250         ld a, #0x76
   59E4 CD 3C 46      [17]  251         call set_y_last_obstacle
   59E7 CD 97 46      [17]  252         call generar1entidad
   59EA C9            [10]  253         ret
                            254 
   59EB                     255     comprobarEntidades4lvl23:
   59EB 3A 6C 47      [13]  256     ld a, (level_obstacles)
   59EE FE 04         [ 7]  257     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   59F0 C8            [11]  258     ret z
   59F1 3E B4         [ 7]  259         ld a, #0xB4
   59F3 CD 54 46      [17]  260         call set_y_ghost
   59F6 CD BB 46      [17]  261         call  generar1entidadGhost
   59F9 C9            [10]  262         ret        
                            263 
   59FA                     264     comprobarEntidades5lvl23:
   59FA 3A 6C 47      [13]  265     ld a, (level_obstacles)
   59FD FE 05         [ 7]  266     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   59FF C8            [11]  267     ret z
   5A00 3E B4         [ 7]  268         ld a, #0xB4
   5A02 CD 54 46      [17]  269         call set_y_ghost
   5A05 CD BB 46      [17]  270         call  generar1entidadGhost
   5A08 C9            [10]  271         ret  
                            272     
   5A09                     273     comprobarEntidades6lvl23:
   5A09 3A 6C 47      [13]  274     ld a, (level_obstacles)
   5A0C FE 06         [ 7]  275     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5A0E C8            [11]  276     ret z
   5A0F 3E 76         [ 7]  277         ld a, #0x76
   5A11 CD 5C 46      [17]  278         call set_y_bigobstacle
   5A14 CD CD 46      [17]  279         call generar1entidadBig
   5A17 C9            [10]  280         ret
                            281 
   5A18                     282     comprobarEntidades7lvl23:
   5A18 3A 6C 47      [13]  283     ld a, (level_obstacles)
   5A1B FE 07         [ 7]  284     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5A1D C8            [11]  285     ret z
   5A1E 3E B4         [ 7]  286         ld a, #0xB4
   5A20 CD 3C 46      [17]  287         call set_y_last_obstacle
   5A23 CD 97 46      [17]  288         call generar1entidad
   5A26 C9            [10]  289         ret  
                            290     
   5A27                     291     comprobarEntidades8lvl23:
   5A27 3A 6C 47      [13]  292     ld a, (level_obstacles)
   5A2A FE 08         [ 7]  293     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5A2C C8            [11]  294     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   5A2D 3E 96         [ 7]  295         ld a, #0x96
   5A2F CD 5C 46      [17]  296         call set_y_bigobstacle
   5A32 CD CD 46      [17]  297         call generar1entidadBig
   5A35 C9            [10]  298         ret  
                            299 
                            300 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            301 ;;
                            302 ;;
                            303 ;;  NIVEL 24 (FUEGUITO)
                            304 ;;
                            305 ;;
                            306 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5A36                     307 man_game_controller_lvl_24::
   5A36 3A 6E 60      [13]  308     ld a, (_level_seconds)  
   5A39 FE 01         [ 7]  309     cp #0x01                      
   5A3B 28 29         [12]  310     jr z, comprobarEntidades1lvl24
   5A3D FE 03         [ 7]  311     cp #0x03
   5A3F 28 34         [12]  312     jr z, comprobarEntidades2lvl24
   5A41 FE 06         [ 7]  313     cp #0x06                 
   5A43 28 3F         [12]  314     jr z, comprobarEntidades3lvl24
   5A45 FE 0A         [ 7]  315     cp #0x0A
   5A47 28 4A         [12]  316     jr z, comprobarEntidades4lvl24
   5A49 FE 0B         [ 7]  317     cp #0x0B
   5A4B 28 55         [12]  318     jr z, comprobarEntidades5lvl24
   5A4D FE 0E         [ 7]  319     cp #0x0E
   5A4F 28 60         [12]  320     jr z, comprobarEntidades6lvl24
   5A51 FE 12         [ 7]  321     cp #0x12
   5A53 CA C0 5A      [10]  322     jp z, comprobarEntidades7lvl24
   5A56 FE 16         [ 7]  323     cp #0x16
   5A58 CA CF 5A      [10]  324     jp z, comprobarEntidades8lvl24
   5A5B FE 17         [ 7]  325     cp #0x17
   5A5D CA DE 5A      [10]  326     jp z, comprobarEntidades9lvl24
   5A60 FE 1A         [ 7]  327     cp #0x1A
   5A62 CA ED 5A      [10]  328     jp z, comprobarEntidades10lvl24
   5A65 C9            [10]  329     ret
                            330 
   5A66                     331     comprobarEntidades1lvl24:
   5A66 3A 6C 47      [13]  332     ld a, (level_obstacles)
   5A69 FE 01         [ 7]  333     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5A6B C8            [11]  334     ret z
   5A6C 3E B4         [ 7]  335         ld a, #0xB4
   5A6E CD 3C 46      [17]  336         call set_y_last_obstacle
   5A71 CD 97 46      [17]  337         call generar1entidad
   5A74 C9            [10]  338         ret
                            339 
   5A75                     340     comprobarEntidades2lvl24:
   5A75 3A 6C 47      [13]  341     ld a, (level_obstacles)
   5A78 FE 02         [ 7]  342     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5A7A C8            [11]  343     ret z
   5A7B 3E 76         [ 7]  344         ld a, #0x76
   5A7D CD 3C 46      [17]  345         call set_y_last_obstacle
   5A80 CD 97 46      [17]  346         call generar1entidad
   5A83 C9            [10]  347         ret
                            348 
   5A84                     349     comprobarEntidades3lvl24:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   5A84 3A 6C 47      [13]  350     ld a, (level_obstacles)
   5A87 FE 03         [ 7]  351     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5A89 C8            [11]  352     ret z
   5A8A 3E 76         [ 7]  353         ld a, #0x76
   5A8C CD 54 46      [17]  354         call set_y_ghost
   5A8F CD BB 46      [17]  355         call generar1entidadGhost
   5A92 C9            [10]  356         ret        
                            357 
   5A93                     358     comprobarEntidades4lvl24:
   5A93 3A 6C 47      [13]  359     ld a, (level_obstacles)
   5A96 FE 04         [ 7]  360     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5A98 C8            [11]  361     ret z
   5A99 3E B4         [ 7]  362         ld a, #0xB4
   5A9B CD 3C 46      [17]  363         call set_y_last_obstacle
   5A9E CD 97 46      [17]  364         call generar1entidad
   5AA1 C9            [10]  365         ret
                            366 
   5AA2                     367     comprobarEntidades5lvl24:
   5AA2 3A 6C 47      [13]  368     ld a, (level_obstacles)
   5AA5 FE 05         [ 7]  369     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5AA7 C8            [11]  370     ret z
   5AA8 3E 76         [ 7]  371         ld a, #0x76
   5AAA CD 3C 46      [17]  372         call set_y_last_obstacle
   5AAD CD 97 46      [17]  373         call generar1entidad
   5AB0 C9            [10]  374         ret
                            375 
   5AB1                     376     comprobarEntidades6lvl24:
   5AB1 3A 6C 47      [13]  377     ld a, (level_obstacles)
   5AB4 FE 06         [ 7]  378     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5AB6 C8            [11]  379     ret z
   5AB7 3E 76         [ 7]  380         ld a, #0x76
   5AB9 CD 54 46      [17]  381         call set_y_ghost
   5ABC CD BB 46      [17]  382         call generar1entidadGhost
   5ABF C9            [10]  383         ret
                            384 
   5AC0                     385     comprobarEntidades7lvl24:
   5AC0 3A 6C 47      [13]  386     ld a, (level_obstacles)
   5AC3 FE 07         [ 7]  387     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5AC5 C8            [11]  388     ret z
   5AC6 3E 98         [ 7]  389         ld a, #0x98
   5AC8 CD 5C 46      [17]  390         call set_y_bigobstacle
   5ACB CD CD 46      [17]  391         call generar1entidadBig
   5ACE C9            [10]  392         ret      
                            393 
   5ACF                     394     comprobarEntidades8lvl24:
   5ACF 3A 6C 47      [13]  395     ld a, (level_obstacles)
   5AD2 FE 08         [ 7]  396     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5AD4 C8            [11]  397     ret z
   5AD5 3E B4         [ 7]  398         ld a, #0xB4
   5AD7 CD 3C 46      [17]  399         call set_y_last_obstacle
   5ADA CD 97 46      [17]  400         call generar1entidad
   5ADD C9            [10]  401         ret
                            402     
   5ADE                     403     comprobarEntidades9lvl24:
   5ADE 3A 6C 47      [13]  404     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   5AE1 FE 09         [ 7]  405     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5AE3 C8            [11]  406     ret z
   5AE4 3E 76         [ 7]  407         ld a, #0x76
   5AE6 CD 3C 46      [17]  408         call set_y_last_obstacle
   5AE9 CD 97 46      [17]  409         call generar1entidad
   5AEC C9            [10]  410         ret
                            411 
   5AED                     412     comprobarEntidades10lvl24:
   5AED 3A 6C 47      [13]  413     ld a, (level_obstacles)
   5AF0 FE 0A         [ 7]  414     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5AF2 C8            [11]  415     ret z
   5AF3 3E B4         [ 7]  416         ld a, #0xB4
   5AF5 CD 54 46      [17]  417         call set_y_ghost
   5AF8 CD BB 46      [17]  418         call generar1entidadGhost
   5AFB C9            [10]  419         ret
                            420 
                            421 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            422 ;;
                            423 ;;
                            424 ;;  NIVEL 25 (FUEGUITO)
                            425 ;;
                            426 ;;
                            427 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5AFC                     428 man_game_controller_lvl_25::
   5AFC 3A 6E 60      [13]  429     ld a, (_level_seconds)  
   5AFF FE 01         [ 7]  430     cp #0x01                      
   5B01 28 22         [12]  431     jr z, comprobarEntidades1lvl25
   5B03 FE 03         [ 7]  432     cp #0x03
   5B05 28 2D         [12]  433     jr z, comprobarEntidades2lvl25
   5B07 FE 07         [ 7]  434     cp #0x07                        
   5B09 28 38         [12]  435     jr z, comprobarEntidades3lvl25
   5B0B FE 09         [ 7]  436     cp #0x09
   5B0D 28 43         [12]  437     jr z, comprobarEntidades4lvl25
   5B0F FE 0A         [ 7]  438     cp #0x0A
   5B11 28 4E         [12]  439     jr z, comprobarEntidades5lvl25
   5B13 FE 0E         [ 7]  440     cp #0x0E
   5B15 28 59         [12]  441     jr z, comprobarEntidades6lvl25
   5B17 FE 12         [ 7]  442     cp #0x12
   5B19 28 6C         [12]  443     jr z, comprobarEntidades7lvl25
   5B1B FE 16         [ 7]  444     cp #0x16
   5B1D 28 7F         [12]  445     jr z, comprobarEntidades8lvl25
   5B1F FE 18         [ 7]  446     cp #0x18
   5B21 CA AD 5B      [10]  447     jp z, comprobarEntidades9lvl25
   5B24 C9            [10]  448     ret
                            449 
   5B25                     450     comprobarEntidades1lvl25:
   5B25 3A 6C 47      [13]  451     ld a, (level_obstacles)
   5B28 FE 01         [ 7]  452     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5B2A C8            [11]  453     ret z
   5B2B 3E 76         [ 7]  454         ld a, #0x76
   5B2D CD 3C 46      [17]  455         call set_y_last_obstacle     
   5B30 CD 97 46      [17]  456         call generar1entidad
   5B33 C9            [10]  457         ret
                            458     
   5B34                     459     comprobarEntidades2lvl25:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   5B34 3A 6C 47      [13]  460     ld a, (level_obstacles)
   5B37 FE 02         [ 7]  461     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5B39 C8            [11]  462     ret z
   5B3A 3E AC         [ 7]  463         ld a, #0xAC
   5B3C CD 4C 46      [17]  464         call set_y_wave
   5B3F CD A9 46      [17]  465         call generar1entidadWave
   5B42 C9            [10]  466         ret
                            467     
   5B43                     468     comprobarEntidades3lvl25:
   5B43 3A 6C 47      [13]  469     ld a, (level_obstacles)
   5B46 FE 03         [ 7]  470     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5B48 C8            [11]  471     ret z
   5B49 3E 76         [ 7]  472         ld a, #0x76
   5B4B CD 3C 46      [17]  473         call set_y_last_obstacle     
   5B4E CD 97 46      [17]  474         call generar1entidad
   5B51 C9            [10]  475         ret
                            476     
   5B52                     477     comprobarEntidades4lvl25:
   5B52 3A 6C 47      [13]  478     ld a, (level_obstacles)
   5B55 FE 04         [ 7]  479     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5B57 C8            [11]  480     ret z
   5B58 3E B4         [ 7]  481         ld a, #0xB4
   5B5A CD 3C 46      [17]  482         call set_y_last_obstacle     
   5B5D CD 97 46      [17]  483         call generar1entidad
   5B60 C9            [10]  484         ret
                            485     
   5B61                     486     comprobarEntidades5lvl25:
   5B61 3A 6C 47      [13]  487     ld a, (level_obstacles)
   5B64 FE 05         [ 7]  488     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5B66 C8            [11]  489     ret z
   5B67 3E 76         [ 7]  490         ld a, #0x76
   5B69 CD 3C 46      [17]  491         call set_y_last_obstacle     
   5B6C CD 97 46      [17]  492         call generar1entidad
   5B6F C9            [10]  493         ret
                            494 
   5B70                     495     comprobarEntidades6lvl25:
   5B70 3A 6C 47      [13]  496     ld a, (level_obstacles)
   5B73 FE 07         [ 7]  497     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5B75 C8            [11]  498     ret z
   5B76 3E 76         [ 7]  499         ld a, #0x76
   5B78 CD 54 46      [17]  500         call set_y_ghost
   5B7B CD BB 46      [17]  501         call generar1entidadGhost
                            502         
   5B7E 3E B4         [ 7]  503         ld a, #0xB4
   5B80 CD 54 46      [17]  504         call set_y_ghost
   5B83 CD BB 46      [17]  505         call generar1entidadGhost
   5B86 C9            [10]  506         ret
                            507     
   5B87                     508     comprobarEntidades7lvl25:
   5B87 3A 6C 47      [13]  509     ld a, (level_obstacles)
   5B8A FE 09         [ 7]  510     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5B8C C8            [11]  511     ret z
   5B8D 3E 76         [ 7]  512         ld a, #0x76
   5B8F CD 3C 46      [17]  513         call set_y_last_obstacle
   5B92 CD 97 46      [17]  514         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                            515         
   5B95 3E B4         [ 7]  516         ld a, #0xB4
   5B97 CD 3C 46      [17]  517         call set_y_last_obstacle
   5B9A CD 97 46      [17]  518         call generar1entidad
   5B9D C9            [10]  519         ret
                            520 
   5B9E                     521     comprobarEntidades8lvl25:
   5B9E 3A 6C 47      [13]  522     ld a, (level_obstacles)
   5BA1 FE 0A         [ 7]  523     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5BA3 C8            [11]  524     ret z        
   5BA4 3E B4         [ 7]  525         ld a, #0xB4
   5BA6 CD 54 46      [17]  526         call set_y_ghost
   5BA9 CD BB 46      [17]  527         call generar1entidadGhost
   5BAC C9            [10]  528         ret
                            529 
   5BAD                     530     comprobarEntidades9lvl25:
   5BAD 3A 6C 47      [13]  531     ld a, (level_obstacles)
   5BB0 FE 0B         [ 7]  532     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5BB2 C8            [11]  533     ret z        
   5BB3 3E 76         [ 7]  534         ld a, #0x76
   5BB5 CD 54 46      [17]  535         call set_y_ghost
   5BB8 CD BB 46      [17]  536         call generar1entidadGhost
   5BBB C9            [10]  537         ret
                            538         
                            539 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            540 ;;
                            541 ;;
                            542 ;;  NIVEL 26 (FUEGUITO)
                            543 ;;
                            544 ;;
                            545 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5BBC                     546 man_game_controller_lvl_26::
   5BBC 3A 6E 60      [13]  547     ld a, (_level_seconds)  
   5BBF FE 01         [ 7]  548     cp #0x01         
   5BC1 28 2D         [12]  549     jr z, comprobarEntidades1lvl26
   5BC3 FE 02         [ 7]  550     cp #0x02
   5BC5 28 38         [12]  551     jr z, comprobarEntidades2lvl26
   5BC7 FE 07         [ 7]  552     cp #0x07             
   5BC9 28 43         [12]  553     jr z, comprobarEntidades3lvl26
   5BCB FE 08         [ 7]  554     cp #0x08
   5BCD 28 56         [12]  555     jr z, comprobarEntidades4lvl26
   5BCF FE 0B         [ 7]  556     cp #0x0B
   5BD1 28 61         [12]  557     jr z, comprobarEntidades5lvl26
   5BD3 FE 0C         [ 7]  558     cp #0x0C
   5BD5 28 6C         [12]  559     jr z, comprobarEntidades6lvl26
   5BD7 FE 10         [ 7]  560     cp #0x10
   5BD9 28 77         [12]  561     jr z, comprobarEntidades7lvl26
   5BDB FE 12         [ 7]  562     cp #0x12
   5BDD CA 61 5C      [10]  563     jp z, comprobarEntidades8lvl26
   5BE0 FE 14         [ 7]  564     cp #0x14
   5BE2 CA 70 5C      [10]  565     jp z, comprobarEntidades9lvl26
   5BE5 FE 16         [ 7]  566     cp #0x16
   5BE7 CA 7F 5C      [10]  567     jp z, comprobarEntidades10lvl26
   5BEA FE 18         [ 7]  568     cp #0x18
   5BEC CA 8E 5C      [10]  569     jp z, comprobarEntidades11lvl26
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   5BEF C9            [10]  570     ret
                            571 
   5BF0                     572     comprobarEntidades1lvl26:
   5BF0 3A 6C 47      [13]  573     ld a, (level_obstacles)
   5BF3 FE 01         [ 7]  574     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5BF5 C8            [11]  575     ret z
   5BF6 3E B4         [ 7]  576         ld a, #0xB4
   5BF8 CD 3C 46      [17]  577         call  set_y_last_obstacle
   5BFB CD 97 46      [17]  578         call  generar1entidad
   5BFE C9            [10]  579         ret
                            580     
   5BFF                     581     comprobarEntidades2lvl26:
   5BFF 3A 6C 47      [13]  582     ld a, (level_obstacles)
   5C02 FE 02         [ 7]  583     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5C04 C8            [11]  584     ret z
   5C05 3E 76         [ 7]  585         ld a, #0x76
   5C07 CD 54 46      [17]  586         call  set_y_ghost
   5C0A CD BB 46      [17]  587         call  generar1entidadGhost
   5C0D C9            [10]  588         ret
                            589     
   5C0E                     590     comprobarEntidades3lvl26:
   5C0E 3A 6C 47      [13]  591     ld a, (level_obstacles)
   5C11 FE 04         [ 7]  592     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5C13 C8            [11]  593     ret z
   5C14 3E 76         [ 7]  594         ld a, #0x76
   5C16 CD 3C 46      [17]  595         call  set_y_last_obstacle
   5C19 CD 97 46      [17]  596         call  generar1entidad
                            597 
   5C1C 3E B4         [ 7]  598         ld a, #0xB4
   5C1E CD 3C 46      [17]  599         call  set_y_last_obstacle
   5C21 CD 97 46      [17]  600         call  generar1entidad
   5C24 C9            [10]  601         ret
                            602 
   5C25                     603     comprobarEntidades4lvl26:
   5C25 3A 6C 47      [13]  604     ld a, (level_obstacles)
   5C28 FE 05         [ 7]  605     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5C2A C8            [11]  606     ret z    
   5C2B 3E 95         [ 7]  607         ld a, #0x95
   5C2D CD 3C 46      [17]  608         call  set_y_last_obstacle
   5C30 CD 97 46      [17]  609         call  generar1entidad
   5C33 C9            [10]  610         ret
                            611 
   5C34                     612     comprobarEntidades5lvl26:
   5C34 3A 6C 47      [13]  613     ld a, (level_obstacles)
   5C37 FE 06         [ 7]  614     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5C39 C8            [11]  615     ret z
   5C3A 3E 76         [ 7]  616         ld a, #0x76
   5C3C CD 3C 46      [17]  617         call  set_y_last_obstacle
   5C3F CD 97 46      [17]  618         call  generar1entidad
   5C42 C9            [10]  619         ret        
                            620 
   5C43                     621     comprobarEntidades6lvl26:
   5C43 3A 6C 47      [13]  622     ld a, (level_obstacles)
   5C46 FE 07         [ 7]  623     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5C48 C8            [11]  624     ret z    
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   5C49 3E 98         [ 7]  625         ld a, #0x98
   5C4B CD 5C 46      [17]  626         call  set_y_bigobstacle
   5C4E CD CD 46      [17]  627         call  generar1entidadBig
   5C51 C9            [10]  628         ret
                            629 
   5C52                     630     comprobarEntidades7lvl26:
   5C52 3A 6C 47      [13]  631     ld a, (level_obstacles)
   5C55 FE 08         [ 7]  632     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5C57 C8            [11]  633     ret z    
   5C58 3E B4         [ 7]  634         ld a, #0xB4
   5C5A CD 54 46      [17]  635         call  set_y_ghost
   5C5D CD BB 46      [17]  636         call  generar1entidadGhost
   5C60 C9            [10]  637         ret
                            638 
   5C61                     639     comprobarEntidades8lvl26:
   5C61 3A 6C 47      [13]  640     ld a, (level_obstacles)
   5C64 FE 09         [ 7]  641     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5C66 C8            [11]  642     ret z    
   5C67 3E 76         [ 7]  643         ld a, #0x76
   5C69 CD 54 46      [17]  644         call  set_y_ghost
   5C6C CD BB 46      [17]  645         call  generar1entidadGhost
   5C6F C9            [10]  646         ret
                            647     
   5C70                     648     comprobarEntidades9lvl26:
   5C70 3A 6C 47      [13]  649     ld a, (level_obstacles)
   5C73 FE 0A         [ 7]  650     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5C75 C8            [11]  651     ret z    
   5C76 3E 76         [ 7]  652         ld a, #0x76
   5C78 CD 54 46      [17]  653         call  set_y_ghost
   5C7B CD BB 46      [17]  654         call  generar1entidadGhost
   5C7E C9            [10]  655         ret
                            656     
   5C7F                     657     comprobarEntidades10lvl26:
   5C7F 3A 6C 47      [13]  658     ld a, (level_obstacles)
   5C82 FE 0B         [ 7]  659     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5C84 C8            [11]  660     ret z    
   5C85 3E B4         [ 7]  661         ld a, #0xB4
   5C87 CD 54 46      [17]  662         call  set_y_ghost
   5C8A CD BB 46      [17]  663         call  generar1entidadGhost
   5C8D C9            [10]  664         ret
                            665     
   5C8E                     666     comprobarEntidades11lvl26:
   5C8E 3A 6C 47      [13]  667     ld a, (level_obstacles)
   5C91 FE 0C         [ 7]  668     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   5C93 C8            [11]  669     ret z    
   5C94 3E B4         [ 7]  670         ld a, #0xB4
   5C96 CD 54 46      [17]  671         call  set_y_ghost
   5C99 CD BB 46      [17]  672         call  generar1entidadGhost
   5C9C C9            [10]  673         ret
                            674 
                            675 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            676 ;;
                            677 ;;
                            678 ;;  NIVEL 27 (FUEGUITO)
                            679 ;;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



                            680 ;;
                            681 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5C9D                     682 man_game_controller_lvl_27::
   5C9D 3A 6E 60      [13]  683     ld a, (_level_seconds)  
   5CA0 FE 01         [ 7]  684     cp #0x01                      
   5CA2 28 1E         [12]  685     jr z, comprobarEntidades1lvl27
   5CA4 FE 05         [ 7]  686     cp #0x05
   5CA6 28 29         [12]  687     jr z, comprobarEntidades2lvl27
   5CA8 FE 09         [ 7]  688     cp #0x09                    
   5CAA 28 3C         [12]  689     jr z, comprobarEntidades3lvl27
   5CAC FE 0A         [ 7]  690     cp #0x0A
   5CAE 28 47         [12]  691     jr z, comprobarEntidades4lvl27
   5CB0 FE 0F         [ 7]  692     cp #0x0F
   5CB2 28 52         [12]  693     jr z, comprobarEntidades5lvl27
   5CB4 FE 13         [ 7]  694     cp #0x13
   5CB6 28 6D         [12]  695     jr z, comprobarEntidades6lvl27
   5CB8 FE 14         [ 7]  696     cp #0x14
   5CBA 28 78         [12]  697     jr z, comprobarEntidades7lvl27
   5CBC FE 18         [ 7]  698     cp #0x18
   5CBE CA 43 5D      [10]  699     jp z, comprobarEntidades8lvl27
   5CC1 C9            [10]  700     ret
                            701 
   5CC2                     702     comprobarEntidades1lvl27:
   5CC2 3A 6C 47      [13]  703     ld a, (level_obstacles)
   5CC5 FE 01         [ 7]  704     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5CC7 C8            [11]  705     ret z
   5CC8 3E 76         [ 7]  706         ld a, #0x76
   5CCA CD 5C 46      [17]  707         call set_y_bigobstacle
   5CCD CD CD 46      [17]  708         call generar1entidadBig
   5CD0 C9            [10]  709         ret
                            710     
   5CD1                     711     comprobarEntidades2lvl27:
   5CD1 3A 6C 47      [13]  712     ld a, (level_obstacles)
   5CD4 FE 03         [ 7]  713     cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5CD6 C8            [11]  714     ret z
   5CD7 3E 76         [ 7]  715         ld a, #0x76
   5CD9 CD 3C 46      [17]  716         call set_y_last_obstacle     
   5CDC CD 97 46      [17]  717         call generar1entidad
                            718         
   5CDF 3E B4         [ 7]  719         ld a, #0xB4
   5CE1 CD 3C 46      [17]  720         call set_y_last_obstacle     
   5CE4 CD 97 46      [17]  721         call generar1entidad
   5CE7 C9            [10]  722         ret
                            723 
   5CE8                     724     comprobarEntidades3lvl27:
   5CE8 3A 6C 47      [13]  725     ld a, (level_obstacles)
   5CEB FE 04         [ 7]  726     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5CED C8            [11]  727     ret z
   5CEE 3E 76         [ 7]  728         ld a, #0x76
   5CF0 CD 54 46      [17]  729         call set_y_ghost
   5CF3 CD BB 46      [17]  730         call generar1entidadGhost
   5CF6 C9            [10]  731         ret
                            732     
   5CF7                     733     comprobarEntidades4lvl27:
   5CF7 3A 6C 47      [13]  734     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   5CFA FE 05         [ 7]  735     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5CFC C8            [11]  736     ret z
   5CFD 3E 76         [ 7]  737         ld a, #0x76
   5CFF CD 54 46      [17]  738         call set_y_ghost
   5D02 CD BB 46      [17]  739         call generar1entidadGhost
   5D05 C9            [10]  740         ret
                            741     
   5D06                     742     comprobarEntidades5lvl27:
   5D06 3A 6C 47      [13]  743     ld a, (level_obstacles)
   5D09 FE 08         [ 7]  744     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5D0B C8            [11]  745     ret z
   5D0C 3E 76         [ 7]  746         ld a, #0x76
   5D0E CD 3C 46      [17]  747         call set_y_last_obstacle     
   5D11 CD 97 46      [17]  748         call generar1entidad
                            749 
   5D14 3E 85         [ 7]  750         ld a, #0x85
   5D16 CD 3C 46      [17]  751         call set_y_last_obstacle     
   5D19 CD 97 46      [17]  752         call generar1entidad
                            753         
   5D1C 3E B4         [ 7]  754         ld a, #0xB4
   5D1E CD 3C 46      [17]  755         call set_y_last_obstacle     
   5D21 CD 97 46      [17]  756         call generar1entidad
   5D24 C9            [10]  757         ret
                            758     
   5D25                     759     comprobarEntidades6lvl27:
   5D25 3A 6C 47      [13]  760     ld a, (level_obstacles)
   5D28 FE 09         [ 7]  761     cp #0x09               ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5D2A C8            [11]  762     ret z
   5D2B 3E 95         [ 7]  763         ld a, #0x95
   5D2D CD 3C 46      [17]  764         call set_y_last_obstacle     
   5D30 CD 97 46      [17]  765         call generar1entidad
   5D33 C9            [10]  766         ret
                            767 
   5D34                     768     comprobarEntidades7lvl27:
   5D34 3A 6C 47      [13]  769     ld a, (level_obstacles)
   5D37 FE 0A         [ 7]  770     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5D39 C8            [11]  771     ret z
   5D3A 3E 98         [ 7]  772         ld a, #0x98
   5D3C CD 5C 46      [17]  773         call set_y_bigobstacle
   5D3F CD CD 46      [17]  774         call generar1entidadBig
   5D42 C9            [10]  775         ret
                            776 
   5D43                     777     comprobarEntidades8lvl27:
   5D43 3A 6C 47      [13]  778     ld a, (level_obstacles)
   5D46 FE 0B         [ 7]  779     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5D48 C8            [11]  780     ret z
   5D49 3E 76         [ 7]  781         ld a, #0x76
   5D4B CD 54 46      [17]  782         call set_y_ghost
   5D4E CD BB 46      [17]  783         call generar1entidadGhost
   5D51 C9            [10]  784         ret
                            785 
   5D52                     786     comprobarEntidades9lvl27:
   5D52 3A 6C 47      [13]  787     ld a, (level_obstacles)
   5D55 FE 0E         [ 7]  788     cp #0x0E               ;; Si ya tengo 14 entidades no compruebo ninguna mas
   5D57 C8            [11]  789     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   5D58 3E 76         [ 7]  790         ld a, #0x76
   5D5A CD 3C 46      [17]  791         call set_y_last_obstacle     
   5D5D CD 97 46      [17]  792         call generar1entidad
                            793 
   5D60 3E 95         [ 7]  794         ld a, #0x95
   5D62 CD 3C 46      [17]  795         call set_y_last_obstacle     
   5D65 CD 97 46      [17]  796         call generar1entidad
                            797         
   5D68 3E A1         [ 7]  798         ld a, #0xA1
   5D6A CD 3C 46      [17]  799         call set_y_last_obstacle     
   5D6D CD 97 46      [17]  800         call generar1entidad
   5D70 C9            [10]  801         ret
                            802     
                            803 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            804 ;;
                            805 ;;
                            806 ;;  NIVEL 28 (FUEGUITO)
                            807 ;;
                            808 ;;
                            809 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5D71                     810 man_game_controller_lvl_28::
   5D71 3A 6E 60      [13]  811     ld a, (_level_seconds)  
   5D74 FE 01         [ 7]  812     cp #0x01                      
   5D76 28 2C         [12]  813     jr z, comprobarEntidades1lvl28
   5D78 FE 02         [ 7]  814     cp #0x02
   5D7A 28 37         [12]  815     jr z, comprobarEntidades2lvl28
   5D7C FE 05         [ 7]  816     cp #0x05
   5D7E 28 42         [12]  817     jr z, comprobarEntidades3lvl28
   5D80 FE 06         [ 7]  818     cp #0x06
   5D82 28 4D         [12]  819     jr z, comprobarEntidades4lvl28
   5D84 FE 09         [ 7]  820     cp #0x09
   5D86 28 58         [12]  821     jr z, comprobarEntidades5lvl28
   5D88 FE 0A         [ 7]  822     cp #0x0A
   5D8A 28 63         [12]  823     jr z, comprobarEntidades6lvl28
   5D8C FE 0C         [ 7]  824     cp #0x0C
   5D8E 28 6E         [12]  825     jr z, comprobarEntidades7lvl28
   5D90 FE 0D         [ 7]  826     cp #0x0D
   5D92 28 79         [12]  827     jr z, comprobarEntidades8lvl28
   5D94 FE 10         [ 7]  828     cp #0x10
   5D96 CA 1C 5E      [10]  829     jp z, comprobarEntidades9lvl28
   5D99 FE 15         [ 7]  830     cp #0x15
   5D9B CA 33 5E      [10]  831     jp z, comprobarEntidades10lvl28
   5D9E FE 18         [ 7]  832     cp #0x18
   5DA0 CA 42 5E      [10]  833     jp z, comprobarEntidades11lvl28
   5DA3 C9            [10]  834     ret
                            835 
   5DA4                     836     comprobarEntidades1lvl28:
   5DA4 3A 6C 47      [13]  837     ld a, (level_obstacles)
   5DA7 FE 01         [ 7]  838     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5DA9 C8            [11]  839     ret z
   5DAA 3E B4         [ 7]  840         ld a, #0xB4
   5DAC CD 54 46      [17]  841         call set_y_ghost
   5DAF CD BB 46      [17]  842         call generar1entidadGhost
   5DB2 C9            [10]  843         ret
                            844     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   5DB3                     845     comprobarEntidades2lvl28:
   5DB3 3A 6C 47      [13]  846     ld a, (level_obstacles)
   5DB6 FE 02         [ 7]  847     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5DB8 C8            [11]  848     ret z
   5DB9 3E 76         [ 7]  849         ld a, #0x76
   5DBB CD 54 46      [17]  850         call set_y_ghost
   5DBE CD BB 46      [17]  851         call generar1entidadGhost
   5DC1 C9            [10]  852         ret
                            853     
   5DC2                     854     comprobarEntidades3lvl28:
   5DC2 3A 6C 47      [13]  855     ld a, (level_obstacles)
   5DC5 FE 03         [ 7]  856     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5DC7 C8            [11]  857     ret z
   5DC8 3E 76         [ 7]  858         ld a, #0x76
   5DCA CD 54 46      [17]  859         call set_y_ghost
   5DCD CD BB 46      [17]  860         call generar1entidadGhost
   5DD0 C9            [10]  861         ret
                            862     
   5DD1                     863     comprobarEntidades4lvl28:
   5DD1 3A 6C 47      [13]  864     ld a, (level_obstacles)
   5DD4 FE 04         [ 7]  865     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5DD6 C8            [11]  866     ret z
   5DD7 3E B4         [ 7]  867         ld a, #0xB4
   5DD9 CD 54 46      [17]  868         call set_y_ghost
   5DDC CD BB 46      [17]  869         call generar1entidadGhost
   5DDF C9            [10]  870         ret
                            871     
   5DE0                     872     comprobarEntidades5lvl28:
   5DE0 3A 6C 47      [13]  873     ld a, (level_obstacles)
   5DE3 FE 05         [ 7]  874     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5DE5 C8            [11]  875     ret z
   5DE6 3E B4         [ 7]  876         ld a, #0xB4
   5DE8 CD 3C 46      [17]  877         call set_y_last_obstacle     
   5DEB CD 97 46      [17]  878         call generar1entidad
   5DEE C9            [10]  879         ret
                            880 
   5DEF                     881     comprobarEntidades6lvl28:
   5DEF 3A 6C 47      [13]  882     ld a, (level_obstacles)
   5DF2 FE 06         [ 7]  883     cp #0x06               ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5DF4 C8            [11]  884     ret z
   5DF5 3E 76         [ 7]  885         ld a, #0x76
   5DF7 CD 3C 46      [17]  886         call set_y_last_obstacle     
   5DFA CD 97 46      [17]  887         call generar1entidad
   5DFD C9            [10]  888         ret
                            889 
   5DFE                     890     comprobarEntidades7lvl28:
   5DFE 3A 6C 47      [13]  891     ld a, (level_obstacles)
   5E01 FE 07         [ 7]  892     cp #0x07               ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5E03 C8            [11]  893     ret z
   5E04 3E 76         [ 7]  894         ld a, #0x76
   5E06 CD 3C 46      [17]  895         call set_y_last_obstacle     
   5E09 CD 97 46      [17]  896         call generar1entidad
   5E0C C9            [10]  897         ret
                            898 
   5E0D                     899     comprobarEntidades8lvl28:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   5E0D 3A 6C 47      [13]  900     ld a, (level_obstacles)
   5E10 FE 08         [ 7]  901     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5E12 C8            [11]  902     ret z
   5E13 3E B4         [ 7]  903         ld a, #0xB4
   5E15 CD 3C 46      [17]  904         call set_y_last_obstacle     
   5E18 CD 97 46      [17]  905         call generar1entidad
   5E1B C9            [10]  906         ret
                            907 
   5E1C                     908     comprobarEntidades9lvl28:
   5E1C 3A 6C 47      [13]  909     ld a, (level_obstacles)
   5E1F FE 0A         [ 7]  910     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5E21 C8            [11]  911     ret z
   5E22 3E 76         [ 7]  912         ld a, #0x76
   5E24 CD 54 46      [17]  913         call set_y_ghost
   5E27 CD BB 46      [17]  914         call generar1entidadGhost
                            915         
   5E2A 3E B4         [ 7]  916         ld a, #0xB4
   5E2C CD 54 46      [17]  917         call set_y_ghost
   5E2F CD BB 46      [17]  918         call generar1entidadGhost
   5E32 C9            [10]  919         ret
                            920     
   5E33                     921     comprobarEntidades10lvl28:
   5E33 3A 6C 47      [13]  922     ld a, (level_obstacles)
   5E36 FE 0B         [ 7]  923     cp #0x0B               ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5E38 C8            [11]  924     ret z
   5E39 3E AC         [ 7]  925         ld a, #0xAC
   5E3B CD 4C 46      [17]  926         call set_y_wave
   5E3E CD A9 46      [17]  927         call generar1entidadWave
   5E41 C9            [10]  928         ret
                            929     
   5E42                     930     comprobarEntidades11lvl28:
   5E42 3A 6C 47      [13]  931     ld a, (level_obstacles)
   5E45 FE 0C         [ 7]  932     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   5E47 C8            [11]  933     ret z
   5E48 3E B4         [ 7]  934         ld a, #0xB4
   5E4A CD 54 46      [17]  935         call set_y_ghost
   5E4D CD BB 46      [17]  936         call generar1entidadGhost
   5E50 C9            [10]  937         ret
                            938     
                            939 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            940 ;;
                            941 ;;
                            942 ;;  NIVEL 29 (FUEGUITO)
                            943 ;;
                            944 ;;
                            945 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5E51                     946 man_game_controller_lvl_29::
   5E51 3A 6E 60      [13]  947     ld a, (_level_seconds)  
   5E54 FE 01         [ 7]  948     cp #0x01        
   5E56 28 24         [12]  949     jr z, comprobarEntidades1lvl29
   5E58 FE 04         [ 7]  950     cp #0x04
   5E5A 28 2F         [12]  951     jr z, comprobarEntidades2lvl29
   5E5C FE 05         [ 7]  952     cp #0x05                                
   5E5E 28 3A         [12]  953     jr z, comprobarEntidades3lvl29
   5E60 FE 06         [ 7]  954     cp #0x06
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   5E62 28 45         [12]  955     jr z, comprobarEntidades4lvl29
   5E64 FE 0B         [ 7]  956     cp #0x0B
   5E66 28 50         [12]  957     jr z, comprobarEntidades5lvl29
   5E68 FE 0C         [ 7]  958     cp #0x0C
   5E6A 28 5B         [12]  959     jr z, comprobarEntidades6lvl29
   5E6C FE 13         [ 7]  960     cp #0x13
   5E6E CA D6 5E      [10]  961     jp z, comprobarEntidades7lvl29
   5E71 FE 14         [ 7]  962     cp #0x14
   5E73 CA ED 5E      [10]  963     jp z, comprobarEntidades8lvl29
   5E76 FE 18         [ 7]  964     cp #0x18
   5E78 CA FC 5E      [10]  965     jp z, comprobarEntidades9lvl29
   5E7B C9            [10]  966     ret
                            967 
   5E7C                     968     comprobarEntidades1lvl29:
   5E7C 3A 6C 47      [13]  969     ld a, (level_obstacles)
   5E7F FE 01         [ 7]  970     cp #0x01               ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5E81 C8            [11]  971     ret z
   5E82 3E B4         [ 7]  972         ld a, #0xB4
   5E84 CD 3C 46      [17]  973         call set_y_last_obstacle     
   5E87 CD 97 46      [17]  974         call generar1entidad
   5E8A C9            [10]  975         ret
                            976 
   5E8B                     977     comprobarEntidades2lvl29:
   5E8B 3A 6C 47      [13]  978     ld a, (level_obstacles)
   5E8E FE 02         [ 7]  979     cp #0x02               ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5E90 C8            [11]  980     ret z
   5E91 3E 76         [ 7]  981         ld a, #0x76
   5E93 CD 3C 46      [17]  982         call set_y_last_obstacle     
   5E96 CD 97 46      [17]  983         call generar1entidad
   5E99 C9            [10]  984         ret
                            985     
   5E9A                     986     comprobarEntidades3lvl29:
   5E9A 3A 6C 47      [13]  987     ld a, (level_obstacles)
   5E9D FE 03         [ 7]  988     cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5E9F C8            [11]  989     ret z
   5EA0 3E 95         [ 7]  990         ld a, #0x95
   5EA2 CD 3C 46      [17]  991         call set_y_last_obstacle     
   5EA5 CD 97 46      [17]  992         call generar1entidad
   5EA8 C9            [10]  993         ret
                            994     
   5EA9                     995     comprobarEntidades4lvl29:
   5EA9 3A 6C 47      [13]  996     ld a, (level_obstacles)
   5EAC FE 04         [ 7]  997     cp #0x04               ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5EAE C8            [11]  998     ret z
   5EAF 3E B4         [ 7]  999         ld a, #0xB4
   5EB1 CD 3C 46      [17] 1000         call set_y_last_obstacle     
   5EB4 CD 97 46      [17] 1001         call generar1entidad
   5EB7 C9            [10] 1002         ret
                           1003     
   5EB8                    1004     comprobarEntidades5lvl29:
   5EB8 3A 6C 47      [13] 1005     ld a, (level_obstacles)
   5EBB FE 05         [ 7] 1006     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5EBD C8            [11] 1007     ret z
   5EBE 3E 76         [ 7] 1008         ld a, #0x76
   5EC0 CD 3C 46      [17] 1009         call set_y_last_obstacle     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   5EC3 CD 97 46      [17] 1010         call generar1entidad
   5EC6 C9            [10] 1011         ret
                           1012     
   5EC7                    1013     comprobarEntidades6lvl29:
   5EC7 3A 6C 47      [13] 1014     ld a, (level_obstacles)
   5ECA FE 06         [ 7] 1015     cp #0x06               ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5ECC C8            [11] 1016     ret z
   5ECD 3E B4         [ 7] 1017         ld a, #0xB4
   5ECF CD 54 46      [17] 1018         call set_y_ghost
   5ED2 CD BB 46      [17] 1019         call generar1entidadGhost
   5ED5 C9            [10] 1020         ret
                           1021     
   5ED6                    1022     comprobarEntidades7lvl29:
   5ED6 3A 6C 47      [13] 1023     ld a, (level_obstacles)
   5ED9 FE 08         [ 7] 1024     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5EDB C8            [11] 1025     ret z
   5EDC 3E 76         [ 7] 1026         ld a, #0x76
   5EDE CD 3C 46      [17] 1027         call set_y_last_obstacle     
   5EE1 CD 97 46      [17] 1028         call generar1entidad
                           1029         
   5EE4 3E B4         [ 7] 1030         ld a, #0xB4
   5EE6 CD 3C 46      [17] 1031         call set_y_last_obstacle     
   5EE9 CD 97 46      [17] 1032         call generar1entidad
   5EEC C9            [10] 1033         ret
                           1034     
   5EED                    1035     comprobarEntidades8lvl29:
   5EED 3A 6C 47      [13] 1036     ld a, (level_obstacles)
   5EF0 FE 09         [ 7] 1037     cp #0x09               ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5EF2 C8            [11] 1038     ret z
   5EF3 3E 95         [ 7] 1039         ld a, #0x95
   5EF5 CD 3C 46      [17] 1040         call set_y_last_obstacle     
   5EF8 CD 97 46      [17] 1041         call generar1entidad
   5EFB C9            [10] 1042         ret
                           1043 
   5EFC                    1044     comprobarEntidades9lvl29:
   5EFC 3A 6C 47      [13] 1045     ld a, (level_obstacles)
   5EFF FE 0B         [ 7] 1046     cp #0x0B               ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5F01 C8            [11] 1047     ret z    
   5F02 3E 76         [ 7] 1048         ld a, #0x76
   5F04 CD 54 46      [17] 1049         call set_y_ghost
   5F07 CD BB 46      [17] 1050         call generar1entidadGhost
                           1051         
   5F0A 3E B4         [ 7] 1052         ld a, #0xB4
   5F0C CD 54 46      [17] 1053         call set_y_ghost
   5F0F CD BB 46      [17] 1054         call generar1entidadGhost
   5F12 C9            [10] 1055         ret
                           1056     
                           1057     
                           1058 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                           1059 ;;
                           1060 ;;
                           1061 ;;  NIVEL 30 (FUEGUITO)
                           1062 ;;
                           1063 ;;
                           1064 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



   5F13                    1065 man_game_controller_lvl_30::
   5F13 3A 6E 60      [13] 1066     ld a, (_level_seconds)  
   5F16 FE 01         [ 7] 1067     cp #0x01                      
   5F18 28 1F         [12] 1068     jr z, comprobarEntidades1lvl30
   5F1A FE 03         [ 7] 1069     cp #0x03
   5F1C 28 32         [12] 1070     jr z, comprobarEntidades2lvl30
   5F1E FE 06         [ 7] 1071     cp #0x06                                
   5F20 28 3D         [12] 1072     jr z, comprobarEntidades3lvl30
   5F22 FE 0A         [ 7] 1073     cp #0x0A
   5F24 28 50         [12] 1074     jr z, comprobarEntidades4lvl30
   5F26 FE 0E         [ 7] 1075     cp #0x0E
   5F28 28 63         [12] 1076     jr z, comprobarEntidades5lvl30
   5F2A FE 12         [ 7] 1077     cp #0x12
   5F2C 28 6E         [12] 1078     jr z, comprobarEntidades6lvl30
   5F2E FE 16         [ 7] 1079     cp #0x16
   5F30 CA B3 5F      [10] 1080     jp z, comprobarEntidades7lvl30
   5F33 FE 19         [ 7] 1081     cp #0x19
   5F35 CA CA 5F      [10] 1082     jp z, comprobarEntidades8lvl30
   5F38 C9            [10] 1083     ret
                           1084     
   5F39                    1085     comprobarEntidades1lvl30:
   5F39 3A 6C 47      [13] 1086     ld a, (level_obstacles)
   5F3C FE 02         [ 7] 1087     cp #0x02               ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5F3E C8            [11] 1088     ret z
   5F3F 3E 76         [ 7] 1089         ld a, #0x76
   5F41 CD 3C 46      [17] 1090         call set_y_last_obstacle     
   5F44 CD 97 46      [17] 1091         call generar1entidad
                           1092         
   5F47 3E B4         [ 7] 1093         ld a, #0xB4
   5F49 CD 3C 46      [17] 1094         call set_y_last_obstacle     
   5F4C CD 97 46      [17] 1095         call generar1entidad
   5F4F C9            [10] 1096         ret
                           1097 
   5F50                    1098     comprobarEntidades2lvl30:
   5F50 3A 6C 47      [13] 1099     ld a, (level_obstacles)
   5F53 FE 03         [ 7] 1100     cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5F55 C8            [11] 1101     ret z
   5F56 3E 8C         [ 7] 1102         ld a, #0x8C
   5F58 CD 3C 46      [17] 1103         call set_y_last_obstacle     
   5F5B CD 97 46      [17] 1104         call generar1entidad
   5F5E C9            [10] 1105         ret
                           1106     
   5F5F                    1107     comprobarEntidades3lvl30:
   5F5F 3A 6C 47      [13] 1108     ld a, (level_obstacles)
   5F62 FE 05         [ 7] 1109     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5F64 C8            [11] 1110     ret z
   5F65 3E 76         [ 7] 1111         ld a, #0x76
   5F67 CD 3C 46      [17] 1112         call set_y_last_obstacle     
   5F6A CD 97 46      [17] 1113         call generar1entidad
                           1114         
   5F6D 3E B4         [ 7] 1115         ld a, #0xB4
   5F6F CD 3C 46      [17] 1116         call set_y_last_obstacle     
   5F72 CD 97 46      [17] 1117         call generar1entidad
   5F75 C9            [10] 1118         ret
                           1119 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   5F76                    1120     comprobarEntidades4lvl30:
   5F76 3A 6C 47      [13] 1121     ld a, (level_obstacles)
   5F79 FE 07         [ 7] 1122     cp #0x07               ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5F7B C8            [11] 1123     ret z
   5F7C 3E 76         [ 7] 1124         ld a, #0x76
   5F7E CD 54 46      [17] 1125         call set_y_ghost
   5F81 CD BB 46      [17] 1126         call generar1entidadGhost
                           1127     
   5F84 3E B4         [ 7] 1128         ld a, #0xB4
   5F86 CD 54 46      [17] 1129         call set_y_ghost
   5F89 CD BB 46      [17] 1130         call generar1entidadGhost
   5F8C C9            [10] 1131         ret
                           1132     
   5F8D                    1133     comprobarEntidades5lvl30:
   5F8D 3A 6C 47      [13] 1134     ld a, (level_obstacles)
   5F90 FE 08         [ 7] 1135     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5F92 C8            [11] 1136     ret z
   5F93 3E B4         [ 7] 1137         ld a, #0xB4
   5F95 CD 54 46      [17] 1138         call set_y_ghost
   5F98 CD BB 46      [17] 1139         call generar1entidadGhost
   5F9B C9            [10] 1140         ret
                           1141 
   5F9C                    1142     comprobarEntidades6lvl30:
   5F9C 3A 6C 47      [13] 1143     ld a, (level_obstacles)
   5F9F FE 0A         [ 7] 1144     cp #0x0A               ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5FA1 C8            [11] 1145     ret z
   5FA2 3E 76         [ 7] 1146         ld a, #0x76
   5FA4 CD 54 46      [17] 1147         call set_y_ghost
   5FA7 CD BB 46      [17] 1148         call generar1entidadGhost
                           1149         
   5FAA 3E B4         [ 7] 1150         ld a, #0xB4
   5FAC CD 54 46      [17] 1151         call set_y_ghost
   5FAF CD BB 46      [17] 1152         call generar1entidadGhost
   5FB2 C9            [10] 1153         ret
   5FB3                    1154     comprobarEntidades7lvl30:
   5FB3 3A 6C 47      [13] 1155     ld a, (level_obstacles)
   5FB6 FE 0C         [ 7] 1156     cp #0x0C               ;; Si ya tengo 12 entidades no compruebo ninguna mas
   5FB8 C8            [11] 1157     ret z
   5FB9 3E 76         [ 7] 1158         ld a, #0x76
   5FBB CD 54 46      [17] 1159         call set_y_ghost
   5FBE CD BB 46      [17] 1160         call generar1entidadGhost
                           1161         
   5FC1 3E B4         [ 7] 1162         ld a, #0xB4
   5FC3 CD 54 46      [17] 1163         call set_y_ghost
   5FC6 CD BB 46      [17] 1164         call generar1entidadGhost
   5FC9 C9            [10] 1165         ret
                           1166 
   5FCA                    1167     comprobarEntidades8lvl30:
   5FCA 3A 6C 47      [13] 1168     ld a, (level_obstacles)
   5FCD FE 0D         [ 7] 1169     cp #0x0D               ;; Si ya tengo 13 entidades no compruebo ninguna mas
   5FCF C8            [11] 1170     ret z
   5FD0 3E B4         [ 7] 1171         ld a, #0xB4
   5FD2 CD 3C 46      [17] 1172         call set_y_last_obstacle     
   5FD5 CD 97 46      [17] 1173         call generar1entidad
   5FD8 C9            [10] 1174         ret
