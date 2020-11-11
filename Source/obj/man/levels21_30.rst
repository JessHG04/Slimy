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
   5856                      28 man_game_controller_lvl_21::
   5856 3A 46 60      [13]   29     ld a, (_level_seconds)  
   5859 FE 01         [ 7]   30     cp #0x01                      
   585B 28 15         [12]   31     jr z, comprobarEntidades1lvl21
   585D FE 05         [ 7]   32     cp #0x05
   585F 28 20         [12]   33     jr z, comprobarEntidades2lvl21
   5861 FE 0A         [ 7]   34     cp #0x0A                                
   5863 28 2B         [12]   35     jr z, comprobarEntidades3lvl21
   5865 FE 0D         [ 7]   36     cp #0x0D
   5867 28 36         [12]   37     jr z, comprobarEntidades4lvl21
   5869 FE 13         [ 7]   38     cp #0x13
   586B 28 41         [12]   39     jr z, comprobarEntidades5lvl21
   586D FE 18         [ 7]   40     cp #0x18
   586F 28 4C         [12]   41     jr z, comprobarEntidades6lvl21
   5871 C9            [10]   42     ret
                             43 
   5872                      44     comprobarEntidades1lvl21:
   5872 3A 44 47      [13]   45     ld a, (level_obstacles)
   5875 FE 01         [ 7]   46     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5877 C8            [11]   47     ret z
   5878 3E B4         [ 7]   48         ld a, #0xB4
   587A CD 14 46      [17]   49         call set_y_last_obstacle
   587D CD 6F 46      [17]   50         call generar1entidad    
   5880 C9            [10]   51         ret
                             52 
   5881                      53     comprobarEntidades2lvl21:
   5881 3A 44 47      [13]   54     ld a, (level_obstacles)
   5884 FE 02         [ 7]   55     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5886 C8            [11]   56     ret z
   5887 3E 76         [ 7]   57         ld a, #0x76
   5889 CD 34 46      [17]   58         call set_y_bigobstacle
   588C CD A5 46      [17]   59         call generar1entidadBig
   588F C9            [10]   60         ret
                             61 
   5890                      62     comprobarEntidades3lvl21:
   5890 3A 44 47      [13]   63     ld a, (level_obstacles)
   5893 FE 03         [ 7]   64     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5895 C8            [11]   65     ret z
   5896 3E AC         [ 7]   66         ld a, #0xAC
   5898 CD 24 46      [17]   67         call set_y_wave
   589B CD 81 46      [17]   68         call generar1entidadWave
   589E C9            [10]   69         ret
                             70 
   589F                      71     comprobarEntidades4lvl21:
   589F 3A 44 47      [13]   72     ld a, (level_obstacles)
   58A2 FE 04         [ 7]   73     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   58A4 C8            [11]   74     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   58A5 3E 76         [ 7]   75         ld a, #0x76
   58A7 CD 2C 46      [17]   76         call set_y_ghost
   58AA CD 93 46      [17]   77         call generar1entidadGhost
   58AD C9            [10]   78         ret        
                             79  
   58AE                      80     comprobarEntidades5lvl21:
   58AE 3A 44 47      [13]   81     ld a, (level_obstacles)
   58B1 FE 05         [ 7]   82     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   58B3 C8            [11]   83     ret z
   58B4 3E B4         [ 7]   84         ld a, #0xB4
   58B6 CD 14 46      [17]   85         call set_y_last_obstacle     
   58B9 CD 6F 46      [17]   86         call generar1entidad
   58BC C9            [10]   87         ret        
                             88 
   58BD                      89     comprobarEntidades6lvl21:
   58BD 3A 44 47      [13]   90     ld a, (level_obstacles)
   58C0 FE 06         [ 7]   91     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   58C2 C8            [11]   92     ret z
   58C3 3E 76         [ 7]   93         ld a, #0x76
   58C5 CD 14 46      [17]   94         call set_y_last_obstacle     
   58C8 CD 6F 46      [17]   95         call generar1entidad
   58CB C9            [10]   96         ret  
                             97  
                             98 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             99 ;;
                            100 ;;
                            101 ;;  NIVEL 22 (FUEGUITO)
                            102 ;;
                            103 ;;
                            104 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   58CC                     105 man_game_controller_lvl_22::
   58CC 3A 46 60      [13]  106     ld a, (_level_seconds)  
   58CF FE 01         [ 7]  107     cp #0x01                      
   58D1 28 1D         [12]  108     jr z, comprobarEntidades1lvl22
   58D3 FE 03         [ 7]  109     cp #0x03
   58D5 28 28         [12]  110     jr z, comprobarEntidades2lvl22
   58D7 FE 07         [ 7]  111     cp #0x07                             
   58D9 28 33         [12]  112     jr z, comprobarEntidades3lvl22
   58DB FE 09         [ 7]  113     cp #0x09
   58DD 28 3E         [12]  114     jr z, comprobarEntidades4lvl22
   58DF FE 0C         [ 7]  115     cp #0x0C
   58E1 28 49         [12]  116     jr z, comprobarEntidades5lvl22
   58E3 FE 0F         [ 7]  117     cp #0x0F
   58E5 28 54         [12]  118     jr z, comprobarEntidades6lvl22
   58E7 FE 14         [ 7]  119     cp #0x14
   58E9 28 5F         [12]  120     jr z, comprobarEntidades7lvl22
   58EB FE 18         [ 7]  121     cp #0x18
   58ED 28 72         [12]  122     jr z, comprobarEntidades8lvl22
   58EF C9            [10]  123     ret
                            124 
   58F0                     125     comprobarEntidades1lvl22:
   58F0 3A 44 47      [13]  126     ld a, (level_obstacles)
   58F3 FE 01         [ 7]  127     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   58F5 C8            [11]  128     ret z
   58F6 3E B4         [ 7]  129         ld a, #0xB4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   58F8 CD 2C 46      [17]  130         call  set_y_ghost
   58FB CD 93 46      [17]  131         call  generar1entidadGhost
   58FE C9            [10]  132         ret
                            133 
   58FF                     134     comprobarEntidades2lvl22:
   58FF 3A 44 47      [13]  135     ld a, (level_obstacles)
   5902 FE 02         [ 7]  136     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5904 C8            [11]  137     ret z
   5905 3E 98         [ 7]  138         ld a, #0x98
   5907 CD 34 46      [17]  139         call set_y_bigobstacle
   590A CD A5 46      [17]  140         call generar1entidadBig
   590D C9            [10]  141         ret
                            142 
   590E                     143     comprobarEntidades3lvl22:
   590E 3A 44 47      [13]  144     ld a, (level_obstacles)
   5911 FE 03         [ 7]  145     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5913 C8            [11]  146     ret z
   5914 3E 76         [ 7]  147         ld a, #0x76
   5916 CD 14 46      [17]  148         call set_y_last_obstacle     
   5919 CD 6F 46      [17]  149         call generar1entidad
   591C C9            [10]  150         ret
                            151 
   591D                     152     comprobarEntidades4lvl22:
   591D 3A 44 47      [13]  153     ld a, (level_obstacles)
   5920 FE 04         [ 7]  154     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5922 C8            [11]  155     ret z
   5923 3E B4         [ 7]  156         ld a, #0xB4
   5925 CD 14 46      [17]  157         call set_y_last_obstacle     
   5928 CD 6F 46      [17]  158         call generar1entidad       
   592B C9            [10]  159         ret   
                            160 
   592C                     161     comprobarEntidades5lvl22:
   592C 3A 44 47      [13]  162     ld a, (level_obstacles)
   592F FE 05         [ 7]  163     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5931 C8            [11]  164     ret z
   5932 3E 76         [ 7]  165         ld a, #0x76
   5934 CD 2C 46      [17]  166         call set_y_ghost
   5937 CD 93 46      [17]  167         call  generar1entidadGhost
   593A C9            [10]  168         ret
                            169 
   593B                     170     comprobarEntidades6lvl22:
   593B 3A 44 47      [13]  171     ld a, (level_obstacles)
   593E FE 06         [ 7]  172     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5940 C8            [11]  173     ret z
   5941 3E B4         [ 7]  174         ld a, #0xB4
   5943 CD 2C 46      [17]  175         call set_y_ghost
   5946 CD 93 46      [17]  176         call  generar1entidadGhost
   5949 C9            [10]  177         ret
                            178 
   594A                     179     comprobarEntidades7lvl22:
   594A 3A 44 47      [13]  180     ld a, (level_obstacles)
   594D FE 08         [ 7]  181     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   594F C8            [11]  182     ret z
   5950 3E 76         [ 7]  183         ld a, #0x76
   5952 CD 14 46      [17]  184         call set_y_last_obstacle
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   5955 CD 6F 46      [17]  185         call generar1entidad
   5958 3E B4         [ 7]  186         ld a, #0xB4
   595A CD 14 46      [17]  187         call set_y_last_obstacle
   595D CD 6F 46      [17]  188         call generar1entidad
   5960 C9            [10]  189         ret
                            190 
   5961                     191     comprobarEntidades8lvl22:
   5961 3A 44 47      [13]  192     ld a, (level_obstacles)
   5964 FE 09         [ 7]  193     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5966 C8            [11]  194     ret z
   5967 3E 98         [ 7]  195         ld a, #0x98
   5969 CD 34 46      [17]  196         call set_y_bigobstacle
   596C CD A5 46      [17]  197         call generar1entidadBig
   596F C9            [10]  198         ret
                            199 
                            200 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            201 ;;
                            202 ;;
                            203 ;;  NIVEL 23 (FUEGUITO)
                            204 ;;
                            205 ;;
                            206 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5970                     207 man_game_controller_lvl_23::
   5970 3A 46 60      [13]  208     ld a, (_level_seconds)  
   5973 FE 01         [ 7]  209     cp #0x01                      
   5975 28 1D         [12]  210     jr z, comprobarEntidades1lvl23
   5977 FE 04         [ 7]  211     cp #0x04
   5979 28 28         [12]  212     jr z, comprobarEntidades2lvl23
   597B FE 06         [ 7]  213     cp #0x06
   597D 28 33         [12]  214     jr z, comprobarEntidades3lvl23
   597F FE 0A         [ 7]  215     cp #0x0A
   5981 28 40         [12]  216     jr z, comprobarEntidades4lvl23
   5983 FE 0C         [ 7]  217     cp #0x0C
   5985 28 4B         [12]  218     jr z, comprobarEntidades5lvl23
   5987 FE 10         [ 7]  219     cp #0x10
   5989 28 56         [12]  220     jr z, comprobarEntidades6lvl23
   598B FE 13         [ 7]  221     cp #0x13
   598D 28 61         [12]  222     jr z, comprobarEntidades7lvl23
   598F FE 15         [ 7]  223     cp #0x15
   5991 28 6C         [12]  224     jr z, comprobarEntidades8lvl23
   5993 C9            [10]  225     ret
                            226 
   5994                     227     comprobarEntidades1lvl23:
   5994 3A 44 47      [13]  228     ld a, (level_obstacles)
   5997 FE 01         [ 7]  229     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5999 C8            [11]  230     ret z
   599A 3E 88         [ 7]  231         ld a, #0x88
   599C CD 34 46      [17]  232         call set_y_bigobstacle
   599F CD A5 46      [17]  233         call generar1entidadBig
   59A2 C9            [10]  234         ret
                            235     
   59A3                     236     comprobarEntidades2lvl23:
   59A3 3A 44 47      [13]  237     ld a, (level_obstacles)
   59A6 FE 02         [ 7]  238     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   59A8 C8            [11]  239     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   59A9 3E B4         [ 7]  240         ld a, #0xB4
   59AB CD 14 46      [17]  241         call set_y_last_obstacle
   59AE CD 6F 46      [17]  242         call generar1entidad   
   59B1 C9            [10]  243         ret
                            244 
   59B2                     245     comprobarEntidades3lvl23:
   59B2 3A 44 47      [13]  246     ld a, (level_obstacles)
   59B5 FE 03         [ 7]  247     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   59B7 C8            [11]  248     ret z
   59B8 3E B4         [ 7]  249     ld a, #0xB4
   59BA 3E 76         [ 7]  250         ld a, #0x76
   59BC CD 14 46      [17]  251         call set_y_last_obstacle
   59BF CD 6F 46      [17]  252         call generar1entidad
   59C2 C9            [10]  253         ret
                            254 
   59C3                     255     comprobarEntidades4lvl23:
   59C3 3A 44 47      [13]  256     ld a, (level_obstacles)
   59C6 FE 04         [ 7]  257     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   59C8 C8            [11]  258     ret z
   59C9 3E B4         [ 7]  259         ld a, #0xB4
   59CB CD 2C 46      [17]  260         call set_y_ghost
   59CE CD 93 46      [17]  261         call  generar1entidadGhost
   59D1 C9            [10]  262         ret        
                            263 
   59D2                     264     comprobarEntidades5lvl23:
   59D2 3A 44 47      [13]  265     ld a, (level_obstacles)
   59D5 FE 05         [ 7]  266     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   59D7 C8            [11]  267     ret z
   59D8 3E B4         [ 7]  268         ld a, #0xB4
   59DA CD 2C 46      [17]  269         call set_y_ghost
   59DD CD 93 46      [17]  270         call  generar1entidadGhost
   59E0 C9            [10]  271         ret  
                            272     
   59E1                     273     comprobarEntidades6lvl23:
   59E1 3A 44 47      [13]  274     ld a, (level_obstacles)
   59E4 FE 06         [ 7]  275     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   59E6 C8            [11]  276     ret z
   59E7 3E 76         [ 7]  277         ld a, #0x76
   59E9 CD 34 46      [17]  278         call set_y_bigobstacle
   59EC CD A5 46      [17]  279         call generar1entidadBig
   59EF C9            [10]  280         ret
                            281 
   59F0                     282     comprobarEntidades7lvl23:
   59F0 3A 44 47      [13]  283     ld a, (level_obstacles)
   59F3 FE 07         [ 7]  284     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   59F5 C8            [11]  285     ret z
   59F6 3E B4         [ 7]  286         ld a, #0xB4
   59F8 CD 14 46      [17]  287         call set_y_last_obstacle
   59FB CD 6F 46      [17]  288         call generar1entidad
   59FE C9            [10]  289         ret  
                            290     
   59FF                     291     comprobarEntidades8lvl23:
   59FF 3A 44 47      [13]  292     ld a, (level_obstacles)
   5A02 FE 08         [ 7]  293     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5A04 C8            [11]  294     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   5A05 3E 96         [ 7]  295         ld a, #0x96
   5A07 CD 34 46      [17]  296         call set_y_bigobstacle
   5A0A CD A5 46      [17]  297         call generar1entidadBig
   5A0D C9            [10]  298         ret  
                            299 
                            300 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            301 ;;
                            302 ;;
                            303 ;;  NIVEL 24 (FUEGUITO)
                            304 ;;
                            305 ;;
                            306 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5A0E                     307 man_game_controller_lvl_24::
   5A0E 3A 46 60      [13]  308     ld a, (_level_seconds)  
   5A11 FE 01         [ 7]  309     cp #0x01                      
   5A13 28 29         [12]  310     jr z, comprobarEntidades1lvl24
   5A15 FE 03         [ 7]  311     cp #0x03
   5A17 28 34         [12]  312     jr z, comprobarEntidades2lvl24
   5A19 FE 06         [ 7]  313     cp #0x06                 
   5A1B 28 3F         [12]  314     jr z, comprobarEntidades3lvl24
   5A1D FE 0A         [ 7]  315     cp #0x0A
   5A1F 28 4A         [12]  316     jr z, comprobarEntidades4lvl24
   5A21 FE 0B         [ 7]  317     cp #0x0B
   5A23 28 55         [12]  318     jr z, comprobarEntidades5lvl24
   5A25 FE 0E         [ 7]  319     cp #0x0E
   5A27 28 60         [12]  320     jr z, comprobarEntidades6lvl24
   5A29 FE 12         [ 7]  321     cp #0x12
   5A2B CA 98 5A      [10]  322     jp z, comprobarEntidades7lvl24
   5A2E FE 16         [ 7]  323     cp #0x16
   5A30 CA A7 5A      [10]  324     jp z, comprobarEntidades8lvl24
   5A33 FE 17         [ 7]  325     cp #0x17
   5A35 CA B6 5A      [10]  326     jp z, comprobarEntidades9lvl24
   5A38 FE 1A         [ 7]  327     cp #0x1A
   5A3A CA C5 5A      [10]  328     jp z, comprobarEntidades10lvl24
   5A3D C9            [10]  329     ret
                            330 
   5A3E                     331     comprobarEntidades1lvl24:
   5A3E 3A 44 47      [13]  332     ld a, (level_obstacles)
   5A41 FE 01         [ 7]  333     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5A43 C8            [11]  334     ret z
   5A44 3E B4         [ 7]  335         ld a, #0xB4
   5A46 CD 14 46      [17]  336         call set_y_last_obstacle
   5A49 CD 6F 46      [17]  337         call generar1entidad
   5A4C C9            [10]  338         ret
                            339 
   5A4D                     340     comprobarEntidades2lvl24:
   5A4D 3A 44 47      [13]  341     ld a, (level_obstacles)
   5A50 FE 02         [ 7]  342     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5A52 C8            [11]  343     ret z
   5A53 3E 76         [ 7]  344         ld a, #0x76
   5A55 CD 14 46      [17]  345         call set_y_last_obstacle
   5A58 CD 6F 46      [17]  346         call generar1entidad
   5A5B C9            [10]  347         ret
                            348 
   5A5C                     349     comprobarEntidades3lvl24:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   5A5C 3A 44 47      [13]  350     ld a, (level_obstacles)
   5A5F FE 03         [ 7]  351     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5A61 C8            [11]  352     ret z
   5A62 3E 76         [ 7]  353         ld a, #0x76
   5A64 CD 2C 46      [17]  354         call set_y_ghost
   5A67 CD 93 46      [17]  355         call generar1entidadGhost
   5A6A C9            [10]  356         ret        
                            357 
   5A6B                     358     comprobarEntidades4lvl24:
   5A6B 3A 44 47      [13]  359     ld a, (level_obstacles)
   5A6E FE 04         [ 7]  360     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5A70 C8            [11]  361     ret z
   5A71 3E B4         [ 7]  362         ld a, #0xB4
   5A73 CD 14 46      [17]  363         call set_y_last_obstacle
   5A76 CD 6F 46      [17]  364         call generar1entidad
   5A79 C9            [10]  365         ret
                            366 
   5A7A                     367     comprobarEntidades5lvl24:
   5A7A 3A 44 47      [13]  368     ld a, (level_obstacles)
   5A7D FE 05         [ 7]  369     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5A7F C8            [11]  370     ret z
   5A80 3E 76         [ 7]  371         ld a, #0x76
   5A82 CD 14 46      [17]  372         call set_y_last_obstacle
   5A85 CD 6F 46      [17]  373         call generar1entidad
   5A88 C9            [10]  374         ret
                            375 
   5A89                     376     comprobarEntidades6lvl24:
   5A89 3A 44 47      [13]  377     ld a, (level_obstacles)
   5A8C FE 06         [ 7]  378     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5A8E C8            [11]  379     ret z
   5A8F 3E 76         [ 7]  380         ld a, #0x76
   5A91 CD 2C 46      [17]  381         call set_y_ghost
   5A94 CD 93 46      [17]  382         call generar1entidadGhost
   5A97 C9            [10]  383         ret
                            384 
   5A98                     385     comprobarEntidades7lvl24:
   5A98 3A 44 47      [13]  386     ld a, (level_obstacles)
   5A9B FE 07         [ 7]  387     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5A9D C8            [11]  388     ret z
   5A9E 3E 98         [ 7]  389         ld a, #0x98
   5AA0 CD 34 46      [17]  390         call set_y_bigobstacle
   5AA3 CD A5 46      [17]  391         call generar1entidadBig
   5AA6 C9            [10]  392         ret      
                            393 
   5AA7                     394     comprobarEntidades8lvl24:
   5AA7 3A 44 47      [13]  395     ld a, (level_obstacles)
   5AAA FE 08         [ 7]  396     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5AAC C8            [11]  397     ret z
   5AAD 3E B4         [ 7]  398         ld a, #0xB4
   5AAF CD 14 46      [17]  399         call set_y_last_obstacle
   5AB2 CD 6F 46      [17]  400         call generar1entidad
   5AB5 C9            [10]  401         ret
                            402     
   5AB6                     403     comprobarEntidades9lvl24:
   5AB6 3A 44 47      [13]  404     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   5AB9 FE 09         [ 7]  405     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5ABB C8            [11]  406     ret z
   5ABC 3E 76         [ 7]  407         ld a, #0x76
   5ABE CD 14 46      [17]  408         call set_y_last_obstacle
   5AC1 CD 6F 46      [17]  409         call generar1entidad
   5AC4 C9            [10]  410         ret
                            411 
   5AC5                     412     comprobarEntidades10lvl24:
   5AC5 3A 44 47      [13]  413     ld a, (level_obstacles)
   5AC8 FE 0A         [ 7]  414     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5ACA C8            [11]  415     ret z
   5ACB 3E B4         [ 7]  416         ld a, #0xB4
   5ACD CD 2C 46      [17]  417         call set_y_ghost
   5AD0 CD 93 46      [17]  418         call generar1entidadGhost
   5AD3 C9            [10]  419         ret
                            420 
                            421 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            422 ;;
                            423 ;;
                            424 ;;  NIVEL 25 (FUEGUITO)
                            425 ;;
                            426 ;;
                            427 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5AD4                     428 man_game_controller_lvl_25::
   5AD4 3A 46 60      [13]  429     ld a, (_level_seconds)  
   5AD7 FE 01         [ 7]  430     cp #0x01                      
   5AD9 28 22         [12]  431     jr z, comprobarEntidades1lvl25
   5ADB FE 03         [ 7]  432     cp #0x03
   5ADD 28 2D         [12]  433     jr z, comprobarEntidades2lvl25
   5ADF FE 07         [ 7]  434     cp #0x07                        
   5AE1 28 38         [12]  435     jr z, comprobarEntidades3lvl25
   5AE3 FE 09         [ 7]  436     cp #0x09
   5AE5 28 43         [12]  437     jr z, comprobarEntidades4lvl25
   5AE7 FE 0A         [ 7]  438     cp #0x0A
   5AE9 28 4E         [12]  439     jr z, comprobarEntidades5lvl25
   5AEB FE 0E         [ 7]  440     cp #0x0E
   5AED 28 59         [12]  441     jr z, comprobarEntidades6lvl25
   5AEF FE 12         [ 7]  442     cp #0x12
   5AF1 28 6C         [12]  443     jr z, comprobarEntidades7lvl25
   5AF3 FE 16         [ 7]  444     cp #0x16
   5AF5 28 7F         [12]  445     jr z, comprobarEntidades8lvl25
   5AF7 FE 18         [ 7]  446     cp #0x18
   5AF9 CA 85 5B      [10]  447     jp z, comprobarEntidades9lvl25
   5AFC C9            [10]  448     ret
                            449 
   5AFD                     450     comprobarEntidades1lvl25:
   5AFD 3A 44 47      [13]  451     ld a, (level_obstacles)
   5B00 FE 01         [ 7]  452     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5B02 C8            [11]  453     ret z
   5B03 3E 76         [ 7]  454         ld a, #0x76
   5B05 CD 14 46      [17]  455         call set_y_last_obstacle     
   5B08 CD 6F 46      [17]  456         call generar1entidad
   5B0B C9            [10]  457         ret
                            458     
   5B0C                     459     comprobarEntidades2lvl25:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   5B0C 3A 44 47      [13]  460     ld a, (level_obstacles)
   5B0F FE 02         [ 7]  461     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5B11 C8            [11]  462     ret z
   5B12 3E AC         [ 7]  463         ld a, #0xAC
   5B14 CD 24 46      [17]  464         call set_y_wave
   5B17 CD 81 46      [17]  465         call generar1entidadWave
   5B1A C9            [10]  466         ret
                            467     
   5B1B                     468     comprobarEntidades3lvl25:
   5B1B 3A 44 47      [13]  469     ld a, (level_obstacles)
   5B1E FE 03         [ 7]  470     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5B20 C8            [11]  471     ret z
   5B21 3E 76         [ 7]  472         ld a, #0x76
   5B23 CD 14 46      [17]  473         call set_y_last_obstacle     
   5B26 CD 6F 46      [17]  474         call generar1entidad
   5B29 C9            [10]  475         ret
                            476     
   5B2A                     477     comprobarEntidades4lvl25:
   5B2A 3A 44 47      [13]  478     ld a, (level_obstacles)
   5B2D FE 04         [ 7]  479     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5B2F C8            [11]  480     ret z
   5B30 3E B4         [ 7]  481         ld a, #0xB4
   5B32 CD 14 46      [17]  482         call set_y_last_obstacle     
   5B35 CD 6F 46      [17]  483         call generar1entidad
   5B38 C9            [10]  484         ret
                            485     
   5B39                     486     comprobarEntidades5lvl25:
   5B39 3A 44 47      [13]  487     ld a, (level_obstacles)
   5B3C FE 05         [ 7]  488     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5B3E C8            [11]  489     ret z
   5B3F 3E 76         [ 7]  490         ld a, #0x76
   5B41 CD 14 46      [17]  491         call set_y_last_obstacle     
   5B44 CD 6F 46      [17]  492         call generar1entidad
   5B47 C9            [10]  493         ret
                            494 
   5B48                     495     comprobarEntidades6lvl25:
   5B48 3A 44 47      [13]  496     ld a, (level_obstacles)
   5B4B FE 07         [ 7]  497     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5B4D C8            [11]  498     ret z
   5B4E 3E 76         [ 7]  499         ld a, #0x76
   5B50 CD 2C 46      [17]  500         call set_y_ghost
   5B53 CD 93 46      [17]  501         call generar1entidadGhost
                            502         
   5B56 3E B4         [ 7]  503         ld a, #0xB4
   5B58 CD 2C 46      [17]  504         call set_y_ghost
   5B5B CD 93 46      [17]  505         call generar1entidadGhost
   5B5E C9            [10]  506         ret
                            507     
   5B5F                     508     comprobarEntidades7lvl25:
   5B5F 3A 44 47      [13]  509     ld a, (level_obstacles)
   5B62 FE 09         [ 7]  510     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5B64 C8            [11]  511     ret z
   5B65 3E 76         [ 7]  512         ld a, #0x76
   5B67 CD 14 46      [17]  513         call set_y_last_obstacle
   5B6A CD 6F 46      [17]  514         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



                            515         
   5B6D 3E B4         [ 7]  516         ld a, #0xB4
   5B6F CD 14 46      [17]  517         call set_y_last_obstacle
   5B72 CD 6F 46      [17]  518         call generar1entidad
   5B75 C9            [10]  519         ret
                            520 
   5B76                     521     comprobarEntidades8lvl25:
   5B76 3A 44 47      [13]  522     ld a, (level_obstacles)
   5B79 FE 0A         [ 7]  523     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5B7B C8            [11]  524     ret z        
   5B7C 3E B4         [ 7]  525         ld a, #0xB4
   5B7E CD 2C 46      [17]  526         call set_y_ghost
   5B81 CD 93 46      [17]  527         call generar1entidadGhost
   5B84 C9            [10]  528         ret
                            529 
   5B85                     530     comprobarEntidades9lvl25:
   5B85 3A 44 47      [13]  531     ld a, (level_obstacles)
   5B88 FE 0B         [ 7]  532     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5B8A C8            [11]  533     ret z        
   5B8B 3E 76         [ 7]  534         ld a, #0x76
   5B8D CD 2C 46      [17]  535         call set_y_ghost
   5B90 CD 93 46      [17]  536         call generar1entidadGhost
   5B93 C9            [10]  537         ret
                            538         
                            539 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            540 ;;
                            541 ;;
                            542 ;;  NIVEL 26 (FUEGUITO)
                            543 ;;
                            544 ;;
                            545 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5B94                     546 man_game_controller_lvl_26::
   5B94 3A 46 60      [13]  547     ld a, (_level_seconds)  
   5B97 FE 01         [ 7]  548     cp #0x01         
   5B99 28 2D         [12]  549     jr z, comprobarEntidades1lvl26
   5B9B FE 02         [ 7]  550     cp #0x02
   5B9D 28 38         [12]  551     jr z, comprobarEntidades2lvl26
   5B9F FE 07         [ 7]  552     cp #0x07             
   5BA1 28 43         [12]  553     jr z, comprobarEntidades3lvl26
   5BA3 FE 08         [ 7]  554     cp #0x08
   5BA5 28 56         [12]  555     jr z, comprobarEntidades4lvl26
   5BA7 FE 0B         [ 7]  556     cp #0x0B
   5BA9 28 61         [12]  557     jr z, comprobarEntidades5lvl26
   5BAB FE 0C         [ 7]  558     cp #0x0C
   5BAD 28 6C         [12]  559     jr z, comprobarEntidades6lvl26
   5BAF FE 10         [ 7]  560     cp #0x10
   5BB1 28 77         [12]  561     jr z, comprobarEntidades7lvl26
   5BB3 FE 12         [ 7]  562     cp #0x12
   5BB5 CA 39 5C      [10]  563     jp z, comprobarEntidades8lvl26
   5BB8 FE 14         [ 7]  564     cp #0x14
   5BBA CA 48 5C      [10]  565     jp z, comprobarEntidades9lvl26
   5BBD FE 16         [ 7]  566     cp #0x16
   5BBF CA 57 5C      [10]  567     jp z, comprobarEntidades10lvl26
   5BC2 FE 18         [ 7]  568     cp #0x18
   5BC4 CA 66 5C      [10]  569     jp z, comprobarEntidades11lvl26
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   5BC7 C9            [10]  570     ret
                            571 
   5BC8                     572     comprobarEntidades1lvl26:
   5BC8 3A 44 47      [13]  573     ld a, (level_obstacles)
   5BCB FE 01         [ 7]  574     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5BCD C8            [11]  575     ret z
   5BCE 3E B4         [ 7]  576         ld a, #0xB4
   5BD0 CD 14 46      [17]  577         call  set_y_last_obstacle
   5BD3 CD 6F 46      [17]  578         call  generar1entidad
   5BD6 C9            [10]  579         ret
                            580     
   5BD7                     581     comprobarEntidades2lvl26:
   5BD7 3A 44 47      [13]  582     ld a, (level_obstacles)
   5BDA FE 02         [ 7]  583     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5BDC C8            [11]  584     ret z
   5BDD 3E 76         [ 7]  585         ld a, #0x76
   5BDF CD 2C 46      [17]  586         call  set_y_ghost
   5BE2 CD 93 46      [17]  587         call  generar1entidadGhost
   5BE5 C9            [10]  588         ret
                            589     
   5BE6                     590     comprobarEntidades3lvl26:
   5BE6 3A 44 47      [13]  591     ld a, (level_obstacles)
   5BE9 FE 04         [ 7]  592     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5BEB C8            [11]  593     ret z
   5BEC 3E 76         [ 7]  594         ld a, #0x76
   5BEE CD 14 46      [17]  595         call  set_y_last_obstacle
   5BF1 CD 6F 46      [17]  596         call  generar1entidad
                            597 
   5BF4 3E B4         [ 7]  598         ld a, #0xB4
   5BF6 CD 14 46      [17]  599         call  set_y_last_obstacle
   5BF9 CD 6F 46      [17]  600         call  generar1entidad
   5BFC C9            [10]  601         ret
                            602 
   5BFD                     603     comprobarEntidades4lvl26:
   5BFD 3A 44 47      [13]  604     ld a, (level_obstacles)
   5C00 FE 05         [ 7]  605     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5C02 C8            [11]  606     ret z    
   5C03 3E 95         [ 7]  607         ld a, #0x95
   5C05 CD 14 46      [17]  608         call  set_y_last_obstacle
   5C08 CD 6F 46      [17]  609         call  generar1entidad
   5C0B C9            [10]  610         ret
                            611 
   5C0C                     612     comprobarEntidades5lvl26:
   5C0C 3A 44 47      [13]  613     ld a, (level_obstacles)
   5C0F FE 06         [ 7]  614     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5C11 C8            [11]  615     ret z
   5C12 3E 76         [ 7]  616         ld a, #0x76
   5C14 CD 14 46      [17]  617         call  set_y_last_obstacle
   5C17 CD 6F 46      [17]  618         call  generar1entidad
   5C1A C9            [10]  619         ret        
                            620 
   5C1B                     621     comprobarEntidades6lvl26:
   5C1B 3A 44 47      [13]  622     ld a, (level_obstacles)
   5C1E FE 07         [ 7]  623     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5C20 C8            [11]  624     ret z    
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   5C21 3E 98         [ 7]  625         ld a, #0x98
   5C23 CD 34 46      [17]  626         call  set_y_bigobstacle
   5C26 CD A5 46      [17]  627         call  generar1entidadBig
   5C29 C9            [10]  628         ret
                            629 
   5C2A                     630     comprobarEntidades7lvl26:
   5C2A 3A 44 47      [13]  631     ld a, (level_obstacles)
   5C2D FE 08         [ 7]  632     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5C2F C8            [11]  633     ret z    
   5C30 3E B4         [ 7]  634         ld a, #0xB4
   5C32 CD 2C 46      [17]  635         call  set_y_ghost
   5C35 CD 93 46      [17]  636         call  generar1entidadGhost
   5C38 C9            [10]  637         ret
                            638 
   5C39                     639     comprobarEntidades8lvl26:
   5C39 3A 44 47      [13]  640     ld a, (level_obstacles)
   5C3C FE 09         [ 7]  641     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5C3E C8            [11]  642     ret z    
   5C3F 3E 76         [ 7]  643         ld a, #0x76
   5C41 CD 2C 46      [17]  644         call  set_y_ghost
   5C44 CD 93 46      [17]  645         call  generar1entidadGhost
   5C47 C9            [10]  646         ret
                            647     
   5C48                     648     comprobarEntidades9lvl26:
   5C48 3A 44 47      [13]  649     ld a, (level_obstacles)
   5C4B FE 0A         [ 7]  650     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5C4D C8            [11]  651     ret z    
   5C4E 3E 76         [ 7]  652         ld a, #0x76
   5C50 CD 2C 46      [17]  653         call  set_y_ghost
   5C53 CD 93 46      [17]  654         call  generar1entidadGhost
   5C56 C9            [10]  655         ret
                            656     
   5C57                     657     comprobarEntidades10lvl26:
   5C57 3A 44 47      [13]  658     ld a, (level_obstacles)
   5C5A FE 0B         [ 7]  659     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5C5C C8            [11]  660     ret z    
   5C5D 3E B4         [ 7]  661         ld a, #0xB4
   5C5F CD 2C 46      [17]  662         call  set_y_ghost
   5C62 CD 93 46      [17]  663         call  generar1entidadGhost
   5C65 C9            [10]  664         ret
                            665     
   5C66                     666     comprobarEntidades11lvl26:
   5C66 3A 44 47      [13]  667     ld a, (level_obstacles)
   5C69 FE 0C         [ 7]  668     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   5C6B C8            [11]  669     ret z    
   5C6C 3E B4         [ 7]  670         ld a, #0xB4
   5C6E CD 2C 46      [17]  671         call  set_y_ghost
   5C71 CD 93 46      [17]  672         call  generar1entidadGhost
   5C74 C9            [10]  673         ret
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
   5C75                     682 man_game_controller_lvl_27::
   5C75 3A 46 60      [13]  683     ld a, (_level_seconds)  
   5C78 FE 01         [ 7]  684     cp #0x01                      
   5C7A 28 1E         [12]  685     jr z, comprobarEntidades1lvl27
   5C7C FE 05         [ 7]  686     cp #0x05
   5C7E 28 29         [12]  687     jr z, comprobarEntidades2lvl27
   5C80 FE 09         [ 7]  688     cp #0x09                    
   5C82 28 3C         [12]  689     jr z, comprobarEntidades3lvl27
   5C84 FE 0A         [ 7]  690     cp #0x0A
   5C86 28 47         [12]  691     jr z, comprobarEntidades4lvl27
   5C88 FE 0F         [ 7]  692     cp #0x0F
   5C8A 28 52         [12]  693     jr z, comprobarEntidades5lvl27
   5C8C FE 13         [ 7]  694     cp #0x13
   5C8E 28 6D         [12]  695     jr z, comprobarEntidades6lvl27
   5C90 FE 14         [ 7]  696     cp #0x14
   5C92 28 78         [12]  697     jr z, comprobarEntidades7lvl27
   5C94 FE 18         [ 7]  698     cp #0x18
   5C96 CA 1B 5D      [10]  699     jp z, comprobarEntidades8lvl27
   5C99 C9            [10]  700     ret
                            701 
   5C9A                     702     comprobarEntidades1lvl27:
   5C9A 3A 44 47      [13]  703     ld a, (level_obstacles)
   5C9D FE 01         [ 7]  704     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5C9F C8            [11]  705     ret z
   5CA0 3E 76         [ 7]  706         ld a, #0x76
   5CA2 CD 34 46      [17]  707         call set_y_bigobstacle
   5CA5 CD A5 46      [17]  708         call generar1entidadBig
   5CA8 C9            [10]  709         ret
                            710     
   5CA9                     711     comprobarEntidades2lvl27:
   5CA9 3A 44 47      [13]  712     ld a, (level_obstacles)
   5CAC FE 03         [ 7]  713     cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5CAE C8            [11]  714     ret z
   5CAF 3E 76         [ 7]  715         ld a, #0x76
   5CB1 CD 14 46      [17]  716         call set_y_last_obstacle     
   5CB4 CD 6F 46      [17]  717         call generar1entidad
                            718         
   5CB7 3E B4         [ 7]  719         ld a, #0xB4
   5CB9 CD 14 46      [17]  720         call set_y_last_obstacle     
   5CBC CD 6F 46      [17]  721         call generar1entidad
   5CBF C9            [10]  722         ret
                            723 
   5CC0                     724     comprobarEntidades3lvl27:
   5CC0 3A 44 47      [13]  725     ld a, (level_obstacles)
   5CC3 FE 04         [ 7]  726     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5CC5 C8            [11]  727     ret z
   5CC6 3E 76         [ 7]  728         ld a, #0x76
   5CC8 CD 2C 46      [17]  729         call set_y_ghost
   5CCB CD 93 46      [17]  730         call generar1entidadGhost
   5CCE C9            [10]  731         ret
                            732     
   5CCF                     733     comprobarEntidades4lvl27:
   5CCF 3A 44 47      [13]  734     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   5CD2 FE 05         [ 7]  735     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5CD4 C8            [11]  736     ret z
   5CD5 3E 76         [ 7]  737         ld a, #0x76
   5CD7 CD 2C 46      [17]  738         call set_y_ghost
   5CDA CD 93 46      [17]  739         call generar1entidadGhost
   5CDD C9            [10]  740         ret
                            741     
   5CDE                     742     comprobarEntidades5lvl27:
   5CDE 3A 44 47      [13]  743     ld a, (level_obstacles)
   5CE1 FE 08         [ 7]  744     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5CE3 C8            [11]  745     ret z
   5CE4 3E 76         [ 7]  746         ld a, #0x76
   5CE6 CD 14 46      [17]  747         call set_y_last_obstacle     
   5CE9 CD 6F 46      [17]  748         call generar1entidad
                            749 
   5CEC 3E 85         [ 7]  750         ld a, #0x85
   5CEE CD 14 46      [17]  751         call set_y_last_obstacle     
   5CF1 CD 6F 46      [17]  752         call generar1entidad
                            753         
   5CF4 3E B4         [ 7]  754         ld a, #0xB4
   5CF6 CD 14 46      [17]  755         call set_y_last_obstacle     
   5CF9 CD 6F 46      [17]  756         call generar1entidad
   5CFC C9            [10]  757         ret
                            758     
   5CFD                     759     comprobarEntidades6lvl27:
   5CFD 3A 44 47      [13]  760     ld a, (level_obstacles)
   5D00 FE 09         [ 7]  761     cp #0x09               ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5D02 C8            [11]  762     ret z
   5D03 3E 95         [ 7]  763         ld a, #0x95
   5D05 CD 14 46      [17]  764         call set_y_last_obstacle     
   5D08 CD 6F 46      [17]  765         call generar1entidad
   5D0B C9            [10]  766         ret
                            767 
   5D0C                     768     comprobarEntidades7lvl27:
   5D0C 3A 44 47      [13]  769     ld a, (level_obstacles)
   5D0F FE 0A         [ 7]  770     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5D11 C8            [11]  771     ret z
   5D12 3E 98         [ 7]  772         ld a, #0x98
   5D14 CD 34 46      [17]  773         call set_y_bigobstacle
   5D17 CD A5 46      [17]  774         call generar1entidadBig
   5D1A C9            [10]  775         ret
                            776 
   5D1B                     777     comprobarEntidades8lvl27:
   5D1B 3A 44 47      [13]  778     ld a, (level_obstacles)
   5D1E FE 0B         [ 7]  779     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5D20 C8            [11]  780     ret z
   5D21 3E 76         [ 7]  781         ld a, #0x76
   5D23 CD 2C 46      [17]  782         call set_y_ghost
   5D26 CD 93 46      [17]  783         call generar1entidadGhost
   5D29 C9            [10]  784         ret
                            785 
   5D2A                     786     comprobarEntidades9lvl27:
   5D2A 3A 44 47      [13]  787     ld a, (level_obstacles)
   5D2D FE 0E         [ 7]  788     cp #0x0E               ;; Si ya tengo 14 entidades no compruebo ninguna mas
   5D2F C8            [11]  789     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   5D30 3E 76         [ 7]  790         ld a, #0x76
   5D32 CD 14 46      [17]  791         call set_y_last_obstacle     
   5D35 CD 6F 46      [17]  792         call generar1entidad
                            793 
   5D38 3E 95         [ 7]  794         ld a, #0x95
   5D3A CD 14 46      [17]  795         call set_y_last_obstacle     
   5D3D CD 6F 46      [17]  796         call generar1entidad
                            797         
   5D40 3E A1         [ 7]  798         ld a, #0xA1
   5D42 CD 14 46      [17]  799         call set_y_last_obstacle     
   5D45 CD 6F 46      [17]  800         call generar1entidad
   5D48 C9            [10]  801         ret
                            802     
                            803 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            804 ;;
                            805 ;;
                            806 ;;  NIVEL 28 (FUEGUITO)
                            807 ;;
                            808 ;;
                            809 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5D49                     810 man_game_controller_lvl_28::
   5D49 3A 46 60      [13]  811     ld a, (_level_seconds)  
   5D4C FE 01         [ 7]  812     cp #0x01                      
   5D4E 28 2C         [12]  813     jr z, comprobarEntidades1lvl28
   5D50 FE 02         [ 7]  814     cp #0x02
   5D52 28 37         [12]  815     jr z, comprobarEntidades2lvl28
   5D54 FE 05         [ 7]  816     cp #0x05
   5D56 28 42         [12]  817     jr z, comprobarEntidades3lvl28
   5D58 FE 06         [ 7]  818     cp #0x06
   5D5A 28 4D         [12]  819     jr z, comprobarEntidades4lvl28
   5D5C FE 09         [ 7]  820     cp #0x09
   5D5E 28 58         [12]  821     jr z, comprobarEntidades5lvl28
   5D60 FE 0A         [ 7]  822     cp #0x0A
   5D62 28 63         [12]  823     jr z, comprobarEntidades6lvl28
   5D64 FE 0C         [ 7]  824     cp #0x0C
   5D66 28 6E         [12]  825     jr z, comprobarEntidades7lvl28
   5D68 FE 0D         [ 7]  826     cp #0x0D
   5D6A 28 79         [12]  827     jr z, comprobarEntidades8lvl28
   5D6C FE 10         [ 7]  828     cp #0x10
   5D6E CA F4 5D      [10]  829     jp z, comprobarEntidades9lvl28
   5D71 FE 15         [ 7]  830     cp #0x15
   5D73 CA 0B 5E      [10]  831     jp z, comprobarEntidades10lvl28
   5D76 FE 18         [ 7]  832     cp #0x18
   5D78 CA 1A 5E      [10]  833     jp z, comprobarEntidades11lvl28
   5D7B C9            [10]  834     ret
                            835 
   5D7C                     836     comprobarEntidades1lvl28:
   5D7C 3A 44 47      [13]  837     ld a, (level_obstacles)
   5D7F FE 01         [ 7]  838     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5D81 C8            [11]  839     ret z
   5D82 3E B4         [ 7]  840         ld a, #0xB4
   5D84 CD 2C 46      [17]  841         call set_y_ghost
   5D87 CD 93 46      [17]  842         call generar1entidadGhost
   5D8A C9            [10]  843         ret
                            844     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   5D8B                     845     comprobarEntidades2lvl28:
   5D8B 3A 44 47      [13]  846     ld a, (level_obstacles)
   5D8E FE 02         [ 7]  847     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5D90 C8            [11]  848     ret z
   5D91 3E 76         [ 7]  849         ld a, #0x76
   5D93 CD 2C 46      [17]  850         call set_y_ghost
   5D96 CD 93 46      [17]  851         call generar1entidadGhost
   5D99 C9            [10]  852         ret
                            853     
   5D9A                     854     comprobarEntidades3lvl28:
   5D9A 3A 44 47      [13]  855     ld a, (level_obstacles)
   5D9D FE 03         [ 7]  856     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5D9F C8            [11]  857     ret z
   5DA0 3E 76         [ 7]  858         ld a, #0x76
   5DA2 CD 2C 46      [17]  859         call set_y_ghost
   5DA5 CD 93 46      [17]  860         call generar1entidadGhost
   5DA8 C9            [10]  861         ret
                            862     
   5DA9                     863     comprobarEntidades4lvl28:
   5DA9 3A 44 47      [13]  864     ld a, (level_obstacles)
   5DAC FE 04         [ 7]  865     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5DAE C8            [11]  866     ret z
   5DAF 3E B4         [ 7]  867         ld a, #0xB4
   5DB1 CD 2C 46      [17]  868         call set_y_ghost
   5DB4 CD 93 46      [17]  869         call generar1entidadGhost
   5DB7 C9            [10]  870         ret
                            871     
   5DB8                     872     comprobarEntidades5lvl28:
   5DB8 3A 44 47      [13]  873     ld a, (level_obstacles)
   5DBB FE 05         [ 7]  874     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5DBD C8            [11]  875     ret z
   5DBE 3E B4         [ 7]  876         ld a, #0xB4
   5DC0 CD 14 46      [17]  877         call set_y_last_obstacle     
   5DC3 CD 6F 46      [17]  878         call generar1entidad
   5DC6 C9            [10]  879         ret
                            880 
   5DC7                     881     comprobarEntidades6lvl28:
   5DC7 3A 44 47      [13]  882     ld a, (level_obstacles)
   5DCA FE 06         [ 7]  883     cp #0x06               ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5DCC C8            [11]  884     ret z
   5DCD 3E 76         [ 7]  885         ld a, #0x76
   5DCF CD 14 46      [17]  886         call set_y_last_obstacle     
   5DD2 CD 6F 46      [17]  887         call generar1entidad
   5DD5 C9            [10]  888         ret
                            889 
   5DD6                     890     comprobarEntidades7lvl28:
   5DD6 3A 44 47      [13]  891     ld a, (level_obstacles)
   5DD9 FE 07         [ 7]  892     cp #0x07               ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5DDB C8            [11]  893     ret z
   5DDC 3E 76         [ 7]  894         ld a, #0x76
   5DDE CD 14 46      [17]  895         call set_y_last_obstacle     
   5DE1 CD 6F 46      [17]  896         call generar1entidad
   5DE4 C9            [10]  897         ret
                            898 
   5DE5                     899     comprobarEntidades8lvl28:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   5DE5 3A 44 47      [13]  900     ld a, (level_obstacles)
   5DE8 FE 08         [ 7]  901     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5DEA C8            [11]  902     ret z
   5DEB 3E B4         [ 7]  903         ld a, #0xB4
   5DED CD 14 46      [17]  904         call set_y_last_obstacle     
   5DF0 CD 6F 46      [17]  905         call generar1entidad
   5DF3 C9            [10]  906         ret
                            907 
   5DF4                     908     comprobarEntidades9lvl28:
   5DF4 3A 44 47      [13]  909     ld a, (level_obstacles)
   5DF7 FE 0A         [ 7]  910     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5DF9 C8            [11]  911     ret z
   5DFA 3E 76         [ 7]  912         ld a, #0x76
   5DFC CD 2C 46      [17]  913         call set_y_ghost
   5DFF CD 93 46      [17]  914         call generar1entidadGhost
                            915         
   5E02 3E B4         [ 7]  916         ld a, #0xB4
   5E04 CD 2C 46      [17]  917         call set_y_ghost
   5E07 CD 93 46      [17]  918         call generar1entidadGhost
   5E0A C9            [10]  919         ret
                            920     
   5E0B                     921     comprobarEntidades10lvl28:
   5E0B 3A 44 47      [13]  922     ld a, (level_obstacles)
   5E0E FE 0B         [ 7]  923     cp #0x0B               ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5E10 C8            [11]  924     ret z
   5E11 3E AC         [ 7]  925         ld a, #0xAC
   5E13 CD 24 46      [17]  926         call set_y_wave
   5E16 CD 81 46      [17]  927         call generar1entidadWave
   5E19 C9            [10]  928         ret
                            929     
   5E1A                     930     comprobarEntidades11lvl28:
   5E1A 3A 44 47      [13]  931     ld a, (level_obstacles)
   5E1D FE 0C         [ 7]  932     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   5E1F C8            [11]  933     ret z
   5E20 3E B4         [ 7]  934         ld a, #0xB4
   5E22 CD 2C 46      [17]  935         call set_y_ghost
   5E25 CD 93 46      [17]  936         call generar1entidadGhost
   5E28 C9            [10]  937         ret
                            938     
                            939 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            940 ;;
                            941 ;;
                            942 ;;  NIVEL 29 (FUEGUITO)
                            943 ;;
                            944 ;;
                            945 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5E29                     946 man_game_controller_lvl_29::
   5E29 3A 46 60      [13]  947     ld a, (_level_seconds)  
   5E2C FE 01         [ 7]  948     cp #0x01        
   5E2E 28 24         [12]  949     jr z, comprobarEntidades1lvl29
   5E30 FE 04         [ 7]  950     cp #0x04
   5E32 28 2F         [12]  951     jr z, comprobarEntidades2lvl29
   5E34 FE 05         [ 7]  952     cp #0x05                                
   5E36 28 3A         [12]  953     jr z, comprobarEntidades3lvl29
   5E38 FE 06         [ 7]  954     cp #0x06
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   5E3A 28 45         [12]  955     jr z, comprobarEntidades4lvl29
   5E3C FE 0B         [ 7]  956     cp #0x0B
   5E3E 28 50         [12]  957     jr z, comprobarEntidades5lvl29
   5E40 FE 0C         [ 7]  958     cp #0x0C
   5E42 28 5B         [12]  959     jr z, comprobarEntidades6lvl29
   5E44 FE 13         [ 7]  960     cp #0x13
   5E46 CA AE 5E      [10]  961     jp z, comprobarEntidades7lvl29
   5E49 FE 14         [ 7]  962     cp #0x14
   5E4B CA C5 5E      [10]  963     jp z, comprobarEntidades8lvl29
   5E4E FE 18         [ 7]  964     cp #0x18
   5E50 CA D4 5E      [10]  965     jp z, comprobarEntidades9lvl29
   5E53 C9            [10]  966     ret
                            967 
   5E54                     968     comprobarEntidades1lvl29:
   5E54 3A 44 47      [13]  969     ld a, (level_obstacles)
   5E57 FE 01         [ 7]  970     cp #0x01               ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5E59 C8            [11]  971     ret z
   5E5A 3E B4         [ 7]  972         ld a, #0xB4
   5E5C CD 14 46      [17]  973         call set_y_last_obstacle     
   5E5F CD 6F 46      [17]  974         call generar1entidad
   5E62 C9            [10]  975         ret
                            976 
   5E63                     977     comprobarEntidades2lvl29:
   5E63 3A 44 47      [13]  978     ld a, (level_obstacles)
   5E66 FE 02         [ 7]  979     cp #0x02               ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5E68 C8            [11]  980     ret z
   5E69 3E 76         [ 7]  981         ld a, #0x76
   5E6B CD 14 46      [17]  982         call set_y_last_obstacle     
   5E6E CD 6F 46      [17]  983         call generar1entidad
   5E71 C9            [10]  984         ret
                            985     
   5E72                     986     comprobarEntidades3lvl29:
   5E72 3A 44 47      [13]  987     ld a, (level_obstacles)
   5E75 FE 03         [ 7]  988     cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5E77 C8            [11]  989     ret z
   5E78 3E 95         [ 7]  990         ld a, #0x95
   5E7A CD 14 46      [17]  991         call set_y_last_obstacle     
   5E7D CD 6F 46      [17]  992         call generar1entidad
   5E80 C9            [10]  993         ret
                            994     
   5E81                     995     comprobarEntidades4lvl29:
   5E81 3A 44 47      [13]  996     ld a, (level_obstacles)
   5E84 FE 04         [ 7]  997     cp #0x04               ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5E86 C8            [11]  998     ret z
   5E87 3E B4         [ 7]  999         ld a, #0xB4
   5E89 CD 14 46      [17] 1000         call set_y_last_obstacle     
   5E8C CD 6F 46      [17] 1001         call generar1entidad
   5E8F C9            [10] 1002         ret
                           1003     
   5E90                    1004     comprobarEntidades5lvl29:
   5E90 3A 44 47      [13] 1005     ld a, (level_obstacles)
   5E93 FE 05         [ 7] 1006     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5E95 C8            [11] 1007     ret z
   5E96 3E 76         [ 7] 1008         ld a, #0x76
   5E98 CD 14 46      [17] 1009         call set_y_last_obstacle     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   5E9B CD 6F 46      [17] 1010         call generar1entidad
   5E9E C9            [10] 1011         ret
                           1012     
   5E9F                    1013     comprobarEntidades6lvl29:
   5E9F 3A 44 47      [13] 1014     ld a, (level_obstacles)
   5EA2 FE 06         [ 7] 1015     cp #0x06               ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5EA4 C8            [11] 1016     ret z
   5EA5 3E B4         [ 7] 1017         ld a, #0xB4
   5EA7 CD 2C 46      [17] 1018         call set_y_ghost
   5EAA CD 93 46      [17] 1019         call generar1entidadGhost
   5EAD C9            [10] 1020         ret
                           1021     
   5EAE                    1022     comprobarEntidades7lvl29:
   5EAE 3A 44 47      [13] 1023     ld a, (level_obstacles)
   5EB1 FE 08         [ 7] 1024     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5EB3 C8            [11] 1025     ret z
   5EB4 3E 76         [ 7] 1026         ld a, #0x76
   5EB6 CD 14 46      [17] 1027         call set_y_last_obstacle     
   5EB9 CD 6F 46      [17] 1028         call generar1entidad
                           1029         
   5EBC 3E B4         [ 7] 1030         ld a, #0xB4
   5EBE CD 14 46      [17] 1031         call set_y_last_obstacle     
   5EC1 CD 6F 46      [17] 1032         call generar1entidad
   5EC4 C9            [10] 1033         ret
                           1034     
   5EC5                    1035     comprobarEntidades8lvl29:
   5EC5 3A 44 47      [13] 1036     ld a, (level_obstacles)
   5EC8 FE 09         [ 7] 1037     cp #0x09               ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5ECA C8            [11] 1038     ret z
   5ECB 3E 95         [ 7] 1039         ld a, #0x95
   5ECD CD 14 46      [17] 1040         call set_y_last_obstacle     
   5ED0 CD 6F 46      [17] 1041         call generar1entidad
   5ED3 C9            [10] 1042         ret
                           1043 
   5ED4                    1044     comprobarEntidades9lvl29:
   5ED4 3A 44 47      [13] 1045     ld a, (level_obstacles)
   5ED7 FE 0B         [ 7] 1046     cp #0x0B               ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5ED9 C8            [11] 1047     ret z    
   5EDA 3E 76         [ 7] 1048         ld a, #0x76
   5EDC CD 2C 46      [17] 1049         call set_y_ghost
   5EDF CD 93 46      [17] 1050         call generar1entidadGhost
                           1051         
   5EE2 3E B4         [ 7] 1052         ld a, #0xB4
   5EE4 CD 2C 46      [17] 1053         call set_y_ghost
   5EE7 CD 93 46      [17] 1054         call generar1entidadGhost
   5EEA C9            [10] 1055         ret
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



   5EEB                    1065 man_game_controller_lvl_30::
   5EEB 3A 46 60      [13] 1066     ld a, (_level_seconds)  
   5EEE FE 01         [ 7] 1067     cp #0x01                      
   5EF0 28 1F         [12] 1068     jr z, comprobarEntidades1lvl30
   5EF2 FE 03         [ 7] 1069     cp #0x03
   5EF4 28 32         [12] 1070     jr z, comprobarEntidades2lvl30
   5EF6 FE 06         [ 7] 1071     cp #0x06                                
   5EF8 28 3D         [12] 1072     jr z, comprobarEntidades3lvl30
   5EFA FE 0A         [ 7] 1073     cp #0x0A
   5EFC 28 50         [12] 1074     jr z, comprobarEntidades4lvl30
   5EFE FE 0E         [ 7] 1075     cp #0x0E
   5F00 28 63         [12] 1076     jr z, comprobarEntidades5lvl30
   5F02 FE 12         [ 7] 1077     cp #0x12
   5F04 28 6E         [12] 1078     jr z, comprobarEntidades6lvl30
   5F06 FE 16         [ 7] 1079     cp #0x16
   5F08 CA 8B 5F      [10] 1080     jp z, comprobarEntidades7lvl30
   5F0B FE 19         [ 7] 1081     cp #0x19
   5F0D CA A2 5F      [10] 1082     jp z, comprobarEntidades8lvl30
   5F10 C9            [10] 1083     ret
                           1084     
   5F11                    1085     comprobarEntidades1lvl30:
   5F11 3A 44 47      [13] 1086     ld a, (level_obstacles)
   5F14 FE 02         [ 7] 1087     cp #0x02               ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5F16 C8            [11] 1088     ret z
   5F17 3E 76         [ 7] 1089         ld a, #0x76
   5F19 CD 14 46      [17] 1090         call set_y_last_obstacle     
   5F1C CD 6F 46      [17] 1091         call generar1entidad
                           1092         
   5F1F 3E B4         [ 7] 1093         ld a, #0xB4
   5F21 CD 14 46      [17] 1094         call set_y_last_obstacle     
   5F24 CD 6F 46      [17] 1095         call generar1entidad
   5F27 C9            [10] 1096         ret
                           1097 
   5F28                    1098     comprobarEntidades2lvl30:
   5F28 3A 44 47      [13] 1099     ld a, (level_obstacles)
   5F2B FE 03         [ 7] 1100     cp #0x03               ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5F2D C8            [11] 1101     ret z
   5F2E 3E 8C         [ 7] 1102         ld a, #0x8C
   5F30 CD 14 46      [17] 1103         call set_y_last_obstacle     
   5F33 CD 6F 46      [17] 1104         call generar1entidad
   5F36 C9            [10] 1105         ret
                           1106     
   5F37                    1107     comprobarEntidades3lvl30:
   5F37 3A 44 47      [13] 1108     ld a, (level_obstacles)
   5F3A FE 05         [ 7] 1109     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5F3C C8            [11] 1110     ret z
   5F3D 3E 76         [ 7] 1111         ld a, #0x76
   5F3F CD 14 46      [17] 1112         call set_y_last_obstacle     
   5F42 CD 6F 46      [17] 1113         call generar1entidad
                           1114         
   5F45 3E B4         [ 7] 1115         ld a, #0xB4
   5F47 CD 14 46      [17] 1116         call set_y_last_obstacle     
   5F4A CD 6F 46      [17] 1117         call generar1entidad
   5F4D C9            [10] 1118         ret
                           1119 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   5F4E                    1120     comprobarEntidades4lvl30:
   5F4E 3A 44 47      [13] 1121     ld a, (level_obstacles)
   5F51 FE 07         [ 7] 1122     cp #0x07               ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5F53 C8            [11] 1123     ret z
   5F54 3E 76         [ 7] 1124         ld a, #0x76
   5F56 CD 2C 46      [17] 1125         call set_y_ghost
   5F59 CD 93 46      [17] 1126         call generar1entidadGhost
                           1127     
   5F5C 3E B4         [ 7] 1128         ld a, #0xB4
   5F5E CD 2C 46      [17] 1129         call set_y_ghost
   5F61 CD 93 46      [17] 1130         call generar1entidadGhost
   5F64 C9            [10] 1131         ret
                           1132     
   5F65                    1133     comprobarEntidades5lvl30:
   5F65 3A 44 47      [13] 1134     ld a, (level_obstacles)
   5F68 FE 08         [ 7] 1135     cp #0x08               ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5F6A C8            [11] 1136     ret z
   5F6B 3E B4         [ 7] 1137         ld a, #0xB4
   5F6D CD 2C 46      [17] 1138         call set_y_ghost
   5F70 CD 93 46      [17] 1139         call generar1entidadGhost
   5F73 C9            [10] 1140         ret
                           1141 
   5F74                    1142     comprobarEntidades6lvl30:
   5F74 3A 44 47      [13] 1143     ld a, (level_obstacles)
   5F77 FE 0A         [ 7] 1144     cp #0x0A               ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5F79 C8            [11] 1145     ret z
   5F7A 3E 76         [ 7] 1146         ld a, #0x76
   5F7C CD 2C 46      [17] 1147         call set_y_ghost
   5F7F CD 93 46      [17] 1148         call generar1entidadGhost
                           1149         
   5F82 3E B4         [ 7] 1150         ld a, #0xB4
   5F84 CD 2C 46      [17] 1151         call set_y_ghost
   5F87 CD 93 46      [17] 1152         call generar1entidadGhost
   5F8A C9            [10] 1153         ret
   5F8B                    1154     comprobarEntidades7lvl30:
   5F8B 3A 44 47      [13] 1155     ld a, (level_obstacles)
   5F8E FE 0C         [ 7] 1156     cp #0x0C               ;; Si ya tengo 12 entidades no compruebo ninguna mas
   5F90 C8            [11] 1157     ret z
   5F91 3E 76         [ 7] 1158         ld a, #0x76
   5F93 CD 2C 46      [17] 1159         call set_y_ghost
   5F96 CD 93 46      [17] 1160         call generar1entidadGhost
                           1161         
   5F99 3E B4         [ 7] 1162         ld a, #0xB4
   5F9B CD 2C 46      [17] 1163         call set_y_ghost
   5F9E CD 93 46      [17] 1164         call generar1entidadGhost
   5FA1 C9            [10] 1165         ret
                           1166 
   5FA2                    1167     comprobarEntidades8lvl30:
   5FA2 3A 44 47      [13] 1168     ld a, (level_obstacles)
   5FA5 FE 0D         [ 7] 1169     cp #0x0D               ;; Si ya tengo 13 entidades no compruebo ninguna mas
   5FA7 C8            [11] 1170     ret z
   5FA8 3E B4         [ 7] 1171         ld a, #0xB4
   5FAA CD 14 46      [17] 1172         call set_y_last_obstacle     
   5FAD CD 6F 46      [17] 1173         call generar1entidad
   5FB0 C9            [10] 1174         ret
