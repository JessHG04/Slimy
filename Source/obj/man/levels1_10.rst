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
   4A86                      28 man_game_controller_lvl_1::
   4A86 3A 46 60      [13]   29     ld a, (_level_seconds)  
   4A89 FE 06         [ 7]   30     cp #0x06                      
   4A8B 28 11         [12]   31     jr z, comprobarEntidades1lvl1
   4A8D FE 0A         [ 7]   32     cp #0x0A
   4A8F 28 1C         [12]   33     jr z, comprobarEntidades2lvl1
   4A91 FE 0E         [ 7]   34     cp #0x0E
   4A93 28 27         [12]   35     jr z, comprobarEntidades3lvl1
   4A95 FE 14         [ 7]   36     cp #0x14
   4A97 28 32         [12]   37     jr z, comprobarEntidades4lvl1
   4A99 FE 18         [ 7]   38     cp #0x18
   4A9B 28 3D         [12]   39     jr z, comprobarEntidades5lvl1
   4A9D C9            [10]   40     ret
                             41     
   4A9E                      42     comprobarEntidades1lvl1:
   4A9E 3A 44 47      [13]   43     ld a, (level_obstacles)
   4AA1 FE 01         [ 7]   44     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4AA3 C8            [11]   45     ret z
   4AA4 3E B4         [ 7]   46         ld a, #0xB4
   4AA6 CD 14 46      [17]   47         call set_y_last_obstacle
   4AA9 CD 6F 46      [17]   48         call generar1entidad
   4AAC C9            [10]   49         ret
                             50     
   4AAD                      51     comprobarEntidades2lvl1:
   4AAD 3A 44 47      [13]   52     ld a, (level_obstacles)
   4AB0 FE 02         [ 7]   53     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4AB2 C8            [11]   54     ret z
   4AB3 3E 76         [ 7]   55         ld a, #0x76
   4AB5 CD 14 46      [17]   56         call set_y_last_obstacle  
   4AB8 CD 6F 46      [17]   57         call generar1entidad
   4ABB C9            [10]   58         ret
                             59     
   4ABC                      60     comprobarEntidades3lvl1:
   4ABC 3A 44 47      [13]   61     ld a, (level_obstacles)
   4ABF FE 03         [ 7]   62     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4AC1 C8            [11]   63     ret z
   4AC2 3E B4         [ 7]   64         ld a, #0xB4
   4AC4 CD 14 46      [17]   65         call set_y_last_obstacle
   4AC7 CD 6F 46      [17]   66         call generar1entidad
   4ACA C9            [10]   67         ret 
                             68     
   4ACB                      69     comprobarEntidades4lvl1:
   4ACB 3A 44 47      [13]   70     ld a, (level_obstacles)
   4ACE FE 04         [ 7]   71     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4AD0 C8            [11]   72     ret z
   4AD1 3E 76         [ 7]   73         ld a, #0x76
   4AD3 CD 14 46      [17]   74         call set_y_last_obstacle     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   4AD6 CD 6F 46      [17]   75         call generar1entidad
   4AD9 C9            [10]   76         ret        
                             77 
   4ADA                      78     comprobarEntidades5lvl1:
   4ADA 3A 44 47      [13]   79     ld a, (level_obstacles)
   4ADD FE 05         [ 7]   80     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4ADF C8            [11]   81     ret z
   4AE0 3E B4         [ 7]   82         ld a, #0xB4
   4AE2 CD 14 46      [17]   83         call set_y_last_obstacle     
   4AE5 CD 6F 46      [17]   84         call generar1entidad
   4AE8 C9            [10]   85         ret  
                             86 
                             87 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                             88 ;;
                             89 ;;
                             90 ;;  NIVEL 2
                             91 ;;
                             92 ;;
                             93 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4AE9                      94 man_game_controller_lvl_2::
   4AE9 3A 46 60      [13]   95     ld a, (_level_seconds)  
   4AEC FE 02         [ 7]   96     cp #0x02                      
   4AEE 28 1D         [12]   97     jr z, comprobarEntidades1lvl2
   4AF0 FE 04         [ 7]   98     cp #0x04
   4AF2 28 28         [12]   99     jr z, comprobarEntidades2lvl2
   4AF4 FE 07         [ 7]  100     cp #0x07
   4AF6 28 33         [12]  101     jr z, comprobarEntidades3lvl2
   4AF8 FE 0A         [ 7]  102     cp #0x0A
   4AFA 28 3E         [12]  103     jr z, comprobarEntidades4lvl2
   4AFC FE 0D         [ 7]  104     cp #0x0D
   4AFE 28 49         [12]  105     jr z, comprobarEntidades5lvl2
   4B00 FE 0E         [ 7]  106     cp #0x0E
   4B02 28 54         [12]  107     jr z, comprobarEntidades6lvl2
   4B04 FE 12         [ 7]  108     cp #0x12
   4B06 28 5F         [12]  109     jr z, comprobarEntidades7lvl2
   4B08 FE 17         [ 7]  110     cp #0x17
   4B0A 28 6A         [12]  111     jr z, comprobarEntidades8lvl2
   4B0C C9            [10]  112     ret
                            113     
   4B0D                     114     comprobarEntidades1lvl2:
   4B0D 3A 44 47      [13]  115     ld a, (level_obstacles)
   4B10 FE 01         [ 7]  116     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4B12 C8            [11]  117     ret z
   4B13 3E 76         [ 7]  118         ld a, #0x76
   4B15 CD 14 46      [17]  119         call set_y_last_obstacle 
   4B18 CD 6F 46      [17]  120         call generar1entidad
   4B1B C9            [10]  121         ret
                            122     
   4B1C                     123     comprobarEntidades2lvl2:
   4B1C 3A 44 47      [13]  124     ld a, (level_obstacles)
   4B1F FE 02         [ 7]  125     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4B21 C8            [11]  126     ret z
   4B22 3E B4         [ 7]  127         ld a, #0xB4
   4B24 CD 14 46      [17]  128         call set_y_last_obstacle 
   4B27 CD 6F 46      [17]  129         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   4B2A C9            [10]  130         ret  
                            131     
   4B2B                     132     comprobarEntidades3lvl2:
   4B2B 3A 44 47      [13]  133     ld a, (level_obstacles)
   4B2E FE 03         [ 7]  134     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4B30 C8            [11]  135     ret z
   4B31 3E 76         [ 7]  136         ld a, #0x76
   4B33 CD 14 46      [17]  137         call set_y_last_obstacle 
   4B36 CD 6F 46      [17]  138         call generar1entidad
   4B39 C9            [10]  139         ret 
                            140     
   4B3A                     141     comprobarEntidades4lvl2:
   4B3A 3A 44 47      [13]  142     ld a, (level_obstacles)
   4B3D FE 04         [ 7]  143     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4B3F C8            [11]  144     ret  z
   4B40 3E 76         [ 7]  145         ld a, #0x76
   4B42 CD 14 46      [17]  146         call set_y_last_obstacle 
   4B45 CD 6F 46      [17]  147         call generar1entidad
   4B48 C9            [10]  148         ret 
                            149 
   4B49                     150     comprobarEntidades5lvl2:    
   4B49 3A 44 47      [13]  151     ld a, (level_obstacles)
   4B4C FE 05         [ 7]  152     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4B4E C8            [11]  153     ret z
   4B4F 3E B4         [ 7]  154         ld a, #0xB4
   4B51 CD 14 46      [17]  155         call set_y_last_obstacle 
   4B54 CD 6F 46      [17]  156         call generar1entidad
   4B57 C9            [10]  157         ret
                            158     
   4B58                     159     comprobarEntidades6lvl2:    
   4B58 3A 44 47      [13]  160     ld a, (level_obstacles)
   4B5B FE 06         [ 7]  161     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4B5D C8            [11]  162     ret z
   4B5E 3E 96         [ 7]  163         ld a, #0x96
   4B60 CD 14 46      [17]  164         call set_y_last_obstacle 
   4B63 CD 6F 46      [17]  165         call generar1entidad
   4B66 C9            [10]  166         ret   
                            167     
   4B67                     168     comprobarEntidades7lvl2:
   4B67 3A 44 47      [13]  169     ld a, (level_obstacles)
   4B6A FE 07         [ 7]  170     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4B6C C8            [11]  171     ret z
   4B6D 3E 76         [ 7]  172         ld a, #0x76
   4B6F CD 14 46      [17]  173         call set_y_last_obstacle 
   4B72 CD 6F 46      [17]  174         call generar1entidad
   4B75 C9            [10]  175         ret   
                            176 
   4B76                     177     comprobarEntidades8lvl2:
   4B76 3A 44 47      [13]  178     ld a, (level_obstacles)
   4B79 FE 08         [ 7]  179     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4B7B C8            [11]  180     ret z
   4B7C 3E B4         [ 7]  181         ld a, #0xB4
   4B7E CD 14 46      [17]  182         call set_y_last_obstacle 
   4B81 CD 6F 46      [17]  183         call generar1entidad
   4B84 C9            [10]  184         ret   
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
   4B85                     193 man_game_controller_lvl_3::
   4B85 3A 46 60      [13]  194     ld a, (_level_seconds)  
   4B88 FE 02         [ 7]  195     cp #0x02                      
   4B8A 28 1A         [12]  196     jr z, comprobarEntidades1lvl3
   4B8C FE 04         [ 7]  197     cp #0x04
   4B8E 28 25         [12]  198     jr z, comprobarEntidades2lvl3
   4B90 FE 06         [ 7]  199     cp #0x06
   4B92 28 30         [12]  200     jr z, comprobarEntidades3lvl3
   4B94 FE 09         [ 7]  201     cp #0x09
   4B96 28 3B         [12]  202     jr z, comprobarEntidades4lvl3
   4B98 FE 12         [ 7]  203     cp #0x12
   4B9A 28 46         [12]  204     jr z, comprobarEntidades5lvl3
   4B9C FE 15         [ 7]  205     cp #0x15
   4B9E 28 51         [12]  206     jr z, comprobarEntidades6lvl3
   4BA0 FE 18         [ 7]  207     cp #0x18
   4BA2 CA 00 4C      [10]  208     jp z, comprobarEntidades7lvl3
   4BA5 C9            [10]  209     ret
                            210 
   4BA6                     211     comprobarEntidades1lvl3:
   4BA6 3A 44 47      [13]  212     ld a, (level_obstacles)
   4BA9 FE 01         [ 7]  213     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4BAB C8            [11]  214     ret z
   4BAC 3E B4         [ 7]  215         ld a, #0xB4
   4BAE CD 14 46      [17]  216         call set_y_last_obstacle
   4BB1 CD 6F 46      [17]  217         call generar1entidad
   4BB4 C9            [10]  218         ret
                            219     
   4BB5                     220     comprobarEntidades2lvl3:
   4BB5 3A 44 47      [13]  221     ld a, (level_obstacles)
   4BB8 FE 02         [ 7]  222     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4BBA C8            [11]  223     ret z
   4BBB 3E AC         [ 7]  224         ld a, #0xAC
   4BBD CD 14 46      [17]  225         call set_y_last_obstacle
   4BC0 CD 6F 46      [17]  226         call generar1entidad    
   4BC3 C9            [10]  227         ret
                            228 
   4BC4                     229     comprobarEntidades3lvl3:
   4BC4 3A 44 47      [13]  230     ld a, (level_obstacles)
   4BC7 FE 03         [ 7]  231     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4BC9 C8            [11]  232     ret z
   4BCA 3E 76         [ 7]  233         ld a, #0x76
   4BCC CD 14 46      [17]  234         call set_y_last_obstacle
   4BCF CD 6F 46      [17]  235         call generar1entidad
   4BD2 C9            [10]  236         ret 
                            237     
   4BD3                     238     comprobarEntidades4lvl3:
   4BD3 3A 44 47      [13]  239     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   4BD6 FE 04         [ 7]  240     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4BD8 C8            [11]  241     ret z
   4BD9 3E B4         [ 7]  242         ld a, #0xB4
   4BDB CD 14 46      [17]  243         call set_y_last_obstacle
   4BDE CD 6F 46      [17]  244         call generar1entidad
   4BE1 C9            [10]  245         ret   
                            246 
   4BE2                     247     comprobarEntidades5lvl3:
   4BE2 3A 44 47      [13]  248     ld a, (level_obstacles)
   4BE5 FE 05         [ 7]  249     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4BE7 C8            [11]  250     ret z
   4BE8 3E 76         [ 7]  251         ld a, #0x76
   4BEA CD 14 46      [17]  252         call set_y_last_obstacle
   4BED CD 6F 46      [17]  253         call generar1entidad
   4BF0 C9            [10]  254         ret 
                            255 
   4BF1                     256     comprobarEntidades6lvl3:
   4BF1 3A 44 47      [13]  257     ld a, (level_obstacles)
   4BF4 FE 06         [ 7]  258     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4BF6 C8            [11]  259     ret z
   4BF7 3E 96         [ 7]  260         ld a, #0x96
   4BF9 CD 14 46      [17]  261         call set_y_last_obstacle
   4BFC CD 6F 46      [17]  262         call generar1entidad
   4BFF C9            [10]  263         ret 
                            264     
   4C00                     265     comprobarEntidades7lvl3:
   4C00 3A 44 47      [13]  266      ld a, (level_obstacles)
   4C03 FE 07         [ 7]  267      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4C05 C8            [11]  268      ret z
   4C06 3E B4         [ 7]  269         ld a, #0xB4
   4C08 CD 14 46      [17]  270         call set_y_last_obstacle
   4C0B CD 6F 46      [17]  271         call generar1entidad
   4C0E C9            [10]  272         ret 
                            273 
                            274 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            275 ;;
                            276 ;;
                            277 ;;  NIVEL 4
                            278 ;;
                            279 ;;
                            280 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4C0F                     281 man_game_controller_lvl_4::
   4C0F 3A 46 60      [13]  282     ld a, (_level_seconds)  
   4C12 FE 02         [ 7]  283     cp #0x02                      
   4C14 28 25         [12]  284     jr z, comprobarEntidades1lvl4
   4C16 FE 05         [ 7]  285     cp #0x05
   4C18 28 30         [12]  286     jr z, comprobarEntidades2lvl4
   4C1A FE 07         [ 7]  287     cp #0x07
   4C1C 28 3B         [12]  288     jr z, comprobarEntidades3lvl4
   4C1E FE 08         [ 7]  289     cp #0x08
   4C20 28 46         [12]  290     jr z, comprobarEntidades4lvl4
   4C22 FE 0B         [ 7]  291     cp #0x0B
   4C24 28 51         [12]  292     jr z, comprobarEntidades5lvl4
   4C26 FE 0F         [ 7]  293     cp #0x0F
   4C28 CA 86 4C      [10]  294     jp z, comprobarEntidades6lvl4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   4C2B FE 12         [ 7]  295     cp #0x12
   4C2D CA 95 4C      [10]  296     jp z, comprobarEntidades7lvl4
   4C30 FE 16         [ 7]  297     cp #0x16
   4C32 CA A4 4C      [10]  298     jp z, comprobarEntidades8lvl4
   4C35 FE 17         [ 7]  299     cp #0x17
   4C37 CA B3 4C      [10]  300     jp z, comprobarEntidades9lvl4
   4C3A C9            [10]  301     ret
                            302 
   4C3B                     303     comprobarEntidades1lvl4:
   4C3B 3A 44 47      [13]  304     ld a, (level_obstacles)
   4C3E FE 01         [ 7]  305     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4C40 C8            [11]  306     ret z
   4C41 3E B4         [ 7]  307         ld a, #0xB4
   4C43 CD 14 46      [17]  308         call set_y_last_obstacle 
   4C46 CD 6F 46      [17]  309         call generar1entidad
   4C49 C9            [10]  310         ret
                            311     
   4C4A                     312     comprobarEntidades2lvl4:
   4C4A 3A 44 47      [13]  313     ld a, (level_obstacles)
   4C4D FE 02         [ 7]  314     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4C4F C8            [11]  315     ret z
   4C50 3E 76         [ 7]  316         ld a, #0x76
   4C52 CD 14 46      [17]  317         call set_y_last_obstacle 
   4C55 CD 6F 46      [17]  318         call generar1entidad    
   4C58 C9            [10]  319         ret
                            320 
   4C59                     321     comprobarEntidades3lvl4:
   4C59 3A 44 47      [13]  322     ld a, (level_obstacles)
   4C5C FE 03         [ 7]  323     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4C5E C8            [11]  324     ret z
   4C5F 3E 76         [ 7]  325         ld a, #0x76
   4C61 CD 14 46      [17]  326         call set_y_last_obstacle 
   4C64 CD 6F 46      [17]  327         call generar1entidad
   4C67 C9            [10]  328         ret 
                            329     
   4C68                     330     comprobarEntidades4lvl4:
   4C68 3A 44 47      [13]  331     ld a, (level_obstacles)
   4C6B FE 04         [ 7]  332     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4C6D C8            [11]  333     ret z
   4C6E 3E B4         [ 7]  334         ld a, #0xB4
   4C70 CD 14 46      [17]  335         call set_y_last_obstacle 
   4C73 CD 6F 46      [17]  336         call generar1entidad
   4C76 C9            [10]  337         ret   
                            338 
   4C77                     339     comprobarEntidades5lvl4:
   4C77 3A 44 47      [13]  340     ld a, (level_obstacles)
   4C7A FE 05         [ 7]  341     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4C7C C8            [11]  342     ret z
   4C7D 3E 76         [ 7]  343         ld a, #0x76
   4C7F CD 24 46      [17]  344         call set_y_wave
   4C82 CD 81 46      [17]  345         call generar1entidadWave
   4C85 C9            [10]  346         ret 
                            347 
   4C86                     348     comprobarEntidades6lvl4:
   4C86 3A 44 47      [13]  349     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   4C89 FE 06         [ 7]  350     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4C8B C8            [11]  351     ret z
   4C8C 3E B4         [ 7]  352         ld a, #0xB4
   4C8E CD 14 46      [17]  353         call set_y_last_obstacle 
   4C91 CD 6F 46      [17]  354         call generar1entidad
   4C94 C9            [10]  355         ret 
                            356     
   4C95                     357     comprobarEntidades7lvl4:
   4C95 3A 44 47      [13]  358      ld a, (level_obstacles)
   4C98 FE 07         [ 7]  359      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4C9A C8            [11]  360      ret z
   4C9B 3E 76         [ 7]  361         ld a, #0x76
   4C9D CD 14 46      [17]  362         call set_y_last_obstacle 
   4CA0 CD 6F 46      [17]  363         call generar1entidad
   4CA3 C9            [10]  364         ret 
                            365 
   4CA4                     366     comprobarEntidades8lvl4:
   4CA4 3A 44 47      [13]  367     ld a, (level_obstacles)
   4CA7 FE 08         [ 7]  368     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4CA9 C8            [11]  369     ret z
   4CAA 3E 76         [ 7]  370         ld a, #0x76
   4CAC CD 14 46      [17]  371         call set_y_last_obstacle 
   4CAF CD 6F 46      [17]  372         call generar1entidad
   4CB2 C9            [10]  373         ret 
                            374     
   4CB3                     375     comprobarEntidades9lvl4:
   4CB3 3A 44 47      [13]  376      ld a, (level_obstacles)
   4CB6 FE 09         [ 7]  377      cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   4CB8 C8            [11]  378      ret z
   4CB9 3E B4         [ 7]  379         ld a, #0xB4
   4CBB CD 14 46      [17]  380         call set_y_last_obstacle 
   4CBE CD 6F 46      [17]  381         call generar1entidad
   4CC1 C9            [10]  382         ret 
                            383 
                            384 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            385 ;;
                            386 ;;
                            387 ;;  NIVEL 5
                            388 ;;
                            389 ;;
                            390 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4CC2                     391 man_game_controller_lvl_5::
   4CC2 3A 46 60      [13]  392     ld a, (_level_seconds)  
   4CC5 FE 02         [ 7]  393     cp #0x02                      
   4CC7 28 1F         [12]  394     jr z, comprobarEntidades1lvl5
   4CC9 FE 03         [ 7]  395     cp #0x03
   4CCB 28 2A         [12]  396     jr z, comprobarEntidades2lvl5
   4CCD FE 06         [ 7]  397     cp #0x06
   4CCF 28 35         [12]  398     jr z, comprobarEntidades3lvl5
   4CD1 FE 07         [ 7]  399     cp #0x07
   4CD3 28 40         [12]  400     jr z, comprobarEntidades4lvl5
   4CD5 FE 0B         [ 7]  401     cp #0x0B
   4CD7 28 4B         [12]  402     jr z, comprobarEntidades5lvl5
   4CD9 FE 0F         [ 7]  403     cp #0x0F
   4CDB 28 56         [12]  404     jr z, comprobarEntidades6lvl5
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   4CDD FE 13         [ 7]  405     cp #0x13
   4CDF CA 42 4D      [10]  406     jp z, comprobarEntidades7lvl5
   4CE2 FE 17         [ 7]  407     cp #0x17
   4CE4 CA 51 4D      [10]  408     jp z, comprobarEntidades8lvl5
   4CE7 C9            [10]  409     ret
                            410 
   4CE8                     411     comprobarEntidades1lvl5:
   4CE8 3A 44 47      [13]  412     ld a, (level_obstacles)
   4CEB FE 01         [ 7]  413     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4CED C8            [11]  414     ret z
   4CEE 3E B4         [ 7]  415         ld a, #0xB4
   4CF0 CD 14 46      [17]  416         call set_y_last_obstacle 
   4CF3 CD 6F 46      [17]  417         call generar1entidad
   4CF6 C9            [10]  418         ret
                            419     
   4CF7                     420     comprobarEntidades2lvl5:
   4CF7 3A 44 47      [13]  421     ld a, (level_obstacles)
   4CFA FE 02         [ 7]  422     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4CFC C8            [11]  423     ret z
   4CFD 3E A4         [ 7]  424         ld a, #0xA4
   4CFF CD 14 46      [17]  425         call set_y_last_obstacle 
   4D02 CD 6F 46      [17]  426         call generar1entidad
   4D05 C9            [10]  427         ret   
                            428 
   4D06                     429     comprobarEntidades3lvl5:
   4D06 3A 44 47      [13]  430     ld a, (level_obstacles)
   4D09 FE 03         [ 7]  431     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4D0B C8            [11]  432     ret z
   4D0C 3E 76         [ 7]  433         ld a, #0x76
   4D0E CD 14 46      [17]  434         call set_y_last_obstacle 
   4D11 CD 6F 46      [17]  435         call generar1entidad
   4D14 C9            [10]  436         ret 
                            437     
   4D15                     438     comprobarEntidades4lvl5:
   4D15 3A 44 47      [13]  439     ld a, (level_obstacles)
   4D18 FE 04         [ 7]  440     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4D1A C8            [11]  441     ret z
   4D1B 3E 96         [ 7]  442         ld a, #0x96
   4D1D CD 14 46      [17]  443         call set_y_last_obstacle 
   4D20 CD 6F 46      [17]  444         call generar1entidad
   4D23 C9            [10]  445         ret   
                            446 
   4D24                     447     comprobarEntidades5lvl5:
   4D24 3A 44 47      [13]  448     ld a, (level_obstacles)
   4D27 FE 05         [ 7]  449     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4D29 C8            [11]  450     ret z
   4D2A 3E AC         [ 7]  451         ld a, #0xAC
   4D2C CD 24 46      [17]  452         call set_y_wave 
   4D2F CD 81 46      [17]  453         call generar1entidadWave
   4D32 C9            [10]  454         ret 
                            455 
   4D33                     456     comprobarEntidades6lvl5:
   4D33 3A 44 47      [13]  457     ld a, (level_obstacles)
   4D36 FE 06         [ 7]  458     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4D38 C8            [11]  459     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   4D39 3E 76         [ 7]  460         ld a, #0x76
   4D3B CD 24 46      [17]  461         call set_y_wave 
   4D3E CD 81 46      [17]  462         call generar1entidadWave
   4D41 C9            [10]  463         ret 
                            464     
   4D42                     465     comprobarEntidades7lvl5:
   4D42 3A 44 47      [13]  466      ld a, (level_obstacles)
   4D45 FE 07         [ 7]  467      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4D47 C8            [11]  468      ret z
   4D48 3E AC         [ 7]  469         ld a, #0xAC
   4D4A CD 24 46      [17]  470         call set_y_wave 
   4D4D CD 81 46      [17]  471         call generar1entidadWave
   4D50 C9            [10]  472         ret 
                            473 
   4D51                     474     comprobarEntidades8lvl5:
   4D51 3A 44 47      [13]  475      ld a, (level_obstacles)
   4D54 FE 08         [ 7]  476      cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4D56 C8            [11]  477      ret z
   4D57 3E AC         [ 7]  478         ld a, #0xAC
   4D59 CD 24 46      [17]  479         call set_y_wave 
   4D5C CD 81 46      [17]  480         call generar1entidadWave
   4D5F C9            [10]  481         ret 
                            482 
                            483 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            484 ;;
                            485 ;;
                            486 ;;  NIVEL 6
                            487 ;;
                            488 ;;
                            489 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4D60                     490 man_game_controller_lvl_6::
   4D60 3A 46 60      [13]  491     ld a, (_level_seconds)  
   4D63 FE 01         [ 7]  492     cp #0x01                      
   4D65 28 1F         [12]  493     jr z, comprobarEntidades1lvl6
   4D67 FE 05         [ 7]  494     cp #0x05
   4D69 28 2A         [12]  495     jr z, comprobarEntidades2lvl6
   4D6B FE 09         [ 7]  496     cp #0x09
   4D6D 28 47         [12]  497     jr z, comprobarEntidades3lvl6
   4D6F FE 0D         [ 7]  498     cp #0x0D
   4D71 28 52         [12]  499     jr z, comprobarEntidades4lvl6
   4D73 FE 11         [ 7]  500     cp #0x11
   4D75 28 6F         [12]  501     jr z, comprobarEntidades5lvl6
   4D77 FE 15         [ 7]  502     cp #0x15
   4D79 28 7A         [12]  503     jr z, comprobarEntidades6lvl6
   4D7B FE 18         [ 7]  504     cp #0x18
   4D7D CA 04 4E      [10]  505     jp z, comprobarEntidades7lvl6
   4D80 FE 19         [ 7]  506     cp #0x19
   4D82 CA 13 4E      [10]  507     jp z, comprobarEntidades8lvl6
   4D85 C9            [10]  508     ret
                            509 
   4D86                     510     comprobarEntidades1lvl6:
   4D86 3A 44 47      [13]  511     ld a, (level_obstacles)
   4D89 FE 01         [ 7]  512     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4D8B C8            [11]  513     ret z
   4D8C 3E AC         [ 7]  514         ld a, #0xAC
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   4D8E CD 24 46      [17]  515         call set_y_wave 
   4D91 CD 81 46      [17]  516         call generar1entidadWave
   4D94 C9            [10]  517         ret
                            518     
   4D95                     519     comprobarEntidades2lvl6:
   4D95 3A 44 47      [13]  520     ld a, (level_obstacles)
   4D98 FE 03         [ 7]  521     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4D9A C8            [11]  522     ret z
   4D9B 3E 76         [ 7]  523         ld a, #0x76
   4D9D CD 14 46      [17]  524         call set_y_last_obstacle
   4DA0 3E 3C         [ 7]  525         ld a,#0x3C
   4DA2 CD 1C 46      [17]  526         call set_x_last_obstacle
   4DA5 CD 6F 46      [17]  527         call generar1entidad
                            528         
   4DA8 3E 46         [ 7]  529         ld a,#0x46
   4DAA CD 1C 46      [17]  530         call set_x_last_obstacle
   4DAD 3E B4         [ 7]  531         ld a, #0xB4
   4DAF CD 14 46      [17]  532         call set_y_last_obstacle
   4DB2 CD 6F 46      [17]  533         call generar1entidad
   4DB5 C9            [10]  534         ret
                            535 
   4DB6                     536     comprobarEntidades3lvl6:
   4DB6 3A 44 47      [13]  537     ld a, (level_obstacles)
   4DB9 FE 04         [ 7]  538     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4DBB C8            [11]  539     ret z
   4DBC 3E AC         [ 7]  540         ld a, #0xAC
   4DBE CD 24 46      [17]  541         call set_y_wave 
   4DC1 CD 81 46      [17]  542         call generar1entidadWave
   4DC4 C9            [10]  543         ret
                            544 
   4DC5                     545     comprobarEntidades4lvl6:
   4DC5 3A 44 47      [13]  546     ld a, (level_obstacles)
   4DC8 FE 06         [ 7]  547     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4DCA C8            [11]  548     ret z
   4DCB 3E 76         [ 7]  549         ld a, #0x76
   4DCD CD 14 46      [17]  550         call set_y_last_obstacle
   4DD0 3E 3C         [ 7]  551         ld a,#0x3C
   4DD2 CD 1C 46      [17]  552         call set_x_last_obstacle
   4DD5 CD 6F 46      [17]  553         call generar1entidad
                            554 
   4DD8 3E 46         [ 7]  555         ld a,#0x46
   4DDA CD 1C 46      [17]  556         call set_x_last_obstacle
   4DDD 3E B4         [ 7]  557         ld a, #0xB4
   4DDF CD 14 46      [17]  558         call set_y_last_obstacle
   4DE2 CD 6F 46      [17]  559         call generar1entidad
   4DE5 C9            [10]  560         ret   
                            561 
   4DE6                     562     comprobarEntidades5lvl6:
   4DE6 3A 44 47      [13]  563     ld a, (level_obstacles)
   4DE9 FE 07         [ 7]  564     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4DEB C8            [11]  565     ret z
   4DEC 3E 76         [ 7]  566         ld a, #0x76
   4DEE CD 24 46      [17]  567         call set_y_wave 
   4DF1 CD 81 46      [17]  568         call generar1entidadWave
   4DF4 C9            [10]  569         ret 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



                            570 
   4DF5                     571     comprobarEntidades6lvl6:
   4DF5 3A 44 47      [13]  572     ld a, (level_obstacles)
   4DF8 FE 08         [ 7]  573     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4DFA C8            [11]  574     ret z
   4DFB 3E AC         [ 7]  575         ld a, #0xAC
   4DFD CD 24 46      [17]  576         call set_y_wave 
   4E00 CD 81 46      [17]  577         call generar1entidadWave
   4E03 C9            [10]  578         ret 
                            579     
   4E04                     580     comprobarEntidades7lvl6:
   4E04 3A 44 47      [13]  581      ld a, (level_obstacles)
   4E07 FE 09         [ 7]  582      cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   4E09 C8            [11]  583      ret z
   4E0A 3E B4         [ 7]  584         ld a, #0xB4
   4E0C CD 14 46      [17]  585         call set_y_last_obstacle 
   4E0F CD 6F 46      [17]  586         call generar1entidad
   4E12 C9            [10]  587         ret 
                            588     
   4E13                     589     comprobarEntidades8lvl6:
   4E13 3A 44 47      [13]  590      ld a, (level_obstacles)
   4E16 FE 0A         [ 7]  591      cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   4E18 C8            [11]  592      ret z
   4E19 3E 76         [ 7]  593         ld a, #0x76
   4E1B CD 14 46      [17]  594         call set_y_last_obstacle 
   4E1E CD 6F 46      [17]  595         call generar1entidad
   4E21 C9            [10]  596         ret 
                            597 
                            598 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            599 ;;
                            600 ;;
                            601 ;;  NIVEL 7
                            602 ;;
                            603 ;;
                            604 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4E22                     605 man_game_controller_lvl_7::
   4E22 3A 46 60      [13]  606     ld a, (_level_seconds)  
   4E25 FE 01         [ 7]  607     cp #0x01                      
   4E27 28 1F         [12]  608     jr z, comprobarEntidades1lvl7
   4E29 FE 05         [ 7]  609     cp #0x05
   4E2B 28 2A         [12]  610     jr z, comprobarEntidades2lvl7
   4E2D FE 06         [ 7]  611     cp #0x06
   4E2F 28 35         [12]  612     jr z, comprobarEntidades3lvl7
   4E31 FE 08         [ 7]  613     cp #0x08
   4E33 28 40         [12]  614     jr z, comprobarEntidades4lvl7
   4E35 FE 0C         [ 7]  615     cp #0x0C
   4E37 28 4B         [12]  616     jr z, comprobarEntidades5lvl7
   4E39 FE 11         [ 7]  617     cp #0x11
   4E3B 28 56         [12]  618     jr z, comprobarEntidades6lvl7
   4E3D FE 15         [ 7]  619     cp #0x15
   4E3F CA A2 4E      [10]  620     jp z, comprobarEntidades7lvl7
   4E42 FE 19         [ 7]  621     cp #0x19
   4E44 CA B1 4E      [10]  622     jp z, comprobarEntidades8lvl7
   4E47 C9            [10]  623     ret
                            624 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   4E48                     625     comprobarEntidades1lvl7:
   4E48 3A 44 47      [13]  626     ld a, (level_obstacles)
   4E4B FE 01         [ 7]  627     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4E4D C8            [11]  628     ret z
   4E4E 3E AC         [ 7]  629         ld a, #0xAC
   4E50 CD 24 46      [17]  630         call set_y_wave 
   4E53 CD 81 46      [17]  631         call generar1entidadWave
   4E56 C9            [10]  632         ret
                            633     
   4E57                     634     comprobarEntidades2lvl7:
   4E57 3A 44 47      [13]  635     ld a, (level_obstacles)
   4E5A FE 02         [ 7]  636     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4E5C C8            [11]  637     ret z
   4E5D 3E 76         [ 7]  638         ld a, #0x76
   4E5F CD 14 46      [17]  639         call set_y_last_obstacle 
   4E62 CD 6F 46      [17]  640         call generar1entidad
   4E65 C9            [10]  641         ret   
                            642 
   4E66                     643     comprobarEntidades3lvl7:
   4E66 3A 44 47      [13]  644     ld a, (level_obstacles)
   4E69 FE 03         [ 7]  645     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4E6B C8            [11]  646     ret z
   4E6C 3E B4         [ 7]  647         ld a, #0xB4
   4E6E CD 14 46      [17]  648         call set_y_last_obstacle 
   4E71 CD 6F 46      [17]  649         call generar1entidad
   4E74 C9            [10]  650         ret
                            651 
   4E75                     652     comprobarEntidades4lvl7:
   4E75 3A 44 47      [13]  653     ld a, (level_obstacles)
   4E78 FE 04         [ 7]  654     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4E7A C8            [11]  655     ret z
   4E7B 3E 76         [ 7]  656         ld a, #0x76
   4E7D CD 14 46      [17]  657         call set_y_last_obstacle 
   4E80 CD 6F 46      [17]  658         call generar1entidad
   4E83 C9            [10]  659         ret   
                            660 
   4E84                     661     comprobarEntidades5lvl7:
   4E84 3A 44 47      [13]  662     ld a, (level_obstacles)
   4E87 FE 05         [ 7]  663     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4E89 C8            [11]  664     ret z
   4E8A 3E AC         [ 7]  665         ld a, #0xAC
   4E8C CD 24 46      [17]  666         call set_y_wave 
   4E8F CD 81 46      [17]  667         call generar1entidadWave
   4E92 C9            [10]  668         ret 
                            669 
   4E93                     670     comprobarEntidades6lvl7:
   4E93 3A 44 47      [13]  671     ld a, (level_obstacles)
   4E96 FE 06         [ 7]  672     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   4E98 C8            [11]  673     ret z
   4E99 3E 76         [ 7]  674         ld a, #0x76
   4E9B CD 24 46      [17]  675         call set_y_wave 
   4E9E CD 81 46      [17]  676         call generar1entidadWave
   4EA1 C9            [10]  677         ret 
                            678     
   4EA2                     679     comprobarEntidades7lvl7:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   4EA2 3A 44 47      [13]  680      ld a, (level_obstacles)
   4EA5 FE 07         [ 7]  681      cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4EA7 C8            [11]  682      ret z
   4EA8 3E AC         [ 7]  683         ld a, #0xAC
   4EAA CD 24 46      [17]  684         call set_y_wave 
   4EAD CD 81 46      [17]  685         call generar1entidadWave
   4EB0 C9            [10]  686         ret 
                            687 
   4EB1                     688     comprobarEntidades8lvl7:
   4EB1 3A 44 47      [13]  689      ld a, (level_obstacles)
   4EB4 FE 09         [ 7]  690      cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   4EB6 C8            [11]  691      ret z
   4EB7 3E 76         [ 7]  692         ld a, #0x76
   4EB9 CD 14 46      [17]  693         call set_y_last_obstacle
   4EBC CD 6F 46      [17]  694         call generar1entidad
                            695 
   4EBF 3E B4         [ 7]  696         ld a, #0xB4
   4EC1 CD 14 46      [17]  697         call set_y_last_obstacle
   4EC4 CD 6F 46      [17]  698         call generar1entidad
   4EC7 C9            [10]  699         ret 
                            700 
                            701 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            702 ;;
                            703 ;;
                            704 ;;  NIVEL 8
                            705 ;;
                            706 ;;
                            707 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4EC8                     708 man_game_controller_lvl_8::
   4EC8 3A 46 60      [13]  709     ld a, (_level_seconds)  
   4ECB FE 02         [ 7]  710     cp #0x02                      
   4ECD 28 1A         [12]  711     jr z, comprobarEntidades1lvl8
   4ECF FE 06         [ 7]  712     cp #0x06
   4ED1 28 2D         [12]  713     jr z, comprobarEntidades2lvl8
   4ED3 FE 09         [ 7]  714     cp #0x09
   4ED5 28 40         [12]  715     jr z, comprobarEntidades3lvl8
   4ED7 FE 0C         [ 7]  716     cp #0x0C
   4ED9 28 4B         [12]  717     jr z, comprobarEntidades4lvl8
   4EDB FE 12         [ 7]  718     cp #0x12
   4EDD 28 68         [12]  719     jr z, comprobarEntidades5lvl8
   4EDF FE 15         [ 7]  720     cp #0x15
   4EE1 28 73         [12]  721     jr z, comprobarEntidades6lvl8
   4EE3 FE 1A         [ 7]  722     cp #0x1A
   4EE5 CA 65 4F      [10]  723     jp z, comprobarEntidades7lvl8
   4EE8 C9            [10]  724     ret
                            725 
   4EE9                     726     comprobarEntidades1lvl8:
   4EE9 3A 44 47      [13]  727     ld a, (level_obstacles)
   4EEC FE 02         [ 7]  728     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   4EEE C8            [11]  729     ret z
   4EEF 3E 76         [ 7]  730         ld a, #0x76
   4EF1 CD 14 46      [17]  731         call set_y_last_obstacle
   4EF4 CD 6F 46      [17]  732         call generar1entidad
                            733 
   4EF7 3E B4         [ 7]  734         ld a, #0xB4
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   4EF9 CD 14 46      [17]  735         call set_y_last_obstacle
   4EFC CD 6F 46      [17]  736         call generar1entidad
   4EFF C9            [10]  737         ret
                            738 
   4F00                     739     comprobarEntidades2lvl8:
   4F00 3A 44 47      [13]  740     ld a, (level_obstacles)
   4F03 FE 04         [ 7]  741     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   4F05 C8            [11]  742     ret z
   4F06 3E 76         [ 7]  743         ld a, #0x76
   4F08 CD 14 46      [17]  744         call set_y_last_obstacle
   4F0B CD 6F 46      [17]  745         call generar1entidad
                            746         
   4F0E 3E B4         [ 7]  747         ld a, #0xB4
   4F10 CD 14 46      [17]  748         call set_y_last_obstacle
   4F13 CD 6F 46      [17]  749         call generar1entidad
   4F16 C9            [10]  750         ret
                            751     
   4F17                     752     comprobarEntidades3lvl8:
   4F17 3A 44 47      [13]  753     ld a, (level_obstacles)
   4F1A FE 05         [ 7]  754     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4F1C C8            [11]  755     ret z
   4F1D 3E 76         [ 7]  756         ld a, #0x76
   4F1F CD 14 46      [17]  757         call set_y_last_obstacle
   4F22 CD 6F 46      [17]  758         call generar1entidad
   4F25 C9            [10]  759         ret
                            760 
   4F26                     761     comprobarEntidades4lvl8:
   4F26 3A 44 47      [13]  762     ld a, (level_obstacles)
   4F29 FE 07         [ 7]  763     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   4F2B C8            [11]  764     ret z
   4F2C 3E 76         [ 7]  765         ld a, #0x76
   4F2E CD 14 46      [17]  766         call set_y_last_obstacle
   4F31 3E 3C         [ 7]  767         ld a,#0x3C
   4F33 CD 1C 46      [17]  768         call set_x_last_obstacle
   4F36 CD 6F 46      [17]  769         call generar1entidad
                            770 
   4F39 3E 46         [ 7]  771         ld a,#0x46
   4F3B CD 1C 46      [17]  772         call set_x_last_obstacle
   4F3E 3E B4         [ 7]  773         ld a, #0xB4
   4F40 CD 14 46      [17]  774         call set_y_last_obstacle
   4F43 CD 6F 46      [17]  775         call generar1entidad
   4F46 C9            [10]  776         ret   
                            777 
   4F47                     778     comprobarEntidades5lvl8:
   4F47 3A 44 47      [13]  779     ld a, (level_obstacles)
   4F4A FE 08         [ 7]  780     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4F4C C8            [11]  781     ret z
   4F4D 3E AC         [ 7]  782         ld a, #0xAC
   4F4F CD 24 46      [17]  783         call set_y_wave 
   4F52 CD 81 46      [17]  784         call generar1entidadWave
   4F55 C9            [10]  785         ret 
                            786 
   4F56                     787     comprobarEntidades6lvl8:
   4F56 3A 44 47      [13]  788     ld a, (level_obstacles)
   4F59 FE 09         [ 7]  789     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   4F5B C8            [11]  790     ret z
   4F5C 3E 76         [ 7]  791         ld a, #0x76
   4F5E CD 24 46      [17]  792         call set_y_wave 
   4F61 CD 81 46      [17]  793         call generar1entidadWave
   4F64 C9            [10]  794         ret 
                            795     
   4F65                     796     comprobarEntidades7lvl8:
   4F65 3A 44 47      [13]  797      ld a, (level_obstacles)
   4F68 FE 0B         [ 7]  798      cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   4F6A C8            [11]  799      ret z
   4F6B 3E 76         [ 7]  800         ld a, #0x76
   4F6D CD 14 46      [17]  801         call set_y_last_obstacle
   4F70 CD 6F 46      [17]  802         call generar1entidad
   4F73 3E B4         [ 7]  803         ld a, #0xB4
   4F75 CD 14 46      [17]  804         call set_y_last_obstacle
   4F78 CD 6F 46      [17]  805         call generar1entidad
   4F7B C9            [10]  806         ret 
                            807 
                            808 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            809 ;;
                            810 ;;
                            811 ;;  NIVEL 9
                            812 ;;
                            813 ;;
                            814 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   4F7C                     815 man_game_controller_lvl_9::
   4F7C 3A 46 60      [13]  816     ld a, (_level_seconds)  
   4F7F FE 02         [ 7]  817     cp #0x02                      
   4F81 28 1A         [12]  818     jr z, comprobarEntidades1lvl9
   4F83 FE 03         [ 7]  819     cp #0x03
   4F85 28 25         [12]  820     jr z, comprobarEntidades2lvl9
   4F87 FE 05         [ 7]  821     cp #0x05
   4F89 28 30         [12]  822     jr z, comprobarEntidades3lvl9
   4F8B FE 08         [ 7]  823     cp #0x08
   4F8D 28 3B         [12]  824     jr z, comprobarEntidades4lvl9
   4F8F FE 0D         [ 7]  825     cp #0x0D
   4F91 28 58         [12]  826     jr z, comprobarEntidades5lvl9
   4F93 FE 16         [ 7]  827     cp #0x16
   4F95 28 73         [12]  828     jr z, comprobarEntidades6lvl9
   4F97 FE 19         [ 7]  829     cp #0x19
   4F99 CA 19 50      [10]  830     jp z, comprobarEntidades7lvl9
   4F9C C9            [10]  831     ret
                            832 
   4F9D                     833     comprobarEntidades1lvl9:
   4F9D 3A 44 47      [13]  834     ld a, (level_obstacles)
   4FA0 FE 01         [ 7]  835     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   4FA2 C8            [11]  836     ret z
   4FA3 3E B4         [ 7]  837         ld a, #0xB4
   4FA5 CD 14 46      [17]  838         call set_y_last_obstacle
   4FA8 CD 6F 46      [17]  839         call generar1entidad
   4FAB C9            [10]  840         ret
                            841     
   4FAC                     842     comprobarEntidades2lvl9:
   4FAC 3A 44 47      [13]  843     ld a, (level_obstacles)
   4FAF FE 02         [ 7]  844     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   4FB1 C8            [11]  845     ret z
   4FB2 3E B4         [ 7]  846         ld a, #0xB4
   4FB4 CD 14 46      [17]  847         call set_y_last_obstacle
   4FB7 CD 6F 46      [17]  848         call generar1entidad
   4FBA C9            [10]  849         ret
                            850 
   4FBB                     851     comprobarEntidades3lvl9:
   4FBB 3A 44 47      [13]  852     ld a, (level_obstacles)
   4FBE FE 03         [ 7]  853     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   4FC0 C8            [11]  854     ret z
   4FC1 3E 76         [ 7]  855         ld a, #0x76
   4FC3 CD 14 46      [17]  856         call set_y_last_obstacle
   4FC6 CD 6F 46      [17]  857         call generar1entidad
   4FC9 C9            [10]  858         ret 
                            859     
   4FCA                     860     comprobarEntidades4lvl9:
   4FCA 3A 44 47      [13]  861     ld a, (level_obstacles)
   4FCD FE 05         [ 7]  862     cp #0x05               ;; Si ya tengo 5 entidades no compruebo ninguna mas
   4FCF C8            [11]  863     ret z
   4FD0 3E 76         [ 7]  864         ld a, #0x76
   4FD2 CD 14 46      [17]  865         call set_y_last_obstacle
   4FD5 3E 3C         [ 7]  866         ld a,#0x3C
   4FD7 CD 1C 46      [17]  867         call set_x_last_obstacle
   4FDA CD 6F 46      [17]  868         call generar1entidad
                            869 
   4FDD 3E 46         [ 7]  870         ld a,#0x46
   4FDF CD 1C 46      [17]  871         call set_x_last_obstacle
   4FE2 3E B4         [ 7]  872         ld a, #0xB4
   4FE4 CD 14 46      [17]  873         call set_y_last_obstacle
   4FE7 CD 6F 46      [17]  874         call generar1entidad
   4FEA C9            [10]  875         ret   
                            876 
   4FEB                     877     comprobarEntidades5lvl9:
   4FEB 3A 44 47      [13]  878     ld a, (level_obstacles)
   4FEE FE 08         [ 7]  879     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   4FF0 C8            [11]  880     ret z
   4FF1 3E 76         [ 7]  881         ld a, #0x76
   4FF3 CD 14 46      [17]  882         call set_y_last_obstacle
   4FF6 CD 6F 46      [17]  883         call generar1entidad
                            884 
   4FF9 3E 86         [ 7]  885         ld a, #0x86
   4FFB CD 14 46      [17]  886         call set_y_last_obstacle
   4FFE CD 6F 46      [17]  887         call generar1entidad
                            888         
   5001 3E B4         [ 7]  889         ld a, #0xB4
   5003 CD 14 46      [17]  890         call set_y_last_obstacle
   5006 CD 6F 46      [17]  891         call generar1entidad
   5009 C9            [10]  892         ret 
                            893 
   500A                     894     comprobarEntidades6lvl9:
   500A 3A 44 47      [13]  895     ld a, (level_obstacles)
   500D FE 09         [ 7]  896     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   500F C8            [11]  897     ret z
   5010 3E AC         [ 7]  898         ld a, #0xAC
   5012 CD 24 46      [17]  899         call set_y_wave 
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   5015 CD 81 46      [17]  900         call generar1entidadWave
   5018 C9            [10]  901         ret 
                            902     
   5019                     903     comprobarEntidades7lvl9:
   5019 3A 44 47      [13]  904      ld a, (level_obstacles)
   501C FE 0A         [ 7]  905      cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   501E C8            [11]  906      ret z
   501F 3E 76         [ 7]  907         ld a, #0x76
   5021 CD 14 46      [17]  908         call set_y_last_obstacle 
   5024 CD 6F 46      [17]  909         call generar1entidad
   5027 C9            [10]  910         ret 
                            911 
                            912 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            913 ;;
                            914 ;;
                            915 ;;  NIVEL 10
                            916 ;;
                            917 ;;
                            918 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5028                     919 man_game_controller_lvl_10::
   5028 3A 46 60      [13]  920     ld a, (_level_seconds)  
   502B FE 01         [ 7]  921     cp #0x01                      
   502D 28 16         [12]  922     jr z, comprobarEntidades1lvl10
   502F FE 07         [ 7]  923     cp #0x07
   5031 28 29         [12]  924     jr z, comprobarEntidades2lvl10
   5033 FE 0B         [ 7]  925     cp #0x0B
   5035 28 44         [12]  926     jr z, comprobarEntidades3lvl10
   5037 FE 11         [ 7]  927     cp #0x11
   5039 28 57         [12]  928     jr z, comprobarEntidades4lvl10
   503B FE 17         [ 7]  929     cp #0x17
   503D 28 72         [12]  930     jr z, comprobarEntidades5lvl10
   503F FE 1B         [ 7]  931     cp #0x1B
   5041 CA D2 50      [10]  932     jp z, comprobarEntidades6lvl10
   5044 C9            [10]  933     ret
                            934 
   5045                     935     comprobarEntidades1lvl10:
   5045 3A 44 47      [13]  936     ld a, (level_obstacles)
   5048 FE 02         [ 7]  937     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   504A C8            [11]  938     ret z
   504B 3E 76         [ 7]  939         ld a, #0x76
   504D CD 14 46      [17]  940         call set_y_last_obstacle
   5050 CD 6F 46      [17]  941         call generar1entidad
                            942 
   5053 3E B4         [ 7]  943         ld a, #0xB4
   5055 CD 14 46      [17]  944         call set_y_last_obstacle
   5058 CD 6F 46      [17]  945         call generar1entidad
   505B C9            [10]  946         ret
                            947 
   505C                     948     comprobarEntidades2lvl10:
   505C 3A 44 47      [13]  949     ld a, (level_obstacles)
   505F FE 05         [ 7]  950     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5061 C8            [11]  951     ret z
   5062 3E 76         [ 7]  952         ld a, #0x76
   5064 CD 14 46      [17]  953         call set_y_last_obstacle
   5067 CD 6F 46      [17]  954         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



                            955         
   506A 3E 86         [ 7]  956         ld a, #0x86
   506C CD 14 46      [17]  957         call set_y_last_obstacle
   506F CD 6F 46      [17]  958         call generar1entidad
                            959         
   5072 3E B4         [ 7]  960         ld a, #0xB4
   5074 CD 14 46      [17]  961         call set_y_last_obstacle
   5077 CD 6F 46      [17]  962         call generar1entidad
   507A C9            [10]  963         ret
                            964 
   507B                     965     comprobarEntidades3lvl10:
   507B 3A 44 47      [13]  966     ld a, (level_obstacles)
   507E FE 07         [ 7]  967     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5080 C8            [11]  968     ret z
   5081 3E 86         [ 7]  969         ld a, #0x86
   5083 CD 14 46      [17]  970         call set_y_last_obstacle
   5086 CD 6F 46      [17]  971         call generar1entidad
                            972 
   5089 3E B4         [ 7]  973         ld a, #0xB4
   508B CD 14 46      [17]  974         call set_y_last_obstacle
   508E CD 6F 46      [17]  975         call generar1entidad
   5091 C9            [10]  976         ret
                            977 
   5092                     978     comprobarEntidades4lvl10:
   5092 3A 44 47      [13]  979     ld a, (level_obstacles)
   5095 FE 0A         [ 7]  980     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5097 C8            [11]  981     ret z
   5098 3E 76         [ 7]  982         ld a, #0x76
   509A CD 14 46      [17]  983         call set_y_last_obstacle
   509D CD 6F 46      [17]  984         call generar1entidad
                            985         
   50A0 3E A4         [ 7]  986         ld a, #0xA4
   50A2 CD 14 46      [17]  987         call set_y_last_obstacle
   50A5 CD 6F 46      [17]  988         call generar1entidad
                            989         
   50A8 3E B4         [ 7]  990         ld a, #0xB4
   50AA CD 14 46      [17]  991         call set_y_last_obstacle
   50AD CD 6F 46      [17]  992         call generar1entidad
   50B0 C9            [10]  993         ret   
                            994 
   50B1                     995     comprobarEntidades5lvl10:
   50B1 3A 44 47      [13]  996     ld a, (level_obstacles)
   50B4 FE 0C         [ 7]  997     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   50B6 C8            [11]  998     ret z
   50B7 3E 76         [ 7]  999         ld a, #0x76
   50B9 CD 14 46      [17] 1000         call set_y_last_obstacle
   50BC 3E 3C         [ 7] 1001         ld a,#0x3C
   50BE CD 1C 46      [17] 1002         call set_x_last_obstacle
   50C1 CD 6F 46      [17] 1003         call generar1entidad
                           1004         
   50C4 3E 46         [ 7] 1005         ld a,#0x46
   50C6 CD 1C 46      [17] 1006         call set_x_last_obstacle
   50C9 3E B4         [ 7] 1007         ld a, #0xB4
   50CB CD 14 46      [17] 1008         call set_y_last_obstacle
   50CE CD 6F 46      [17] 1009         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



   50D1 C9            [10] 1010         ret 
                           1011 
   50D2                    1012     comprobarEntidades6lvl10:
   50D2 3A 44 47      [13] 1013     ld a, (level_obstacles)
   50D5 FE 0E         [ 7] 1014     cp #0x0E                ;; Si ya tengo 14 entidades no compruebo ninguna mas
   50D7 C8            [11] 1015     ret z
   50D8 3E 76         [ 7] 1016         ld a, #0x76
   50DA CD 14 46      [17] 1017         call set_y_last_obstacle
   50DD 3E 3C         [ 7] 1018         ld a,#0x3C
   50DF CD 1C 46      [17] 1019         call set_x_last_obstacle
   50E2 CD 6F 46      [17] 1020         call generar1entidad
                           1021         
   50E5 3E 43         [ 7] 1022         ld a,#0x43
   50E7 CD 1C 46      [17] 1023         call set_x_last_obstacle
   50EA 3E B4         [ 7] 1024         ld a, #0xB4
   50EC CD 14 46      [17] 1025         call set_y_last_obstacle
   50EF CD 6F 46      [17] 1026         call generar1entidad
   50F2 C9            [10] 1027         ret 
                           1028     
   50F3                    1029     comprobarEntidades7lvl10:
   50F3 3A 44 47      [13] 1030      ld a, (level_obstacles)
   50F6 FE 0F         [ 7] 1031      cp #0x0F                ;; Si ya tengo 15 entidades no compruebo ninguna mas
   50F8 C8            [11] 1032      ret z
   50F9 3E B4         [ 7] 1033         ld a, #0xB4
   50FB CD 14 46      [17] 1034         call set_y_last_obstacle 
   50FE CD 6F 46      [17] 1035         call generar1entidad
   5101 C9            [10] 1036         ret 
