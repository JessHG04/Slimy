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
                             24 ;;  NIVEL 1
                             25 ;;
                             26 ;;
                             27 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4AAE                      28 man_game_controller_lvl_1::
   4AAE 3A 6E 60      [13]   29     ld a, (_level_seconds)  
   4AB1 FE 06         [ 7]   30     cp #0x06                      
   4AB3 28 11         [12]   31     jr z, comprobarEntidades1lvl1
   4AB5 FE 0A         [ 7]   32     cp #0x0A
   4AB7 28 1C         [12]   33     jr z, comprobarEntidades2lvl1
   4AB9 FE 0E         [ 7]   34     cp #0x0E
   4ABB 28 27         [12]   35     jr z, comprobarEntidades3lvl1
   4ABD FE 14         [ 7]   36     cp #0x14
   4ABF 28 32         [12]   37     jr z, comprobarEntidades4lvl1
   4AC1 FE 18         [ 7]   38     cp #0x18
   4AC3 28 3D         [12]   39     jr z, comprobarEntidades5lvl1
   4AC5 C9            [10]   40     ret
                             41     
   4AC6                      42     comprobarEntidades1lvl1:
   4AC6 3A 6C 47      [13]   43     ld a, (level_obstacles)
   4AC9 FE 01         [ 7]   44     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4ACB C8            [11]   45     ret z
   4ACC 3E B4         [ 7]   46         ld a, #0xB4
   4ACE CD 3C 46      [17]   47         call set_y_last_obstacle
   4AD1 CD 97 46      [17]   48         call generar1entidad
   4AD4 C9            [10]   49         ret
                             50     
   4AD5                      51     comprobarEntidades2lvl1:
   4AD5 3A 6C 47      [13]   52     ld a, (level_obstacles)
   4AD8 FE 02         [ 7]   53     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4ADA C8            [11]   54     ret z
   4ADB 3E 76         [ 7]   55         ld a, #0x76
   4ADD CD 3C 46      [17]   56         call set_y_last_obstacle  
   4AE0 CD 97 46      [17]   57         call generar1entidad
   4AE3 C9            [10]   58         ret
                             59     
   4AE4                      60     comprobarEntidades3lvl1:
   4AE4 3A 6C 47      [13]   61     ld a, (level_obstacles)
   4AE7 FE 03         [ 7]   62     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4AE9 C8            [11]   63     ret z
   4AEA 3E B4         [ 7]   64         ld a, #0xB4
   4AEC CD 3C 46      [17]   65         call set_y_last_obstacle
   4AEF CD 97 46      [17]   66         call generar1entidad
   4AF2 C9            [10]   67         ret 
                             68     
   4AF3                      69     comprobarEntidades4lvl1:
   4AF3 3A 6C 47      [13]   70     ld a, (level_obstacles)
   4AF6 FE 04         [ 7]   71     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4AF8 C8            [11]   72     ret z
   4AF9 3E 76         [ 7]   73         ld a, #0x76
   4AFB CD 3C 46      [17]   74         call set_y_last_obstacle     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   4AFE CD 97 46      [17]   75         call generar1entidad
   4B01 C9            [10]   76         ret        
                             77 
   4B02                      78     comprobarEntidades5lvl1:
   4B02 3A 6C 47      [13]   79     ld a, (level_obstacles)
   4B05 FE 05         [ 7]   80     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4B07 C8            [11]   81     ret z
   4B08 3E B4         [ 7]   82         ld a, #0xB4
   4B0A CD 3C 46      [17]   83         call set_y_last_obstacle     
   4B0D CD 97 46      [17]   84         call generar1entidad
   4B10 C9            [10]   85         ret  
                             86 
                             87 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             88 ;;
                             89 ;;
                             90 ;;  NIVEL 2
                             91 ;;
                             92 ;;
                             93 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4B11                      94 man_game_controller_lvl_2::
   4B11 3A 6E 60      [13]   95     ld a, (_level_seconds)  
   4B14 FE 02         [ 7]   96     cp #0x02                      
   4B16 28 1D         [12]   97     jr z, comprobarEntidades1lvl2
   4B18 FE 04         [ 7]   98     cp #0x04
   4B1A 28 28         [12]   99     jr z, comprobarEntidades2lvl2
   4B1C FE 07         [ 7]  100     cp #0x07
   4B1E 28 33         [12]  101     jr z, comprobarEntidades3lvl2
   4B20 FE 0A         [ 7]  102     cp #0x0A
   4B22 28 3E         [12]  103     jr z, comprobarEntidades4lvl2
   4B24 FE 0D         [ 7]  104     cp #0x0D
   4B26 28 49         [12]  105     jr z, comprobarEntidades5lvl2
   4B28 FE 0E         [ 7]  106     cp #0x0E
   4B2A 28 54         [12]  107     jr z, comprobarEntidades6lvl2
   4B2C FE 12         [ 7]  108     cp #0x12
   4B2E 28 5F         [12]  109     jr z, comprobarEntidades7lvl2
   4B30 FE 17         [ 7]  110     cp #0x17
   4B32 28 6A         [12]  111     jr z, comprobarEntidades8lvl2
   4B34 C9            [10]  112     ret
                            113     
   4B35                     114     comprobarEntidades1lvl2:
   4B35 3A 6C 47      [13]  115     ld a, (level_obstacles)
   4B38 FE 01         [ 7]  116     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4B3A C8            [11]  117     ret z
   4B3B 3E 76         [ 7]  118         ld a, #0x76
   4B3D CD 3C 46      [17]  119         call set_y_last_obstacle 
   4B40 CD 97 46      [17]  120         call generar1entidad
   4B43 C9            [10]  121         ret
                            122     
   4B44                     123     comprobarEntidades2lvl2:
   4B44 3A 6C 47      [13]  124     ld a, (level_obstacles)
   4B47 FE 02         [ 7]  125     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4B49 C8            [11]  126     ret z
   4B4A 3E B4         [ 7]  127         ld a, #0xB4
   4B4C CD 3C 46      [17]  128         call set_y_last_obstacle 
   4B4F CD 97 46      [17]  129         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   4B52 C9            [10]  130         ret  
                            131     
   4B53                     132     comprobarEntidades3lvl2:
   4B53 3A 6C 47      [13]  133     ld a, (level_obstacles)
   4B56 FE 03         [ 7]  134     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4B58 C8            [11]  135     ret z
   4B59 3E 76         [ 7]  136         ld a, #0x76
   4B5B CD 3C 46      [17]  137         call set_y_last_obstacle 
   4B5E CD 97 46      [17]  138         call generar1entidad
   4B61 C9            [10]  139         ret 
                            140     
   4B62                     141     comprobarEntidades4lvl2:
   4B62 3A 6C 47      [13]  142     ld a, (level_obstacles)
   4B65 FE 04         [ 7]  143     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4B67 C8            [11]  144     ret  z
   4B68 3E 76         [ 7]  145         ld a, #0x76
   4B6A CD 3C 46      [17]  146         call set_y_last_obstacle 
   4B6D CD 97 46      [17]  147         call generar1entidad
   4B70 C9            [10]  148         ret 
                            149 
   4B71                     150     comprobarEntidades5lvl2:    
   4B71 3A 6C 47      [13]  151     ld a, (level_obstacles)
   4B74 FE 05         [ 7]  152     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4B76 C8            [11]  153     ret z
   4B77 3E B4         [ 7]  154         ld a, #0xB4
   4B79 CD 3C 46      [17]  155         call set_y_last_obstacle 
   4B7C CD 97 46      [17]  156         call generar1entidad
   4B7F C9            [10]  157         ret
                            158     
   4B80                     159     comprobarEntidades6lvl2:    
   4B80 3A 6C 47      [13]  160     ld a, (level_obstacles)
   4B83 FE 06         [ 7]  161     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4B85 C8            [11]  162     ret z
   4B86 3E 96         [ 7]  163         ld a, #0x96
   4B88 CD 3C 46      [17]  164         call set_y_last_obstacle 
   4B8B CD 97 46      [17]  165         call generar1entidad
   4B8E C9            [10]  166         ret   
                            167     
   4B8F                     168     comprobarEntidades7lvl2:
   4B8F 3A 6C 47      [13]  169     ld a, (level_obstacles)
   4B92 FE 07         [ 7]  170     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4B94 C8            [11]  171     ret z
   4B95 3E 76         [ 7]  172         ld a, #0x76
   4B97 CD 3C 46      [17]  173         call set_y_last_obstacle 
   4B9A CD 97 46      [17]  174         call generar1entidad
   4B9D C9            [10]  175         ret   
                            176 
   4B9E                     177     comprobarEntidades8lvl2:
   4B9E 3A 6C 47      [13]  178     ld a, (level_obstacles)
   4BA1 FE 08         [ 7]  179     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4BA3 C8            [11]  180     ret z
   4BA4 3E B4         [ 7]  181         ld a, #0xB4
   4BA6 CD 3C 46      [17]  182         call set_y_last_obstacle 
   4BA9 CD 97 46      [17]  183         call generar1entidad
   4BAC C9            [10]  184         ret   
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



                            185 
                            186 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            187 ;;
                            188 ;;
                            189 ;;  NIVEL 3
                            190 ;;
                            191 ;;
                            192 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4BAD                     193 man_game_controller_lvl_3::
   4BAD 3A 6E 60      [13]  194     ld a, (_level_seconds)  
   4BB0 FE 02         [ 7]  195     cp #0x02                      
   4BB2 28 1A         [12]  196     jr z, comprobarEntidades1lvl3
   4BB4 FE 04         [ 7]  197     cp #0x04
   4BB6 28 25         [12]  198     jr z, comprobarEntidades2lvl3
   4BB8 FE 06         [ 7]  199     cp #0x06
   4BBA 28 30         [12]  200     jr z, comprobarEntidades3lvl3
   4BBC FE 09         [ 7]  201     cp #0x09
   4BBE 28 3B         [12]  202     jr z, comprobarEntidades4lvl3
   4BC0 FE 12         [ 7]  203     cp #0x12
   4BC2 28 46         [12]  204     jr z, comprobarEntidades5lvl3
   4BC4 FE 15         [ 7]  205     cp #0x15
   4BC6 28 51         [12]  206     jr z, comprobarEntidades6lvl3
   4BC8 FE 18         [ 7]  207     cp #0x18
   4BCA CA 28 4C      [10]  208     jp z, comprobarEntidades7lvl3
   4BCD C9            [10]  209     ret
                            210 
   4BCE                     211     comprobarEntidades1lvl3:
   4BCE 3A 6C 47      [13]  212     ld a, (level_obstacles)
   4BD1 FE 01         [ 7]  213     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4BD3 C8            [11]  214     ret z
   4BD4 3E B4         [ 7]  215         ld a, #0xB4
   4BD6 CD 3C 46      [17]  216         call set_y_last_obstacle
   4BD9 CD 97 46      [17]  217         call generar1entidad
   4BDC C9            [10]  218         ret
                            219     
   4BDD                     220     comprobarEntidades2lvl3:
   4BDD 3A 6C 47      [13]  221     ld a, (level_obstacles)
   4BE0 FE 02         [ 7]  222     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4BE2 C8            [11]  223     ret z
   4BE3 3E AC         [ 7]  224         ld a, #0xAC
   4BE5 CD 3C 46      [17]  225         call set_y_last_obstacle
   4BE8 CD 97 46      [17]  226         call generar1entidad    
   4BEB C9            [10]  227         ret
                            228 
   4BEC                     229     comprobarEntidades3lvl3:
   4BEC 3A 6C 47      [13]  230     ld a, (level_obstacles)
   4BEF FE 03         [ 7]  231     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4BF1 C8            [11]  232     ret z
   4BF2 3E 76         [ 7]  233         ld a, #0x76
   4BF4 CD 3C 46      [17]  234         call set_y_last_obstacle
   4BF7 CD 97 46      [17]  235         call generar1entidad
   4BFA C9            [10]  236         ret 
                            237     
   4BFB                     238     comprobarEntidades4lvl3:
   4BFB 3A 6C 47      [13]  239     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   4BFE FE 04         [ 7]  240     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4C00 C8            [11]  241     ret z
   4C01 3E B4         [ 7]  242         ld a, #0xB4
   4C03 CD 3C 46      [17]  243         call set_y_last_obstacle
   4C06 CD 97 46      [17]  244         call generar1entidad
   4C09 C9            [10]  245         ret   
                            246 
   4C0A                     247     comprobarEntidades5lvl3:
   4C0A 3A 6C 47      [13]  248     ld a, (level_obstacles)
   4C0D FE 05         [ 7]  249     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4C0F C8            [11]  250     ret z
   4C10 3E 76         [ 7]  251         ld a, #0x76
   4C12 CD 3C 46      [17]  252         call set_y_last_obstacle
   4C15 CD 97 46      [17]  253         call generar1entidad
   4C18 C9            [10]  254         ret 
                            255 
   4C19                     256     comprobarEntidades6lvl3:
   4C19 3A 6C 47      [13]  257     ld a, (level_obstacles)
   4C1C FE 06         [ 7]  258     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4C1E C8            [11]  259     ret z
   4C1F 3E 96         [ 7]  260         ld a, #0x96
   4C21 CD 3C 46      [17]  261         call set_y_last_obstacle
   4C24 CD 97 46      [17]  262         call generar1entidad
   4C27 C9            [10]  263         ret 
                            264     
   4C28                     265     comprobarEntidades7lvl3:
   4C28 3A 6C 47      [13]  266      ld a, (level_obstacles)
   4C2B FE 07         [ 7]  267      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4C2D C8            [11]  268      ret z
   4C2E 3E B4         [ 7]  269         ld a, #0xB4
   4C30 CD 3C 46      [17]  270         call set_y_last_obstacle
   4C33 CD 97 46      [17]  271         call generar1entidad
   4C36 C9            [10]  272         ret 
                            273 
                            274 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            275 ;;
                            276 ;;
                            277 ;;  NIVEL 4
                            278 ;;
                            279 ;;
                            280 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4C37                     281 man_game_controller_lvl_4::
   4C37 3A 6E 60      [13]  282     ld a, (_level_seconds)  
   4C3A FE 02         [ 7]  283     cp #0x02                      
   4C3C 28 25         [12]  284     jr z, comprobarEntidades1lvl4
   4C3E FE 05         [ 7]  285     cp #0x05
   4C40 28 30         [12]  286     jr z, comprobarEntidades2lvl4
   4C42 FE 07         [ 7]  287     cp #0x07
   4C44 28 3B         [12]  288     jr z, comprobarEntidades3lvl4
   4C46 FE 08         [ 7]  289     cp #0x08
   4C48 28 46         [12]  290     jr z, comprobarEntidades4lvl4
   4C4A FE 0B         [ 7]  291     cp #0x0B
   4C4C 28 51         [12]  292     jr z, comprobarEntidades5lvl4
   4C4E FE 0F         [ 7]  293     cp #0x0F
   4C50 CA AE 4C      [10]  294     jp z, comprobarEntidades6lvl4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   4C53 FE 12         [ 7]  295     cp #0x12
   4C55 CA BD 4C      [10]  296     jp z, comprobarEntidades7lvl4
   4C58 FE 16         [ 7]  297     cp #0x16
   4C5A CA CC 4C      [10]  298     jp z, comprobarEntidades8lvl4
   4C5D FE 17         [ 7]  299     cp #0x17
   4C5F CA DB 4C      [10]  300     jp z, comprobarEntidades9lvl4
   4C62 C9            [10]  301     ret
                            302 
   4C63                     303     comprobarEntidades1lvl4:
   4C63 3A 6C 47      [13]  304     ld a, (level_obstacles)
   4C66 FE 01         [ 7]  305     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4C68 C8            [11]  306     ret z
   4C69 3E B4         [ 7]  307         ld a, #0xB4
   4C6B CD 3C 46      [17]  308         call set_y_last_obstacle 
   4C6E CD 97 46      [17]  309         call generar1entidad
   4C71 C9            [10]  310         ret
                            311     
   4C72                     312     comprobarEntidades2lvl4:
   4C72 3A 6C 47      [13]  313     ld a, (level_obstacles)
   4C75 FE 02         [ 7]  314     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4C77 C8            [11]  315     ret z
   4C78 3E 76         [ 7]  316         ld a, #0x76
   4C7A CD 3C 46      [17]  317         call set_y_last_obstacle 
   4C7D CD 97 46      [17]  318         call generar1entidad    
   4C80 C9            [10]  319         ret
                            320 
   4C81                     321     comprobarEntidades3lvl4:
   4C81 3A 6C 47      [13]  322     ld a, (level_obstacles)
   4C84 FE 03         [ 7]  323     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4C86 C8            [11]  324     ret z
   4C87 3E 76         [ 7]  325         ld a, #0x76
   4C89 CD 3C 46      [17]  326         call set_y_last_obstacle 
   4C8C CD 97 46      [17]  327         call generar1entidad
   4C8F C9            [10]  328         ret 
                            329     
   4C90                     330     comprobarEntidades4lvl4:
   4C90 3A 6C 47      [13]  331     ld a, (level_obstacles)
   4C93 FE 04         [ 7]  332     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4C95 C8            [11]  333     ret z
   4C96 3E B4         [ 7]  334         ld a, #0xB4
   4C98 CD 3C 46      [17]  335         call set_y_last_obstacle 
   4C9B CD 97 46      [17]  336         call generar1entidad
   4C9E C9            [10]  337         ret   
                            338 
   4C9F                     339     comprobarEntidades5lvl4:
   4C9F 3A 6C 47      [13]  340     ld a, (level_obstacles)
   4CA2 FE 05         [ 7]  341     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4CA4 C8            [11]  342     ret z
   4CA5 3E 76         [ 7]  343         ld a, #0x76
   4CA7 CD 4C 46      [17]  344         call set_y_wave
   4CAA CD A9 46      [17]  345         call generar1entidadWave
   4CAD C9            [10]  346         ret 
                            347 
   4CAE                     348     comprobarEntidades6lvl4:
   4CAE 3A 6C 47      [13]  349     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   4CB1 FE 06         [ 7]  350     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4CB3 C8            [11]  351     ret z
   4CB4 3E B4         [ 7]  352         ld a, #0xB4
   4CB6 CD 3C 46      [17]  353         call set_y_last_obstacle 
   4CB9 CD 97 46      [17]  354         call generar1entidad
   4CBC C9            [10]  355         ret 
                            356     
   4CBD                     357     comprobarEntidades7lvl4:
   4CBD 3A 6C 47      [13]  358      ld a, (level_obstacles)
   4CC0 FE 07         [ 7]  359      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4CC2 C8            [11]  360      ret z
   4CC3 3E 76         [ 7]  361         ld a, #0x76
   4CC5 CD 3C 46      [17]  362         call set_y_last_obstacle 
   4CC8 CD 97 46      [17]  363         call generar1entidad
   4CCB C9            [10]  364         ret 
                            365 
   4CCC                     366     comprobarEntidades8lvl4:
   4CCC 3A 6C 47      [13]  367     ld a, (level_obstacles)
   4CCF FE 08         [ 7]  368     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4CD1 C8            [11]  369     ret z
   4CD2 3E 76         [ 7]  370         ld a, #0x76
   4CD4 CD 3C 46      [17]  371         call set_y_last_obstacle 
   4CD7 CD 97 46      [17]  372         call generar1entidad
   4CDA C9            [10]  373         ret 
                            374     
   4CDB                     375     comprobarEntidades9lvl4:
   4CDB 3A 6C 47      [13]  376      ld a, (level_obstacles)
   4CDE FE 09         [ 7]  377      cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   4CE0 C8            [11]  378      ret z
   4CE1 3E B4         [ 7]  379         ld a, #0xB4
   4CE3 CD 3C 46      [17]  380         call set_y_last_obstacle 
   4CE6 CD 97 46      [17]  381         call generar1entidad
   4CE9 C9            [10]  382         ret 
                            383 
                            384 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            385 ;;
                            386 ;;
                            387 ;;  NIVEL 5
                            388 ;;
                            389 ;;
                            390 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4CEA                     391 man_game_controller_lvl_5::
   4CEA 3A 6E 60      [13]  392     ld a, (_level_seconds)  
   4CED FE 02         [ 7]  393     cp #0x02                      
   4CEF 28 1F         [12]  394     jr z, comprobarEntidades1lvl5
   4CF1 FE 03         [ 7]  395     cp #0x03
   4CF3 28 2A         [12]  396     jr z, comprobarEntidades2lvl5
   4CF5 FE 06         [ 7]  397     cp #0x06
   4CF7 28 35         [12]  398     jr z, comprobarEntidades3lvl5
   4CF9 FE 07         [ 7]  399     cp #0x07
   4CFB 28 40         [12]  400     jr z, comprobarEntidades4lvl5
   4CFD FE 0B         [ 7]  401     cp #0x0B
   4CFF 28 4B         [12]  402     jr z, comprobarEntidades5lvl5
   4D01 FE 0F         [ 7]  403     cp #0x0F
   4D03 28 56         [12]  404     jr z, comprobarEntidades6lvl5
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   4D05 FE 13         [ 7]  405     cp #0x13
   4D07 CA 6A 4D      [10]  406     jp z, comprobarEntidades7lvl5
   4D0A FE 17         [ 7]  407     cp #0x17
   4D0C CA 79 4D      [10]  408     jp z, comprobarEntidades8lvl5
   4D0F C9            [10]  409     ret
                            410 
   4D10                     411     comprobarEntidades1lvl5:
   4D10 3A 6C 47      [13]  412     ld a, (level_obstacles)
   4D13 FE 01         [ 7]  413     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4D15 C8            [11]  414     ret z
   4D16 3E B4         [ 7]  415         ld a, #0xB4
   4D18 CD 3C 46      [17]  416         call set_y_last_obstacle 
   4D1B CD 97 46      [17]  417         call generar1entidad
   4D1E C9            [10]  418         ret
                            419     
   4D1F                     420     comprobarEntidades2lvl5:
   4D1F 3A 6C 47      [13]  421     ld a, (level_obstacles)
   4D22 FE 02         [ 7]  422     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4D24 C8            [11]  423     ret z
   4D25 3E A4         [ 7]  424         ld a, #0xA4
   4D27 CD 3C 46      [17]  425         call set_y_last_obstacle 
   4D2A CD 97 46      [17]  426         call generar1entidad
   4D2D C9            [10]  427         ret   
                            428 
   4D2E                     429     comprobarEntidades3lvl5:
   4D2E 3A 6C 47      [13]  430     ld a, (level_obstacles)
   4D31 FE 03         [ 7]  431     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4D33 C8            [11]  432     ret z
   4D34 3E 76         [ 7]  433         ld a, #0x76
   4D36 CD 3C 46      [17]  434         call set_y_last_obstacle 
   4D39 CD 97 46      [17]  435         call generar1entidad
   4D3C C9            [10]  436         ret 
                            437     
   4D3D                     438     comprobarEntidades4lvl5:
   4D3D 3A 6C 47      [13]  439     ld a, (level_obstacles)
   4D40 FE 04         [ 7]  440     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4D42 C8            [11]  441     ret z
   4D43 3E 96         [ 7]  442         ld a, #0x96
   4D45 CD 3C 46      [17]  443         call set_y_last_obstacle 
   4D48 CD 97 46      [17]  444         call generar1entidad
   4D4B C9            [10]  445         ret   
                            446 
   4D4C                     447     comprobarEntidades5lvl5:
   4D4C 3A 6C 47      [13]  448     ld a, (level_obstacles)
   4D4F FE 05         [ 7]  449     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4D51 C8            [11]  450     ret z
   4D52 3E AC         [ 7]  451         ld a, #0xAC
   4D54 CD 4C 46      [17]  452         call set_y_wave 
   4D57 CD A9 46      [17]  453         call generar1entidadWave
   4D5A C9            [10]  454         ret 
                            455 
   4D5B                     456     comprobarEntidades6lvl5:
   4D5B 3A 6C 47      [13]  457     ld a, (level_obstacles)
   4D5E FE 06         [ 7]  458     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4D60 C8            [11]  459     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   4D61 3E 76         [ 7]  460         ld a, #0x76
   4D63 CD 4C 46      [17]  461         call set_y_wave 
   4D66 CD A9 46      [17]  462         call generar1entidadWave
   4D69 C9            [10]  463         ret 
                            464     
   4D6A                     465     comprobarEntidades7lvl5:
   4D6A 3A 6C 47      [13]  466      ld a, (level_obstacles)
   4D6D FE 07         [ 7]  467      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4D6F C8            [11]  468      ret z
   4D70 3E AC         [ 7]  469         ld a, #0xAC
   4D72 CD 4C 46      [17]  470         call set_y_wave 
   4D75 CD A9 46      [17]  471         call generar1entidadWave
   4D78 C9            [10]  472         ret 
                            473 
   4D79                     474     comprobarEntidades8lvl5:
   4D79 3A 6C 47      [13]  475      ld a, (level_obstacles)
   4D7C FE 08         [ 7]  476      cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4D7E C8            [11]  477      ret z
   4D7F 3E AC         [ 7]  478         ld a, #0xAC
   4D81 CD 4C 46      [17]  479         call set_y_wave 
   4D84 CD A9 46      [17]  480         call generar1entidadWave
   4D87 C9            [10]  481         ret 
                            482 
                            483 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            484 ;;
                            485 ;;
                            486 ;;  NIVEL 6
                            487 ;;
                            488 ;;
                            489 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4D88                     490 man_game_controller_lvl_6::
   4D88 3A 6E 60      [13]  491     ld a, (_level_seconds)  
   4D8B FE 01         [ 7]  492     cp #0x01                      
   4D8D 28 1F         [12]  493     jr z, comprobarEntidades1lvl6
   4D8F FE 05         [ 7]  494     cp #0x05
   4D91 28 2A         [12]  495     jr z, comprobarEntidades2lvl6
   4D93 FE 09         [ 7]  496     cp #0x09
   4D95 28 47         [12]  497     jr z, comprobarEntidades3lvl6
   4D97 FE 0D         [ 7]  498     cp #0x0D
   4D99 28 52         [12]  499     jr z, comprobarEntidades4lvl6
   4D9B FE 11         [ 7]  500     cp #0x11
   4D9D 28 6F         [12]  501     jr z, comprobarEntidades5lvl6
   4D9F FE 15         [ 7]  502     cp #0x15
   4DA1 28 7A         [12]  503     jr z, comprobarEntidades6lvl6
   4DA3 FE 18         [ 7]  504     cp #0x18
   4DA5 CA 2C 4E      [10]  505     jp z, comprobarEntidades7lvl6
   4DA8 FE 19         [ 7]  506     cp #0x19
   4DAA CA 3B 4E      [10]  507     jp z, comprobarEntidades8lvl6
   4DAD C9            [10]  508     ret
                            509 
   4DAE                     510     comprobarEntidades1lvl6:
   4DAE 3A 6C 47      [13]  511     ld a, (level_obstacles)
   4DB1 FE 01         [ 7]  512     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4DB3 C8            [11]  513     ret z
   4DB4 3E AC         [ 7]  514         ld a, #0xAC
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   4DB6 CD 4C 46      [17]  515         call set_y_wave 
   4DB9 CD A9 46      [17]  516         call generar1entidadWave
   4DBC C9            [10]  517         ret
                            518     
   4DBD                     519     comprobarEntidades2lvl6:
   4DBD 3A 6C 47      [13]  520     ld a, (level_obstacles)
   4DC0 FE 03         [ 7]  521     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4DC2 C8            [11]  522     ret z
   4DC3 3E 76         [ 7]  523         ld a, #0x76
   4DC5 CD 3C 46      [17]  524         call set_y_last_obstacle
   4DC8 3E 3C         [ 7]  525         ld a,#0x3C
   4DCA CD 44 46      [17]  526         call set_x_last_obstacle
   4DCD CD 97 46      [17]  527         call generar1entidad
                            528         
   4DD0 3E 46         [ 7]  529         ld a,#0x46
   4DD2 CD 44 46      [17]  530         call set_x_last_obstacle
   4DD5 3E B4         [ 7]  531         ld a, #0xB4
   4DD7 CD 3C 46      [17]  532         call set_y_last_obstacle
   4DDA CD 97 46      [17]  533         call generar1entidad
   4DDD C9            [10]  534         ret
                            535 
   4DDE                     536     comprobarEntidades3lvl6:
   4DDE 3A 6C 47      [13]  537     ld a, (level_obstacles)
   4DE1 FE 04         [ 7]  538     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4DE3 C8            [11]  539     ret z
   4DE4 3E AC         [ 7]  540         ld a, #0xAC
   4DE6 CD 4C 46      [17]  541         call set_y_wave 
   4DE9 CD A9 46      [17]  542         call generar1entidadWave
   4DEC C9            [10]  543         ret
                            544 
   4DED                     545     comprobarEntidades4lvl6:
   4DED 3A 6C 47      [13]  546     ld a, (level_obstacles)
   4DF0 FE 06         [ 7]  547     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4DF2 C8            [11]  548     ret z
   4DF3 3E 76         [ 7]  549         ld a, #0x76
   4DF5 CD 3C 46      [17]  550         call set_y_last_obstacle
   4DF8 3E 3C         [ 7]  551         ld a,#0x3C
   4DFA CD 44 46      [17]  552         call set_x_last_obstacle
   4DFD CD 97 46      [17]  553         call generar1entidad
                            554 
   4E00 3E 46         [ 7]  555         ld a,#0x46
   4E02 CD 44 46      [17]  556         call set_x_last_obstacle
   4E05 3E B4         [ 7]  557         ld a, #0xB4
   4E07 CD 3C 46      [17]  558         call set_y_last_obstacle
   4E0A CD 97 46      [17]  559         call generar1entidad
   4E0D C9            [10]  560         ret   
                            561 
   4E0E                     562     comprobarEntidades5lvl6:
   4E0E 3A 6C 47      [13]  563     ld a, (level_obstacles)
   4E11 FE 07         [ 7]  564     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4E13 C8            [11]  565     ret z
   4E14 3E 76         [ 7]  566         ld a, #0x76
   4E16 CD 4C 46      [17]  567         call set_y_wave 
   4E19 CD A9 46      [17]  568         call generar1entidadWave
   4E1C C9            [10]  569         ret 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                            570 
   4E1D                     571     comprobarEntidades6lvl6:
   4E1D 3A 6C 47      [13]  572     ld a, (level_obstacles)
   4E20 FE 08         [ 7]  573     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4E22 C8            [11]  574     ret z
   4E23 3E AC         [ 7]  575         ld a, #0xAC
   4E25 CD 4C 46      [17]  576         call set_y_wave 
   4E28 CD A9 46      [17]  577         call generar1entidadWave
   4E2B C9            [10]  578         ret 
                            579     
   4E2C                     580     comprobarEntidades7lvl6:
   4E2C 3A 6C 47      [13]  581      ld a, (level_obstacles)
   4E2F FE 09         [ 7]  582      cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   4E31 C8            [11]  583      ret z
   4E32 3E B4         [ 7]  584         ld a, #0xB4
   4E34 CD 3C 46      [17]  585         call set_y_last_obstacle 
   4E37 CD 97 46      [17]  586         call generar1entidad
   4E3A C9            [10]  587         ret 
                            588     
   4E3B                     589     comprobarEntidades8lvl6:
   4E3B 3A 6C 47      [13]  590      ld a, (level_obstacles)
   4E3E FE 0A         [ 7]  591      cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   4E40 C8            [11]  592      ret z
   4E41 3E 76         [ 7]  593         ld a, #0x76
   4E43 CD 3C 46      [17]  594         call set_y_last_obstacle 
   4E46 CD 97 46      [17]  595         call generar1entidad
   4E49 C9            [10]  596         ret 
                            597 
                            598 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            599 ;;
                            600 ;;
                            601 ;;  NIVEL 7
                            602 ;;
                            603 ;;
                            604 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4E4A                     605 man_game_controller_lvl_7::
   4E4A 3A 6E 60      [13]  606     ld a, (_level_seconds)  
   4E4D FE 01         [ 7]  607     cp #0x01                      
   4E4F 28 1F         [12]  608     jr z, comprobarEntidades1lvl7
   4E51 FE 05         [ 7]  609     cp #0x05
   4E53 28 2A         [12]  610     jr z, comprobarEntidades2lvl7
   4E55 FE 06         [ 7]  611     cp #0x06
   4E57 28 35         [12]  612     jr z, comprobarEntidades3lvl7
   4E59 FE 08         [ 7]  613     cp #0x08
   4E5B 28 40         [12]  614     jr z, comprobarEntidades4lvl7
   4E5D FE 0C         [ 7]  615     cp #0x0C
   4E5F 28 4B         [12]  616     jr z, comprobarEntidades5lvl7
   4E61 FE 11         [ 7]  617     cp #0x11
   4E63 28 56         [12]  618     jr z, comprobarEntidades6lvl7
   4E65 FE 15         [ 7]  619     cp #0x15
   4E67 CA CA 4E      [10]  620     jp z, comprobarEntidades7lvl7
   4E6A FE 19         [ 7]  621     cp #0x19
   4E6C CA D9 4E      [10]  622     jp z, comprobarEntidades8lvl7
   4E6F C9            [10]  623     ret
                            624 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   4E70                     625     comprobarEntidades1lvl7:
   4E70 3A 6C 47      [13]  626     ld a, (level_obstacles)
   4E73 FE 01         [ 7]  627     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4E75 C8            [11]  628     ret z
   4E76 3E AC         [ 7]  629         ld a, #0xAC
   4E78 CD 4C 46      [17]  630         call set_y_wave 
   4E7B CD A9 46      [17]  631         call generar1entidadWave
   4E7E C9            [10]  632         ret
                            633     
   4E7F                     634     comprobarEntidades2lvl7:
   4E7F 3A 6C 47      [13]  635     ld a, (level_obstacles)
   4E82 FE 02         [ 7]  636     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4E84 C8            [11]  637     ret z
   4E85 3E 76         [ 7]  638         ld a, #0x76
   4E87 CD 3C 46      [17]  639         call set_y_last_obstacle 
   4E8A CD 97 46      [17]  640         call generar1entidad
   4E8D C9            [10]  641         ret   
                            642 
   4E8E                     643     comprobarEntidades3lvl7:
   4E8E 3A 6C 47      [13]  644     ld a, (level_obstacles)
   4E91 FE 03         [ 7]  645     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4E93 C8            [11]  646     ret z
   4E94 3E B4         [ 7]  647         ld a, #0xB4
   4E96 CD 3C 46      [17]  648         call set_y_last_obstacle 
   4E99 CD 97 46      [17]  649         call generar1entidad
   4E9C C9            [10]  650         ret
                            651 
   4E9D                     652     comprobarEntidades4lvl7:
   4E9D 3A 6C 47      [13]  653     ld a, (level_obstacles)
   4EA0 FE 04         [ 7]  654     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4EA2 C8            [11]  655     ret z
   4EA3 3E 76         [ 7]  656         ld a, #0x76
   4EA5 CD 3C 46      [17]  657         call set_y_last_obstacle 
   4EA8 CD 97 46      [17]  658         call generar1entidad
   4EAB C9            [10]  659         ret   
                            660 
   4EAC                     661     comprobarEntidades5lvl7:
   4EAC 3A 6C 47      [13]  662     ld a, (level_obstacles)
   4EAF FE 05         [ 7]  663     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4EB1 C8            [11]  664     ret z
   4EB2 3E AC         [ 7]  665         ld a, #0xAC
   4EB4 CD 4C 46      [17]  666         call set_y_wave 
   4EB7 CD A9 46      [17]  667         call generar1entidadWave
   4EBA C9            [10]  668         ret 
                            669 
   4EBB                     670     comprobarEntidades6lvl7:
   4EBB 3A 6C 47      [13]  671     ld a, (level_obstacles)
   4EBE FE 06         [ 7]  672     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4EC0 C8            [11]  673     ret z
   4EC1 3E 76         [ 7]  674         ld a, #0x76
   4EC3 CD 4C 46      [17]  675         call set_y_wave 
   4EC6 CD A9 46      [17]  676         call generar1entidadWave
   4EC9 C9            [10]  677         ret 
                            678     
   4ECA                     679     comprobarEntidades7lvl7:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   4ECA 3A 6C 47      [13]  680      ld a, (level_obstacles)
   4ECD FE 07         [ 7]  681      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4ECF C8            [11]  682      ret z
   4ED0 3E AC         [ 7]  683         ld a, #0xAC
   4ED2 CD 4C 46      [17]  684         call set_y_wave 
   4ED5 CD A9 46      [17]  685         call generar1entidadWave
   4ED8 C9            [10]  686         ret 
                            687 
   4ED9                     688     comprobarEntidades8lvl7:
   4ED9 3A 6C 47      [13]  689      ld a, (level_obstacles)
   4EDC FE 09         [ 7]  690      cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   4EDE C8            [11]  691      ret z
   4EDF 3E 76         [ 7]  692         ld a, #0x76
   4EE1 CD 3C 46      [17]  693         call set_y_last_obstacle
   4EE4 CD 97 46      [17]  694         call generar1entidad
                            695 
   4EE7 3E B4         [ 7]  696         ld a, #0xB4
   4EE9 CD 3C 46      [17]  697         call set_y_last_obstacle
   4EEC CD 97 46      [17]  698         call generar1entidad
   4EEF C9            [10]  699         ret 
                            700 
                            701 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            702 ;;
                            703 ;;
                            704 ;;  NIVEL 8
                            705 ;;
                            706 ;;
                            707 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4EF0                     708 man_game_controller_lvl_8::
   4EF0 3A 6E 60      [13]  709     ld a, (_level_seconds)  
   4EF3 FE 02         [ 7]  710     cp #0x02                      
   4EF5 28 1A         [12]  711     jr z, comprobarEntidades1lvl8
   4EF7 FE 06         [ 7]  712     cp #0x06
   4EF9 28 2D         [12]  713     jr z, comprobarEntidades2lvl8
   4EFB FE 09         [ 7]  714     cp #0x09
   4EFD 28 40         [12]  715     jr z, comprobarEntidades3lvl8
   4EFF FE 0C         [ 7]  716     cp #0x0C
   4F01 28 4B         [12]  717     jr z, comprobarEntidades4lvl8
   4F03 FE 12         [ 7]  718     cp #0x12
   4F05 28 68         [12]  719     jr z, comprobarEntidades5lvl8
   4F07 FE 15         [ 7]  720     cp #0x15
   4F09 28 73         [12]  721     jr z, comprobarEntidades6lvl8
   4F0B FE 1A         [ 7]  722     cp #0x1A
   4F0D CA 8D 4F      [10]  723     jp z, comprobarEntidades7lvl8
   4F10 C9            [10]  724     ret
                            725 
   4F11                     726     comprobarEntidades1lvl8:
   4F11 3A 6C 47      [13]  727     ld a, (level_obstacles)
   4F14 FE 02         [ 7]  728     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4F16 C8            [11]  729     ret z
   4F17 3E 76         [ 7]  730         ld a, #0x76
   4F19 CD 3C 46      [17]  731         call set_y_last_obstacle
   4F1C CD 97 46      [17]  732         call generar1entidad
                            733 
   4F1F 3E B4         [ 7]  734         ld a, #0xB4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   4F21 CD 3C 46      [17]  735         call set_y_last_obstacle
   4F24 CD 97 46      [17]  736         call generar1entidad
   4F27 C9            [10]  737         ret
                            738 
   4F28                     739     comprobarEntidades2lvl8:
   4F28 3A 6C 47      [13]  740     ld a, (level_obstacles)
   4F2B FE 04         [ 7]  741     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4F2D C8            [11]  742     ret z
   4F2E 3E 76         [ 7]  743         ld a, #0x76
   4F30 CD 3C 46      [17]  744         call set_y_last_obstacle
   4F33 CD 97 46      [17]  745         call generar1entidad
                            746         
   4F36 3E B4         [ 7]  747         ld a, #0xB4
   4F38 CD 3C 46      [17]  748         call set_y_last_obstacle
   4F3B CD 97 46      [17]  749         call generar1entidad
   4F3E C9            [10]  750         ret
                            751     
   4F3F                     752     comprobarEntidades3lvl8:
   4F3F 3A 6C 47      [13]  753     ld a, (level_obstacles)
   4F42 FE 05         [ 7]  754     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4F44 C8            [11]  755     ret z
   4F45 3E 76         [ 7]  756         ld a, #0x76
   4F47 CD 3C 46      [17]  757         call set_y_last_obstacle
   4F4A CD 97 46      [17]  758         call generar1entidad
   4F4D C9            [10]  759         ret
                            760 
   4F4E                     761     comprobarEntidades4lvl8:
   4F4E 3A 6C 47      [13]  762     ld a, (level_obstacles)
   4F51 FE 07         [ 7]  763     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4F53 C8            [11]  764     ret z
   4F54 3E 76         [ 7]  765         ld a, #0x76
   4F56 CD 3C 46      [17]  766         call set_y_last_obstacle
   4F59 3E 3C         [ 7]  767         ld a,#0x3C
   4F5B CD 44 46      [17]  768         call set_x_last_obstacle
   4F5E CD 97 46      [17]  769         call generar1entidad
                            770 
   4F61 3E 46         [ 7]  771         ld a,#0x46
   4F63 CD 44 46      [17]  772         call set_x_last_obstacle
   4F66 3E B4         [ 7]  773         ld a, #0xB4
   4F68 CD 3C 46      [17]  774         call set_y_last_obstacle
   4F6B CD 97 46      [17]  775         call generar1entidad
   4F6E C9            [10]  776         ret   
                            777 
   4F6F                     778     comprobarEntidades5lvl8:
   4F6F 3A 6C 47      [13]  779     ld a, (level_obstacles)
   4F72 FE 08         [ 7]  780     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4F74 C8            [11]  781     ret z
   4F75 3E AC         [ 7]  782         ld a, #0xAC
   4F77 CD 4C 46      [17]  783         call set_y_wave 
   4F7A CD A9 46      [17]  784         call generar1entidadWave
   4F7D C9            [10]  785         ret 
                            786 
   4F7E                     787     comprobarEntidades6lvl8:
   4F7E 3A 6C 47      [13]  788     ld a, (level_obstacles)
   4F81 FE 09         [ 7]  789     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   4F83 C8            [11]  790     ret z
   4F84 3E 76         [ 7]  791         ld a, #0x76
   4F86 CD 4C 46      [17]  792         call set_y_wave 
   4F89 CD A9 46      [17]  793         call generar1entidadWave
   4F8C C9            [10]  794         ret 
                            795     
   4F8D                     796     comprobarEntidades7lvl8:
   4F8D 3A 6C 47      [13]  797      ld a, (level_obstacles)
   4F90 FE 0B         [ 7]  798      cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   4F92 C8            [11]  799      ret z
   4F93 3E 76         [ 7]  800         ld a, #0x76
   4F95 CD 3C 46      [17]  801         call set_y_last_obstacle
   4F98 CD 97 46      [17]  802         call generar1entidad
   4F9B 3E B4         [ 7]  803         ld a, #0xB4
   4F9D CD 3C 46      [17]  804         call set_y_last_obstacle
   4FA0 CD 97 46      [17]  805         call generar1entidad
   4FA3 C9            [10]  806         ret 
                            807 
                            808 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            809 ;;
                            810 ;;
                            811 ;;  NIVEL 9
                            812 ;;
                            813 ;;
                            814 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4FA4                     815 man_game_controller_lvl_9::
   4FA4 3A 6E 60      [13]  816     ld a, (_level_seconds)  
   4FA7 FE 02         [ 7]  817     cp #0x02                      
   4FA9 28 1A         [12]  818     jr z, comprobarEntidades1lvl9
   4FAB FE 03         [ 7]  819     cp #0x03
   4FAD 28 25         [12]  820     jr z, comprobarEntidades2lvl9
   4FAF FE 05         [ 7]  821     cp #0x05
   4FB1 28 30         [12]  822     jr z, comprobarEntidades3lvl9
   4FB3 FE 08         [ 7]  823     cp #0x08
   4FB5 28 3B         [12]  824     jr z, comprobarEntidades4lvl9
   4FB7 FE 0D         [ 7]  825     cp #0x0D
   4FB9 28 58         [12]  826     jr z, comprobarEntidades5lvl9
   4FBB FE 16         [ 7]  827     cp #0x16
   4FBD 28 73         [12]  828     jr z, comprobarEntidades6lvl9
   4FBF FE 19         [ 7]  829     cp #0x19
   4FC1 CA 41 50      [10]  830     jp z, comprobarEntidades7lvl9
   4FC4 C9            [10]  831     ret
                            832 
   4FC5                     833     comprobarEntidades1lvl9:
   4FC5 3A 6C 47      [13]  834     ld a, (level_obstacles)
   4FC8 FE 01         [ 7]  835     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4FCA C8            [11]  836     ret z
   4FCB 3E B4         [ 7]  837         ld a, #0xB4
   4FCD CD 3C 46      [17]  838         call set_y_last_obstacle
   4FD0 CD 97 46      [17]  839         call generar1entidad
   4FD3 C9            [10]  840         ret
                            841     
   4FD4                     842     comprobarEntidades2lvl9:
   4FD4 3A 6C 47      [13]  843     ld a, (level_obstacles)
   4FD7 FE 02         [ 7]  844     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   4FD9 C8            [11]  845     ret z
   4FDA 3E B4         [ 7]  846         ld a, #0xB4
   4FDC CD 3C 46      [17]  847         call set_y_last_obstacle
   4FDF CD 97 46      [17]  848         call generar1entidad
   4FE2 C9            [10]  849         ret
                            850 
   4FE3                     851     comprobarEntidades3lvl9:
   4FE3 3A 6C 47      [13]  852     ld a, (level_obstacles)
   4FE6 FE 03         [ 7]  853     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4FE8 C8            [11]  854     ret z
   4FE9 3E 76         [ 7]  855         ld a, #0x76
   4FEB CD 3C 46      [17]  856         call set_y_last_obstacle
   4FEE CD 97 46      [17]  857         call generar1entidad
   4FF1 C9            [10]  858         ret 
                            859     
   4FF2                     860     comprobarEntidades4lvl9:
   4FF2 3A 6C 47      [13]  861     ld a, (level_obstacles)
   4FF5 FE 05         [ 7]  862     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4FF7 C8            [11]  863     ret z
   4FF8 3E 76         [ 7]  864         ld a, #0x76
   4FFA CD 3C 46      [17]  865         call set_y_last_obstacle
   4FFD 3E 3C         [ 7]  866         ld a,#0x3C
   4FFF CD 44 46      [17]  867         call set_x_last_obstacle
   5002 CD 97 46      [17]  868         call generar1entidad
                            869 
   5005 3E 46         [ 7]  870         ld a,#0x46
   5007 CD 44 46      [17]  871         call set_x_last_obstacle
   500A 3E B4         [ 7]  872         ld a, #0xB4
   500C CD 3C 46      [17]  873         call set_y_last_obstacle
   500F CD 97 46      [17]  874         call generar1entidad
   5012 C9            [10]  875         ret   
                            876 
   5013                     877     comprobarEntidades5lvl9:
   5013 3A 6C 47      [13]  878     ld a, (level_obstacles)
   5016 FE 08         [ 7]  879     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5018 C8            [11]  880     ret z
   5019 3E 76         [ 7]  881         ld a, #0x76
   501B CD 3C 46      [17]  882         call set_y_last_obstacle
   501E CD 97 46      [17]  883         call generar1entidad
                            884 
   5021 3E 86         [ 7]  885         ld a, #0x86
   5023 CD 3C 46      [17]  886         call set_y_last_obstacle
   5026 CD 97 46      [17]  887         call generar1entidad
                            888         
   5029 3E B4         [ 7]  889         ld a, #0xB4
   502B CD 3C 46      [17]  890         call set_y_last_obstacle
   502E CD 97 46      [17]  891         call generar1entidad
   5031 C9            [10]  892         ret 
                            893 
   5032                     894     comprobarEntidades6lvl9:
   5032 3A 6C 47      [13]  895     ld a, (level_obstacles)
   5035 FE 09         [ 7]  896     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5037 C8            [11]  897     ret z
   5038 3E AC         [ 7]  898         ld a, #0xAC
   503A CD 4C 46      [17]  899         call set_y_wave 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   503D CD A9 46      [17]  900         call generar1entidadWave
   5040 C9            [10]  901         ret 
                            902     
   5041                     903     comprobarEntidades7lvl9:
   5041 3A 6C 47      [13]  904      ld a, (level_obstacles)
   5044 FE 0A         [ 7]  905      cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5046 C8            [11]  906      ret z
   5047 3E 76         [ 7]  907         ld a, #0x76
   5049 CD 3C 46      [17]  908         call set_y_last_obstacle 
   504C CD 97 46      [17]  909         call generar1entidad
   504F C9            [10]  910         ret 
                            911 
                            912 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            913 ;;
                            914 ;;
                            915 ;;  NIVEL 10
                            916 ;;
                            917 ;;
                            918 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5050                     919 man_game_controller_lvl_10::
   5050 3A 6E 60      [13]  920     ld a, (_level_seconds)  
   5053 FE 01         [ 7]  921     cp #0x01                      
   5055 28 16         [12]  922     jr z, comprobarEntidades1lvl10
   5057 FE 07         [ 7]  923     cp #0x07
   5059 28 29         [12]  924     jr z, comprobarEntidades2lvl10
   505B FE 0B         [ 7]  925     cp #0x0B
   505D 28 44         [12]  926     jr z, comprobarEntidades3lvl10
   505F FE 11         [ 7]  927     cp #0x11
   5061 28 57         [12]  928     jr z, comprobarEntidades4lvl10
   5063 FE 17         [ 7]  929     cp #0x17
   5065 28 72         [12]  930     jr z, comprobarEntidades5lvl10
   5067 FE 1B         [ 7]  931     cp #0x1B
   5069 CA FA 50      [10]  932     jp z, comprobarEntidades6lvl10
   506C C9            [10]  933     ret
                            934 
   506D                     935     comprobarEntidades1lvl10:
   506D 3A 6C 47      [13]  936     ld a, (level_obstacles)
   5070 FE 02         [ 7]  937     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5072 C8            [11]  938     ret z
   5073 3E 76         [ 7]  939         ld a, #0x76
   5075 CD 3C 46      [17]  940         call set_y_last_obstacle
   5078 CD 97 46      [17]  941         call generar1entidad
                            942 
   507B 3E B4         [ 7]  943         ld a, #0xB4
   507D CD 3C 46      [17]  944         call set_y_last_obstacle
   5080 CD 97 46      [17]  945         call generar1entidad
   5083 C9            [10]  946         ret
                            947 
   5084                     948     comprobarEntidades2lvl10:
   5084 3A 6C 47      [13]  949     ld a, (level_obstacles)
   5087 FE 05         [ 7]  950     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5089 C8            [11]  951     ret z
   508A 3E 76         [ 7]  952         ld a, #0x76
   508C CD 3C 46      [17]  953         call set_y_last_obstacle
   508F CD 97 46      [17]  954         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



                            955         
   5092 3E 86         [ 7]  956         ld a, #0x86
   5094 CD 3C 46      [17]  957         call set_y_last_obstacle
   5097 CD 97 46      [17]  958         call generar1entidad
                            959         
   509A 3E B4         [ 7]  960         ld a, #0xB4
   509C CD 3C 46      [17]  961         call set_y_last_obstacle
   509F CD 97 46      [17]  962         call generar1entidad
   50A2 C9            [10]  963         ret
                            964 
   50A3                     965     comprobarEntidades3lvl10:
   50A3 3A 6C 47      [13]  966     ld a, (level_obstacles)
   50A6 FE 07         [ 7]  967     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   50A8 C8            [11]  968     ret z
   50A9 3E 86         [ 7]  969         ld a, #0x86
   50AB CD 3C 46      [17]  970         call set_y_last_obstacle
   50AE CD 97 46      [17]  971         call generar1entidad
                            972 
   50B1 3E B4         [ 7]  973         ld a, #0xB4
   50B3 CD 3C 46      [17]  974         call set_y_last_obstacle
   50B6 CD 97 46      [17]  975         call generar1entidad
   50B9 C9            [10]  976         ret
                            977 
   50BA                     978     comprobarEntidades4lvl10:
   50BA 3A 6C 47      [13]  979     ld a, (level_obstacles)
   50BD FE 0A         [ 7]  980     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   50BF C8            [11]  981     ret z
   50C0 3E 76         [ 7]  982         ld a, #0x76
   50C2 CD 3C 46      [17]  983         call set_y_last_obstacle
   50C5 CD 97 46      [17]  984         call generar1entidad
                            985         
   50C8 3E A4         [ 7]  986         ld a, #0xA4
   50CA CD 3C 46      [17]  987         call set_y_last_obstacle
   50CD CD 97 46      [17]  988         call generar1entidad
                            989         
   50D0 3E B4         [ 7]  990         ld a, #0xB4
   50D2 CD 3C 46      [17]  991         call set_y_last_obstacle
   50D5 CD 97 46      [17]  992         call generar1entidad
   50D8 C9            [10]  993         ret   
                            994 
   50D9                     995     comprobarEntidades5lvl10:
   50D9 3A 6C 47      [13]  996     ld a, (level_obstacles)
   50DC FE 0C         [ 7]  997     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   50DE C8            [11]  998     ret z
   50DF 3E 76         [ 7]  999         ld a, #0x76
   50E1 CD 3C 46      [17] 1000         call set_y_last_obstacle
   50E4 3E 3C         [ 7] 1001         ld a,#0x3C
   50E6 CD 44 46      [17] 1002         call set_x_last_obstacle
   50E9 CD 97 46      [17] 1003         call generar1entidad
                           1004         
   50EC 3E 46         [ 7] 1005         ld a,#0x46
   50EE CD 44 46      [17] 1006         call set_x_last_obstacle
   50F1 3E B4         [ 7] 1007         ld a, #0xB4
   50F3 CD 3C 46      [17] 1008         call set_y_last_obstacle
   50F6 CD 97 46      [17] 1009         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   50F9 C9            [10] 1010         ret 
                           1011 
   50FA                    1012     comprobarEntidades6lvl10:
   50FA 3A 6C 47      [13] 1013     ld a, (level_obstacles)
   50FD FE 0E         [ 7] 1014     cp #0x0E                ;; Si ya tengo 14 entidades no compruebo ninguna mas
   50FF C8            [11] 1015     ret z
   5100 3E 76         [ 7] 1016         ld a, #0x76
   5102 CD 3C 46      [17] 1017         call set_y_last_obstacle
   5105 3E 3C         [ 7] 1018         ld a,#0x3C
   5107 CD 44 46      [17] 1019         call set_x_last_obstacle
   510A CD 97 46      [17] 1020         call generar1entidad
                           1021         
   510D 3E 43         [ 7] 1022         ld a,#0x43
   510F CD 44 46      [17] 1023         call set_x_last_obstacle
   5112 3E B4         [ 7] 1024         ld a, #0xB4
   5114 CD 3C 46      [17] 1025         call set_y_last_obstacle
   5117 CD 97 46      [17] 1026         call generar1entidad
   511A C9            [10] 1027         ret 
                           1028     
   511B                    1029     comprobarEntidades7lvl10:
   511B 3A 6C 47      [13] 1030      ld a, (level_obstacles)
   511E FE 0F         [ 7] 1031      cp #0x0F                ;; Si ya tengo 15 entidades no compruebo ninguna mas
   5120 C8            [11] 1032      ret z
   5121 3E B4         [ 7] 1033         ld a, #0xB4
   5123 CD 3C 46      [17] 1034         call set_y_last_obstacle 
   5126 CD 97 46      [17] 1035         call generar1entidad
   5129 C9            [10] 1036         ret 
