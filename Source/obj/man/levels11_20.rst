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
                             24 ;;  NIVEL 11 (HALLOWEEN)
                             25 ;;
                             26 ;;
                             27 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5102                      28 man_game_controller_lvl_11::
   5102 3A 46 60      [13]   29     ld a, (_level_seconds)  
   5105 FE 04         [ 7]   30     cp #0x04                      
   5107 28 1D         [12]   31     jr z, comprobarEntidades1lvl11
   5109 FE 08         [ 7]   32     cp #0x08 
   510B 28 28         [12]   33     jr z, comprobarEntidades2lvl11
   510D FE 0C         [ 7]   34     cp #0x0C
   510F 28 33         [12]   35     jr z, comprobarEntidades3lvl11
   5111 FE 0E         [ 7]   36     cp #0x0E
   5113 28 3E         [12]   37     jr z, comprobarEntidades4lvl11
   5115 FE 12         [ 7]   38     cp #0x12
   5117 28 49         [12]   39     jr z, comprobarEntidades5lvl11
   5119 FE 14         [ 7]   40     cp #0x14
   511B 28 54         [12]   41     jr z, comprobarEntidades6lvl11
   511D FE 17         [ 7]   42     cp #0x17
   511F 28 5F         [12]   43     jr z, comprobarEntidades7lvl11
   5121 FE 19         [ 7]   44     cp #0x19
   5123 28 6A         [12]   45     jr z, comprobarEntidades8lvl11
   5125 C9            [10]   46     ret
                             47     
   5126                      48     comprobarEntidades1lvl11:
   5126 3A 44 47      [13]   49     ld a, (level_obstacles)
   5129 FE 01         [ 7]   50     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   512B C8            [11]   51     ret z
   512C 3E 76         [ 7]   52         ld a, #0x76
   512E CD 2C 46      [17]   53         call set_y_ghost
   5131 CD 93 46      [17]   54         call  generar1entidadGhost
   5134 C9            [10]   55         ret
                             56     
   5135                      57     comprobarEntidades2lvl11:
   5135 3A 44 47      [13]   58     ld a, (level_obstacles)
   5138 FE 02         [ 7]   59     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   513A C8            [11]   60     ret z
   513B 3E B4         [ 7]   61         ld a, #0xB4
   513D CD 14 46      [17]   62         call set_y_last_obstacle   
   5140 CD 6F 46      [17]   63         call generar1entidad
   5143 C9            [10]   64         ret  
                             65     
   5144                      66     comprobarEntidades3lvl11:
   5144 3A 44 47      [13]   67     ld a, (level_obstacles)
   5147 FE 03         [ 7]   68     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5149 C8            [11]   69     ret z
   514A 3E 76         [ 7]   70         ld a, #0x76
   514C CD 14 46      [17]   71         call set_y_last_obstacle
   514F CD 6F 46      [17]   72         call generar1entidad
   5152 C9            [10]   73         ret 
                             74     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   5153                      75     comprobarEntidades4lvl11:
   5153 3A 44 47      [13]   76     ld a, (level_obstacles)
   5156 FE 04         [ 7]   77     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5158 C8            [11]   78     ret z
   5159 3E B4         [ 7]   79         ld a, #0xB4
   515B CD 14 46      [17]   80         call set_y_last_obstacle  
   515E CD 6F 46      [17]   81         call generar1entidad
   5161 C9            [10]   82         ret 
                             83 
   5162                      84     comprobarEntidades5lvl11:
   5162 3A 44 47      [13]   85     ld a, (level_obstacles)
   5165 FE 05         [ 7]   86     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5167 C8            [11]   87     ret z
   5168 3E 76         [ 7]   88         ld a, #0x76
   516A CD 14 46      [17]   89         call set_y_last_obstacle
   516D CD 6F 46      [17]   90         call generar1entidad
   5170 C9            [10]   91         ret
                             92 
   5171                      93     comprobarEntidades6lvl11:
   5171 3A 44 47      [13]   94     ld a, (level_obstacles)
   5174 FE 06         [ 7]   95     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5176 C8            [11]   96     ret z
   5177 3E B4         [ 7]   97         ld a, #0xB4
   5179 CD 2C 46      [17]   98         call set_y_ghost
   517C CD 93 46      [17]   99         call  generar1entidadGhost
   517F C9            [10]  100         ret
                            101     
   5180                     102     comprobarEntidades7lvl11:
   5180 3A 44 47      [13]  103     ld a, (level_obstacles)
   5183 FE 07         [ 7]  104     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5185 C8            [11]  105     ret z
   5186 3E 76         [ 7]  106         ld a, #0x76
   5188 CD 2C 46      [17]  107         call set_y_ghost
   518B CD 93 46      [17]  108         call  generar1entidadGhost
   518E C9            [10]  109         ret
                            110     
   518F                     111     comprobarEntidades8lvl11:
   518F 3A 44 47      [13]  112     ld a, (level_obstacles)
   5192 FE 08         [ 7]  113     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5194 C8            [11]  114     ret z
   5195 3E B4         [ 7]  115         ld a, #0xB4
   5197 CD 14 46      [17]  116         call set_y_last_obstacle
   519A CD 6F 46      [17]  117         call generar1entidad
   519D C9            [10]  118         ret
                            119     
                            120 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            121 ;;
                            122 ;;
                            123 ;;  NIVEL 12 (HALLOWEEN)
                            124 ;;
                            125 ;;
                            126 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   519E                     127 man_game_controller_lvl_12::
   519E 3A 46 60      [13]  128     ld a, (_level_seconds)  
   51A1 FE 03         [ 7]  129     cp #0x03                      
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   51A3 28 15         [12]  130     jr z, comprobarEntidades1lvl12
   51A5 FE 07         [ 7]  131     cp #0x07
   51A7 28 20         [12]  132     jr z, comprobarEntidades2lvl12
   51A9 FE 0C         [ 7]  133     cp #0x0C
   51AB 28 2B         [12]  134     jr z, comprobarEntidades3lvl12
   51AD FE 13         [ 7]  135     cp #0x13
   51AF 28 3E         [12]  136     jr z, comprobarEntidades4lvl12
   51B1 FE 15         [ 7]  137     cp #0x15
   51B3 28 49         [12]  138     jr z, comprobarEntidades5lvl12
   51B5 FE 1A         [ 7]  139     cp #0x1A
   51B7 28 54         [12]  140     jr z, comprobarEntidades6lvl12
   51B9 C9            [10]  141     ret
                            142 
   51BA                     143     comprobarEntidades1lvl12:
   51BA 3A 44 47      [13]  144     ld a, (level_obstacles)
   51BD FE 01         [ 7]  145     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   51BF C8            [11]  146     ret z
   51C0 3E B4         [ 7]  147         ld a, #0xB4
   51C2 CD 2C 46      [17]  148         call set_y_ghost
   51C5 CD 93 46      [17]  149         call  generar1entidadGhost
   51C8 C9            [10]  150         ret
                            151     
   51C9                     152     comprobarEntidades2lvl12:
   51C9 3A 44 47      [13]  153     ld a, (level_obstacles)
   51CC FE 02         [ 7]  154     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   51CE C8            [11]  155     ret z
   51CF 3E 76         [ 7]  156         ld a, #0x76
   51D1 CD 14 46      [17]  157         call set_y_last_obstacle   
   51D4 CD 6F 46      [17]  158         call generar1entidad
   51D7 C9            [10]  159         ret
                            160     
   51D8                     161     comprobarEntidades3lvl12:
   51D8 3A 44 47      [13]  162     ld a, (level_obstacles)
   51DB FE 04         [ 7]  163     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   51DD C8            [11]  164     ret z
   51DE 3E 76         [ 7]  165         ld a, #0x76
   51E0 CD 14 46      [17]  166         call set_y_last_obstacle
   51E3 CD 6F 46      [17]  167         call generar1entidad
                            168         
   51E6 3E B4         [ 7]  169         ld a, #0xB4
   51E8 CD 14 46      [17]  170         call set_y_last_obstacle
   51EB CD 6F 46      [17]  171         call generar1entidad    
   51EE C9            [10]  172         ret
                            173     
   51EF                     174     comprobarEntidades4lvl12:
   51EF 3A 44 47      [13]  175     ld a, (level_obstacles)
   51F2 FE 05         [ 7]  176     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   51F4 C8            [11]  177     ret z
   51F5 3E B4         [ 7]  178         ld a, #0xB4
   51F7 CD 2C 46      [17]  179         call set_y_ghost
   51FA CD 93 46      [17]  180         call  generar1entidadGhost
   51FD C9            [10]  181         ret 
                            182     
   51FE                     183     comprobarEntidades5lvl12:
   51FE 3A 44 47      [13]  184     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   5201 FE 06         [ 7]  185     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5203 C8            [11]  186     ret z
   5204 3E 76         [ 7]  187         ld a, #0x76
   5206 CD 14 46      [17]  188         call set_y_last_obstacle
   5209 CD 6F 46      [17]  189         call generar1entidad
   520C C9            [10]  190         ret
                            191     
   520D                     192     comprobarEntidades6lvl12:
   520D 3A 44 47      [13]  193     ld a, (level_obstacles)
   5210 FE 08         [ 7]  194     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5212 C8            [11]  195     ret z
   5213 3E 76         [ 7]  196         ld a, #0x76
   5215 CD 14 46      [17]  197         call set_y_last_obstacle
   5218 CD 6F 46      [17]  198         call generar1entidad
                            199         
   521B 3E B4         [ 7]  200         ld a, #0xB4
   521D CD 14 46      [17]  201         call set_y_last_obstacle
   5220 CD 6F 46      [17]  202         call generar1entidad    
   5223 C9            [10]  203         ret    
                            204 
                            205 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            206 ;;
                            207 ;;
                            208 ;;  NIVEL 13 (HALLOWEEN)
                            209 ;;
                            210 ;;
                            211 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            212 
   5224                     213 man_game_controller_lvl_13::
   5224 3A 46 60      [13]  214     ld a, (_level_seconds)  
   5227 FE 02         [ 7]  215     cp #0x02                      
   5229 28 27         [12]  216     jr z, comprobarEntidades1lvl13
   522B FE 04         [ 7]  217     cp #0x04
   522D 28 32         [12]  218     jr z, comprobarEntidades2lvl13
   522F FE 05         [ 7]  219     cp #0x05
   5231 28 3D         [12]  220     jr z, comprobarEntidades3lvl13
   5233 FE 08         [ 7]  221     cp #0x08
   5235 28 48         [12]  222     jr z, comprobarEntidades4lvl13
   5237 FE 0C         [ 7]  223     cp #0x0C
   5239 28 53         [12]  224     jr z, comprobarEntidades5lvl13
   523B FE 0E         [ 7]  225     cp #0x0E
   523D 28 5E         [12]  226     jr z, comprobarEntidades6lvl13
   523F FE 0F         [ 7]  227     cp #0x0F
   5241 28 69         [12]  228     jr z, comprobarEntidades7lvl13
   5243 FE 11         [ 7]  229     cp #0x11
   5245 28 74         [12]  230     jr z, comprobarEntidades8lvl13
   5247 FE 14         [ 7]  231     cp #0x14
   5249 CA CA 52      [10]  232     jp z, comprobarEntidades9lvl13
   524C FE 18         [ 7]  233     cp #0x18
   524E CA D9 52      [10]  234     jp z, comprobarEntidades10lvl13
   5251 C9            [10]  235     ret
                            236     
   5252                     237     comprobarEntidades1lvl13:
   5252 3A 44 47      [13]  238     ld a, (level_obstacles)
   5255 FE 01         [ 7]  239     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   5257 C8            [11]  240     ret z
   5258 3E B4         [ 7]  241         ld a, #0xB4
   525A CD 14 46      [17]  242         call set_y_last_obstacle
   525D CD 6F 46      [17]  243         call generar1entidad
   5260 C9            [10]  244         ret
                            245     
   5261                     246     comprobarEntidades2lvl13:
   5261 3A 44 47      [13]  247     ld a, (level_obstacles)
   5264 FE 02         [ 7]  248     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5266 C8            [11]  249     ret z
   5267 3E 76         [ 7]  250         ld a, #0x76
   5269 CD 14 46      [17]  251         call set_y_last_obstacle
   526C CD 6F 46      [17]  252         call generar1entidad
   526F C9            [10]  253         ret
                            254     
   5270                     255     comprobarEntidades3lvl13:
   5270 3A 44 47      [13]  256     ld a, (level_obstacles)
   5273 FE 03         [ 7]  257     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5275 C8            [11]  258     ret z
   5276 3E 76         [ 7]  259         ld a, #0x76
   5278 CD 14 46      [17]  260         call set_y_last_obstacle
   527B CD 6F 46      [17]  261         call generar1entidad
   527E C9            [10]  262         ret
                            263     
   527F                     264     comprobarEntidades4lvl13:
   527F 3A 44 47      [13]  265     ld a, (level_obstacles)
   5282 FE 04         [ 7]  266     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5284 C8            [11]  267     ret z
   5285 3E 76         [ 7]  268         ld a, #0x76
   5287 CD 2C 46      [17]  269         call set_y_ghost
   528A CD 93 46      [17]  270         call  generar1entidadGhost    
   528D C9            [10]  271         ret 
                            272     
   528E                     273     comprobarEntidades5lvl13:
   528E 3A 44 47      [13]  274     ld a, (level_obstacles)
   5291 FE 05         [ 7]  275     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5293 C8            [11]  276     ret z
   5294 3E B4         [ 7]  277         ld a, #0xB4
   5296 CD 14 46      [17]  278         call set_y_last_obstacle
   5299 CD 6F 46      [17]  279         call generar1entidad
   529C C9            [10]  280         ret
                            281     
   529D                     282     comprobarEntidades6lvl13:
   529D 3A 44 47      [13]  283     ld a, (level_obstacles)
   52A0 FE 06         [ 7]  284     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   52A2 C8            [11]  285     ret z
   52A3 3E 76         [ 7]  286         ld a, #0x76
   52A5 CD 14 46      [17]  287         call set_y_last_obstacle
   52A8 CD 6F 46      [17]  288         call generar1entidad
   52AB C9            [10]  289         ret  
                            290     
   52AC                     291     comprobarEntidades7lvl13:
   52AC 3A 44 47      [13]  292     ld a, (level_obstacles)
   52AF FE 07         [ 7]  293     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   52B1 C8            [11]  294     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   52B2 3E 76         [ 7]  295         ld a, #0x76
   52B4 CD 14 46      [17]  296         call set_y_last_obstacle
   52B7 CD 6F 46      [17]  297         call generar1entidad
   52BA C9            [10]  298         ret 
                            299     
   52BB                     300     comprobarEntidades8lvl13:
   52BB 3A 44 47      [13]  301     ld a, (level_obstacles)
   52BE FE 08         [ 7]  302     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   52C0 C8            [11]  303     ret z
   52C1 3E B4         [ 7]  304         ld a, #0xB4
   52C3 CD 14 46      [17]  305         call set_y_last_obstacle
   52C6 CD 6F 46      [17]  306         call generar1entidad
   52C9 C9            [10]  307         ret
                            308     
   52CA                     309     comprobarEntidades9lvl13:
   52CA 3A 44 47      [13]  310     ld a, (level_obstacles)
   52CD FE 09         [ 7]  311     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   52CF C8            [11]  312     ret z
   52D0 3E 76         [ 7]  313         ld a, #0x76
   52D2 CD 2C 46      [17]  314         call set_y_ghost
   52D5 CD 93 46      [17]  315         call  generar1entidadGhost  
   52D8 C9            [10]  316         ret
                            317 
   52D9                     318     comprobarEntidades10lvl13:
   52D9 3A 44 47      [13]  319     ld a, (level_obstacles)
   52DC FE 0B         [ 7]  320     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   52DE C8            [11]  321     ret z
   52DF 3E 76         [ 7]  322         ld a, #0x76
   52E1 CD 14 46      [17]  323         call set_y_last_obstacle
   52E4 CD 6F 46      [17]  324         call generar1entidad
                            325 
   52E7 3E B4         [ 7]  326         ld a, #0xB4
   52E9 CD 14 46      [17]  327         call set_y_last_obstacle
   52EC CD 6F 46      [17]  328         call generar1entidad   
   52EF C9            [10]  329         ret 
                            330 
                            331 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            332 ;;
                            333 ;;
                            334 ;;  NIVEL 14 (HALLOWEEN)
                            335 ;;
                            336 ;;
                            337 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            338 
   52F0                     339 man_game_controller_lvl_14::
   52F0 3A 46 60      [13]  340     ld a, (_level_seconds)  
   52F3 FE 02         [ 7]  341     cp #0x02                      
   52F5 28 22         [12]  342     jr z, comprobarEntidades1lvl14
   52F7 FE 03         [ 7]  343     cp #0x03
   52F9 28 2D         [12]  344     jr z, comprobarEntidades2lvl14
   52FB FE 06         [ 7]  345     cp #0x06
   52FD 28 38         [12]  346     jr z, comprobarEntidades3lvl14
   52FF FE 09         [ 7]  347     cp #0x09
   5301 28 43         [12]  348     jr z, comprobarEntidades4lvl14
   5303 FE 0C         [ 7]  349     cp #0x0C
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   5305 28 4E         [12]  350     jr z, comprobarEntidades5lvl14
   5307 FE 0F         [ 7]  351     cp #0x0F
   5309 28 61         [12]  352     jr z, comprobarEntidades6lvl14
   530B FE 12         [ 7]  353     cp #0x12
   530D 28 6C         [12]  354     jr z, comprobarEntidades7lvl14
   530F FE 16         [ 7]  355     cp #0x16
   5311 28 77         [12]  356     jr z, comprobarEntidades8lvl14
   5313 FE 19         [ 7]  357     cp #0x19
   5315 CA A1 53      [10]  358     jp z, comprobarEntidades9lvl14
   5318 C9            [10]  359     ret
                            360 
   5319                     361     comprobarEntidades1lvl14:
   5319 3A 44 47      [13]  362     ld a, (level_obstacles)
   531C FE 01         [ 7]  363     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   531E C8            [11]  364     ret z
   531F 3E 76         [ 7]  365         ld a, #0x76
   5321 CD 2C 46      [17]  366         call set_y_ghost
   5324 CD 93 46      [17]  367         call  generar1entidadGhost
   5327 C9            [10]  368         ret
                            369 
   5328                     370     comprobarEntidades2lvl14:
   5328 3A 44 47      [13]  371     ld a, (level_obstacles)
   532B FE 02         [ 7]  372     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   532D C8            [11]  373     ret z
   532E 3E B4         [ 7]  374         ld a, #0xB4
   5330 CD 14 46      [17]  375         call set_y_last_obstacle
   5333 CD 6F 46      [17]  376         call generar1entidad        
   5336 C9            [10]  377         ret
                            378 
   5337                     379     comprobarEntidades3lvl14:
   5337 3A 44 47      [13]  380     ld a, (level_obstacles)
   533A FE 03         [ 7]  381     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   533C C8            [11]  382     ret z
   533D 3E 76         [ 7]  383         ld a, #0x76
   533F CD 14 46      [17]  384         call set_y_last_obstacle
   5342 CD 6F 46      [17]  385         call generar1entidad        
   5345 C9            [10]  386         ret
                            387         
   5346                     388     comprobarEntidades4lvl14:
   5346 3A 44 47      [13]  389     ld a, (level_obstacles)
   5349 FE 04         [ 7]  390     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   534B C8            [11]  391     ret z
   534C 3E B4         [ 7]  392         ld a, #0xB4
   534E CD 2C 46      [17]  393         call set_y_ghost
   5351 CD 93 46      [17]  394         call  generar1entidadGhost
   5354 C9            [10]  395         ret
                            396     
   5355                     397     comprobarEntidades5lvl14:
   5355 3A 44 47      [13]  398     ld a, (level_obstacles)
   5358 FE 06         [ 7]  399     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   535A C8            [11]  400     ret z
   535B 3E 76         [ 7]  401         ld a, #0x76
   535D CD 14 46      [17]  402         call set_y_last_obstacle
   5360 CD 6F 46      [17]  403         call generar1entidad
                            404         
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   5363 3E B4         [ 7]  405         ld a, #0xB4
   5365 CD 14 46      [17]  406         call set_y_last_obstacle
   5368 CD 6F 46      [17]  407         call generar1entidad
   536B C9            [10]  408         ret
                            409 
   536C                     410     comprobarEntidades6lvl14:
   536C 3A 44 47      [13]  411     ld a, (level_obstacles)
   536F FE 07         [ 7]  412     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5371 C8            [11]  413     ret z
   5372 3E 76         [ 7]  414         ld a, #0x76
   5374 CD 2C 46      [17]  415         call set_y_ghost
   5377 CD 93 46      [17]  416         call  generar1entidadGhost
   537A C9            [10]  417         ret
                            418 
   537B                     419     comprobarEntidades7lvl14:
   537B 3A 44 47      [13]  420     ld a, (level_obstacles)
   537E FE 08         [ 7]  421     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5380 C8            [11]  422     ret z
   5381 3E B4         [ 7]  423         ld a, #0xB4
   5383 CD 2C 46      [17]  424         call set_y_ghost
   5386 CD 93 46      [17]  425         call  generar1entidadGhost
   5389 C9            [10]  426         ret 
                            427 
   538A                     428     comprobarEntidades8lvl14:
   538A 3A 44 47      [13]  429     ld a, (level_obstacles)
   538D FE 0A         [ 7]  430     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   538F C8            [11]  431     ret z
   5390 3E 76         [ 7]  432         ld a, #0x76
   5392 CD 14 46      [17]  433         call set_y_last_obstacle
   5395 CD 6F 46      [17]  434         call generar1entidad
                            435         
   5398 3E B4         [ 7]  436         ld a, #0xB4
   539A CD 14 46      [17]  437         call set_y_last_obstacle
   539D CD 6F 46      [17]  438         call generar1entidad
   53A0 C9            [10]  439         ret
                            440 
   53A1                     441     comprobarEntidades9lvl14:
   53A1 3A 44 47      [13]  442     ld a, (level_obstacles)
   53A4 FE 0B         [ 7]  443     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   53A6 C8            [11]  444     ret z
   53A7 3E B4         [ 7]  445         ld a, #0xB4
   53A9 CD 14 46      [17]  446         call set_y_last_obstacle
   53AC CD 6F 46      [17]  447         call generar1entidad
   53AF C9            [10]  448         ret
                            449         
                            450 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            451 ;;
                            452 ;;
                            453 ;;  NIVEL 15 (HALLOWEEN)
                            454 ;;
                            455 ;;
                            456 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   53B0                     457 man_game_controller_lvl_15::
   53B0 3A 46 60      [13]  458     ld a, (_level_seconds)  
   53B3 FE 03         [ 7]  459     cp #0x03                      
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   53B5 28 27         [12]  460     jr z, comprobarEntidades1lvl15
   53B7 FE 04         [ 7]  461     cp #0x04
   53B9 28 32         [12]  462     jr z, comprobarEntidades2lvl15
   53BB FE 05         [ 7]  463     cp #0x05
   53BD 28 3D         [12]  464     jr z, comprobarEntidades3lvl15
   53BF FE 0A         [ 7]  465     cp #0x0A
   53C1 28 48         [12]  466     jr z, comprobarEntidades4lvl15
   53C3 FE 0B         [ 7]  467     cp #0x0B
   53C5 28 53         [12]  468     jr z, comprobarEntidades5lvl15
   53C7 FE 0C         [ 7]  469     cp #0x0C
   53C9 28 5E         [12]  470     jr z, comprobarEntidades6lvl15
   53CB FE 10         [ 7]  471     cp #0x10
   53CD 28 69         [12]  472     jr z, comprobarEntidades7lvl15
   53CF FE 13         [ 7]  473     cp #0x13
   53D1 28 74         [12]  474     jr z, comprobarEntidades8lvl15
   53D3 FE 17         [ 7]  475     cp #0x17
   53D5 CA 56 54      [10]  476     jp z, comprobarEntidades9lvl15
   53D8 FE 1A         [ 7]  477     cp #0x1A
   53DA CA 6D 54      [10]  478     jp z, comprobarEntidades10lvl15
   53DD C9            [10]  479     ret
                            480 
   53DE                     481     comprobarEntidades1lvl15:
   53DE 3A 44 47      [13]  482     ld a, (level_obstacles)
   53E1 FE 01         [ 7]  483     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   53E3 C8            [11]  484     ret z
   53E4 3E 76         [ 7]  485         ld a, #0x76
   53E6 CD 14 46      [17]  486         call set_y_last_obstacle
   53E9 CD 6F 46      [17]  487         call generar1entidad
   53EC C9            [10]  488         ret
                            489     
   53ED                     490     comprobarEntidades2lvl15:
   53ED 3A 44 47      [13]  491     ld a, (level_obstacles)
   53F0 FE 02         [ 7]  492     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   53F2 C8            [11]  493     ret z
   53F3 3E 95         [ 7]  494         ld a, #0x95
   53F5 CD 14 46      [17]  495         call set_y_last_obstacle
   53F8 CD 6F 46      [17]  496         call generar1entidad
   53FB C9            [10]  497         ret  
                            498     
   53FC                     499     comprobarEntidades3lvl15:
   53FC 3A 44 47      [13]  500     ld a, (level_obstacles)
   53FF FE 03         [ 7]  501     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5401 C8            [11]  502     ret z
   5402 3E B4         [ 7]  503         ld a, #0xB4
   5404 CD 14 46      [17]  504         call set_y_last_obstacle
   5407 CD 6F 46      [17]  505         call generar1entidad
   540A C9            [10]  506         ret
                            507 
   540B                     508     comprobarEntidades4lvl15:
   540B 3A 44 47      [13]  509     ld a, (level_obstacles)
   540E FE 04         [ 7]  510     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5410 C8            [11]  511     ret z
   5411 3E B4         [ 7]  512         ld a, #0xB4
   5413 CD 14 46      [17]  513         call set_y_last_obstacle
   5416 CD 6F 46      [17]  514         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   5419 C9            [10]  515         ret
                            516          
   541A                     517     comprobarEntidades5lvl15:
   541A 3A 44 47      [13]  518     ld a, (level_obstacles)
   541D FE 05         [ 7]  519     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   541F C8            [11]  520     ret z
   5420 3E 95         [ 7]  521         ld a, #0x95
   5422 CD 14 46      [17]  522         call set_y_last_obstacle
   5425 CD 6F 46      [17]  523         call generar1entidad
   5428 C9            [10]  524         ret 
                            525 
   5429                     526     comprobarEntidades6lvl15:
   5429 3A 44 47      [13]  527     ld a, (level_obstacles)
   542C FE 06         [ 7]  528     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   542E C8            [11]  529     ret z
   542F 3E 76         [ 7]  530         ld a, #0x76
   5431 CD 14 46      [17]  531         call set_y_last_obstacle
   5434 CD 6F 46      [17]  532         call generar1entidad
   5437 C9            [10]  533         ret  
                            534 
   5438                     535     comprobarEntidades7lvl15:
   5438 3A 44 47      [13]  536     ld a, (level_obstacles)
   543B FE 07         [ 7]  537     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   543D C8            [11]  538     ret z
   543E 3E B4         [ 7]  539         ld a, #0xB4
   5440 CD 2C 46      [17]  540         call set_y_ghost
   5443 CD 93 46      [17]  541         call  generar1entidadGhost
   5446 C9            [10]  542         ret 
                            543     
   5447                     544     comprobarEntidades8lvl15:
   5447 3A 44 47      [13]  545     ld a, (level_obstacles)
   544A FE 08         [ 7]  546     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   544C C8            [11]  547     ret z
   544D 3E 76         [ 7]  548         ld a, #0x76
   544F CD 2C 46      [17]  549         call set_y_ghost
   5452 CD 93 46      [17]  550         call  generar1entidadGhost
   5455 C9            [10]  551         ret
                            552     
   5456                     553     comprobarEntidades9lvl15:
   5456 3A 44 47      [13]  554     ld a, (level_obstacles)
   5459 FE 0A         [ 7]  555     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   545B C8            [11]  556     ret z
   545C 3E 76         [ 7]  557         ld a, #0x76
   545E CD 14 46      [17]  558         call set_y_last_obstacle
   5461 CD 6F 46      [17]  559         call generar1entidad
                            560         
   5464 3E B4         [ 7]  561         ld a, #0xB4
   5466 CD 14 46      [17]  562         call set_y_last_obstacle
   5469 CD 6F 46      [17]  563         call generar1entidad
   546C C9            [10]  564         ret
                            565     
   546D                     566     comprobarEntidades10lvl15:
   546D 3A 44 47      [13]  567     ld a, (level_obstacles)
   5470 FE 0B         [ 7]  568     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5472 C8            [11]  569     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   5473 3E 76         [ 7]  570         ld a, #0x76
   5475 CD 14 46      [17]  571         call set_y_last_obstacle
   5478 CD 6F 46      [17]  572         call generar1entidad
   547B C9            [10]  573         ret
                            574 
                            575 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            576 ;;
                            577 ;;
                            578 ;;  NIVEL 16 (HALLOWEEN)
                            579 ;;
                            580 ;;
                            581 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   547C                     582 man_game_controller_lvl_16::
   547C 3A 46 60      [13]  583     ld a, (_level_seconds)  
   547F FE 02         [ 7]  584     cp #0x02                      
   5481 28 28         [12]  585     jr z, comprobarEntidades1lvl16
   5483 FE 05         [ 7]  586     cp #0x05
   5485 28 3B         [12]  587     jr z, comprobarEntidades2lvl16
   5487 FE 06         [ 7]  588     cp #0x06
   5489 28 46         [12]  589     jr z, comprobarEntidades3lvl16
   548B FE 09         [ 7]  590     cp #0x09
   548D 28 51         [12]  591     jr z, comprobarEntidades4lvl16
   548F FE 0B         [ 7]  592     cp #0x0B
   5491 28 5C         [12]  593     jr z, comprobarEntidades5lvl16
   5493 FE 0C         [ 7]  594     cp #0x0C
   5495 28 6F         [12]  595     jr z, comprobarEntidades6lvl16
   5497 FE 0F         [ 7]  596     cp #0x0F
   5499 28 7A         [12]  597     jr z, comprobarEntidades7lvl16
   549B FE 12         [ 7]  598     cp #0x12
   549D CA 24 55      [10]  599     jp z, comprobarEntidades8lvl16
   54A0 FE 16         [ 7]  600     cp #0x16
   54A2 CA 33 55      [10]  601     jp z, comprobarEntidades9lvl16
   54A5 FE 19         [ 7]  602     cp #0x19
   54A7 CA 42 55      [10]  603     jp z, comprobarEntidades10lvl16
   54AA C9            [10]  604     ret
                            605     
   54AB                     606     comprobarEntidades1lvl16:
   54AB 3A 44 47      [13]  607     ld a, (level_obstacles)
   54AE FE 02         [ 7]  608     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   54B0 C8            [11]  609     ret z
   54B1 3E 76         [ 7]  610         ld a, #0x76
   54B3 CD 14 46      [17]  611         call set_y_last_obstacle
   54B6 CD 6F 46      [17]  612         call generar1entidad
                            613         
   54B9 3E B4         [ 7]  614         ld a, #0xB4
   54BB CD 14 46      [17]  615         call set_y_last_obstacle
   54BE CD 6F 46      [17]  616         call generar1entidad
   54C1 C9            [10]  617         ret
                            618     
   54C2                     619     comprobarEntidades2lvl16:
   54C2 3A 44 47      [13]  620     ld a, (level_obstacles)
   54C5 FE 03         [ 7]  621     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   54C7 C8            [11]  622     ret z
   54C8 3E 76         [ 7]  623         ld a, #0x76
   54CA CD 2C 46      [17]  624         call set_y_ghost
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   54CD CD 93 46      [17]  625         call  generar1entidadGhost
   54D0 C9            [10]  626         ret  
                            627     
   54D1                     628     comprobarEntidades3lvl16:
   54D1 3A 44 47      [13]  629     ld a, (level_obstacles)
   54D4 FE 04         [ 7]  630     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   54D6 C8            [11]  631     ret z
   54D7 3E B4         [ 7]  632         ld a, #0xB4
   54D9 CD 14 46      [17]  633         call set_y_last_obstacle   
   54DC CD 6F 46      [17]  634         call generar1entidad
   54DF C9            [10]  635         ret 
                            636 
   54E0                     637     comprobarEntidades4lvl16:
   54E0 3A 44 47      [13]  638     ld a, (level_obstacles)
   54E3 FE 05         [ 7]  639     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   54E5 C8            [11]  640     ret z
   54E6 3E 95         [ 7]  641         ld a, #0x95
   54E8 CD 14 46      [17]  642         call set_y_last_obstacle   
   54EB CD 6F 46      [17]  643         call generar1entidad
   54EE C9            [10]  644         ret 
                            645 
   54EF                     646     comprobarEntidades5lvl16:
   54EF 3A 44 47      [13]  647     ld a, (level_obstacles)
   54F2 FE 07         [ 7]  648     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   54F4 C8            [11]  649     ret z
   54F5 3E 76         [ 7]  650         ld a, #0x76
   54F7 CD 14 46      [17]  651         call set_y_last_obstacle
   54FA CD 6F 46      [17]  652         call generar1entidad
                            653         
   54FD 3E B4         [ 7]  654         ld a, #0xB4
   54FF CD 14 46      [17]  655         call set_y_last_obstacle
   5502 CD 6F 46      [17]  656         call generar1entidad
   5505 C9            [10]  657         ret 
                            658 
   5506                     659     comprobarEntidades6lvl16:
   5506 3A 44 47      [13]  660     ld a, (level_obstacles)
   5509 FE 08         [ 7]  661     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   550B C8            [11]  662     ret z
   550C 3E 76         [ 7]  663         ld a, #0x76
   550E CD 2C 46      [17]  664         call set_y_ghost
   5511 CD 93 46      [17]  665         call  generar1entidadGhost
   5514 C9            [10]  666         ret
                            667     
   5515                     668     comprobarEntidades7lvl16:
   5515 3A 44 47      [13]  669     ld a, (level_obstacles)
   5518 FE 09         [ 7]  670     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   551A C8            [11]  671     ret z
   551B 3E B4         [ 7]  672         ld a, #0xB4
   551D CD 2C 46      [17]  673         call set_y_ghost
   5520 CD 93 46      [17]  674         call  generar1entidadGhost
   5523 C9            [10]  675         ret
                            676 
   5524                     677     comprobarEntidades8lvl16:
   5524 3A 44 47      [13]  678     ld a, (level_obstacles)
   5527 FE 0A         [ 7]  679     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   5529 C8            [11]  680     ret z
   552A 3E 76         [ 7]  681         ld a, #0x76
   552C CD 2C 46      [17]  682         call set_y_ghost
   552F CD 93 46      [17]  683         call  generar1entidadGhost
   5532 C9            [10]  684         ret
                            685 
   5533                     686     comprobarEntidades9lvl16:
   5533 3A 44 47      [13]  687     ld a, (level_obstacles)
   5536 FE 0B         [ 7]  688     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5538 C8            [11]  689     ret z
   5539 3E 76         [ 7]  690         ld a, #0x76
   553B CD 2C 46      [17]  691         call set_y_ghost
   553E CD 93 46      [17]  692         call  generar1entidadGhost
   5541 C9            [10]  693         ret
                            694 
   5542                     695     comprobarEntidades10lvl16:
   5542 3A 44 47      [13]  696     ld a, (level_obstacles)
   5545 FE 0C         [ 7]  697     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   5547 C8            [11]  698     ret z
   5548 3E B4         [ 7]  699         ld a, #0xB4
   554A CD 2C 46      [17]  700         call set_y_ghost
   554D CD 93 46      [17]  701         call  generar1entidadGhost
   5550 C9            [10]  702         ret
                            703 
                            704 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            705 ;;
                            706 ;;
                            707 ;;  NIVEL 17 (HALLOWEEN)
                            708 ;;
                            709 ;;
                            710 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5551                     711 man_game_controller_lvl_17::
   5551 3A 46 60      [13]  712     ld a, (_level_seconds)  
   5554 FE 02         [ 7]  713     cp #0x02                      
   5556 28 1F         [12]  714     jr z, comprobarEntidades1lvl17
   5558 FE 05         [ 7]  715     cp #0x05
   555A 28 32         [12]  716     jr z, comprobarEntidades2lvl17
   555C FE 07         [ 7]  717     cp #0x07
   555E 28 3D         [12]  718     jr z, comprobarEntidades3lvl17
   5560 FE 0C         [ 7]  719     cp #0x0C
   5562 28 48         [12]  720     jr z, comprobarEntidades4lvl17
   5564 FE 0F         [ 7]  721     cp #0x0F
   5566 28 5B         [12]  722     jr z, comprobarEntidades5lvl17
   5568 FE 11         [ 7]  723     cp #0x11
   556A 28 66         [12]  724     jr z, comprobarEntidades6lvl17
   556C FE 16         [ 7]  725     cp #0x16
   556E CA E1 55      [10]  726     jp z, comprobarEntidades7lvl17
   5571 FE 19         [ 7]  727     cp #0x19
   5573 CA F8 55      [10]  728     jp z, comprobarEntidades8lvl17
   5576 C9            [10]  729     ret
                            730     
   5577                     731     comprobarEntidades1lvl17:
   5577 3A 44 47      [13]  732     ld a, (level_obstacles)
   557A FE 02         [ 7]  733     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   557C C8            [11]  734     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   557D 3E 76         [ 7]  735         ld a, #0x76
   557F CD 14 46      [17]  736         call set_y_last_obstacle
   5582 CD 6F 46      [17]  737         call generar1entidad
                            738         
   5585 3E B4         [ 7]  739         ld a, #0xB4
   5587 CD 14 46      [17]  740         call set_y_last_obstacle
   558A CD 6F 46      [17]  741         call generar1entidad
   558D C9            [10]  742         ret
                            743     
   558E                     744     comprobarEntidades2lvl17:
   558E 3A 44 47      [13]  745     ld a, (level_obstacles)
   5591 FE 03         [ 7]  746     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5593 C8            [11]  747     ret z
   5594 3E B4         [ 7]  748         ld a, #0xB4
   5596 CD 2C 46      [17]  749         call set_y_ghost
   5599 CD 93 46      [17]  750         call  generar1entidadGhost
   559C C9            [10]  751         ret
                            752     
   559D                     753     comprobarEntidades3lvl17:
   559D 3A 44 47      [13]  754     ld a, (level_obstacles)
   55A0 FE 04         [ 7]  755     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   55A2 C8            [11]  756     ret z
   55A3 3E 76         [ 7]  757         ld a, #0x76
   55A5 CD 14 46      [17]  758         call set_y_last_obstacle
   55A8 CD 6F 46      [17]  759         call generar1entidad
   55AB C9            [10]  760         ret
                            761 
   55AC                     762     comprobarEntidades4lvl17:
   55AC 3A 44 47      [13]  763     ld a, (level_obstacles)
   55AF FE 06         [ 7]  764     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   55B1 C8            [11]  765     ret z
   55B2 3E 76         [ 7]  766         ld a, #0x76
   55B4 CD 14 46      [17]  767         call set_y_last_obstacle
   55B7 CD 6F 46      [17]  768         call generar1entidad
                            769         
   55BA 3E B4         [ 7]  770         ld a, #0xB4
   55BC CD 14 46      [17]  771         call set_y_last_obstacle
   55BF CD 6F 46      [17]  772         call generar1entidad
   55C2 C9            [10]  773         ret
                            774 
   55C3                     775     comprobarEntidades5lvl17:
   55C3 3A 44 47      [13]  776     ld a, (level_obstacles)
   55C6 FE 07         [ 7]  777     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   55C8 C8            [11]  778     ret z
   55C9 3E B4         [ 7]  779         ld a, #0xB4
   55CB CD 2C 46      [17]  780         call set_y_ghost
   55CE CD 93 46      [17]  781         call  generar1entidadGhost
   55D1 C9            [10]  782         ret
                            783     
   55D2                     784     comprobarEntidades6lvl17:
   55D2 3A 44 47      [13]  785     ld a, (level_obstacles)
   55D5 FE 08         [ 7]  786     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   55D7 C8            [11]  787     ret z
   55D8 3E 76         [ 7]  788         ld a, #0x76
   55DA CD 14 46      [17]  789         call set_y_last_obstacle
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   55DD CD 6F 46      [17]  790         call generar1entidad
   55E0 C9            [10]  791         ret
                            792 
   55E1                     793     comprobarEntidades7lvl17:
   55E1 3A 44 47      [13]  794     ld a, (level_obstacles)
   55E4 FE 0A         [ 7]  795     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   55E6 C8            [11]  796     ret z
   55E7 3E 76         [ 7]  797         ld a, #0x76
   55E9 CD 14 46      [17]  798         call set_y_last_obstacle
   55EC CD 6F 46      [17]  799         call generar1entidad
                            800         
   55EF 3E B4         [ 7]  801         ld a, #0xB4
   55F1 CD 14 46      [17]  802         call set_y_last_obstacle
   55F4 CD 6F 46      [17]  803         call generar1entidad
   55F7 C9            [10]  804         ret
                            805 
   55F8                     806     comprobarEntidades8lvl17:
   55F8 3A 44 47      [13]  807     ld a, (level_obstacles)
   55FB FE 0B         [ 7]  808     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   55FD C8            [11]  809     ret z
   55FE 3E B4         [ 7]  810         ld a, #0xB4
   5600 CD 2C 46      [17]  811         call set_y_ghost
   5603 CD 93 46      [17]  812         call  generar1entidadGhost
   5606 C9            [10]  813         ret
                            814 
                            815 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            816 ;;
                            817 ;;
                            818 ;;  NIVEL 18 (HALLOWEEN)
                            819 ;;
                            820 ;;
                            821 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5607                     822 man_game_controller_lvl_18::
   5607 3A 46 60      [13]  823     ld a, (_level_seconds)  
   560A FE 02         [ 7]  824     cp #0x02                      
   560C 28 22         [12]  825     jr z, comprobarEntidades1lvl18
   560E FE 06         [ 7]  826     cp #0x06
   5610 28 35         [12]  827     jr z, comprobarEntidades2lvl18
   5612 FE 08         [ 7]  828     cp #0x08
   5614 28 40         [12]  829     jr z, comprobarEntidades3lvl18
   5616 FE 0A         [ 7]  830     cp #0x0A
   5618 28 4B         [12]  831     jr z, comprobarEntidades4lvl18
   561A FE 10         [ 7]  832     cp #0x10
   561C 28 56         [12]  833     jr z, comprobarEntidades5lvl18
   561E FE 12         [ 7]  834     cp #0x12
   5620 28 69         [12]  835     jr z, comprobarEntidades6lvl18
   5622 FE 14         [ 7]  836     cp #0x14
   5624 28 74         [12]  837     jr z, comprobarEntidades7lvl18
   5626 FE 16         [ 7]  838     cp #0x16
   5628 28 7F         [12]  839     jr z, comprobarEntidades8lvl18
   562A FE 19         [ 7]  840     cp #0x19
   562C CA B8 56      [10]  841     jp z, comprobarEntidades9lvl18
   562F C9            [10]  842     ret
                            843     
   5630                     844     comprobarEntidades1lvl18:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   5630 3A 44 47      [13]  845     ld a, (level_obstacles)
   5633 FE 02         [ 7]  846     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5635 C8            [11]  847     ret z
   5636 3E 76         [ 7]  848         ld a, #0x76
   5638 CD 14 46      [17]  849         call set_y_last_obstacle
   563B CD 6F 46      [17]  850         call generar1entidad
   563E 3E B4         [ 7]  851         ld a, #0xB4
   5640 CD 14 46      [17]  852         call set_y_last_obstacle
   5643 CD 6F 46      [17]  853         call generar1entidad
   5646 C9            [10]  854         ret
                            855 
   5647                     856     comprobarEntidades2lvl18:
   5647 3A 44 47      [13]  857     ld a, (level_obstacles)
   564A FE 03         [ 7]  858     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   564C C8            [11]  859     ret z
   564D 3E 76         [ 7]  860         ld a, #0x76
   564F CD 2C 46      [17]  861         call set_y_ghost
   5652 CD 93 46      [17]  862         call  generar1entidadGhost
   5655 C9            [10]  863         ret
                            864 
   5656                     865     comprobarEntidades3lvl18:
   5656 3A 44 47      [13]  866     ld a, (level_obstacles)
   5659 FE 04         [ 7]  867     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   565B C8            [11]  868     ret z
   565C 3E B4         [ 7]  869         ld a, #0xB4
   565E CD 2C 46      [17]  870         call set_y_ghost
   5661 CD 93 46      [17]  871         call  generar1entidadGhost
   5664 C9            [10]  872         ret
                            873 
   5665                     874     comprobarEntidades4lvl18:
   5665 3A 44 47      [13]  875     ld a, (level_obstacles)
   5668 FE 05         [ 7]  876     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   566A C8            [11]  877     ret z
   566B 3E 76         [ 7]  878         ld a, #0x76
   566D CD 2C 46      [17]  879         call set_y_ghost
   5670 CD 93 46      [17]  880         call  generar1entidadGhost
   5673 C9            [10]  881         ret 
                            882 
   5674                     883     comprobarEntidades5lvl18:
   5674 3A 44 47      [13]  884     ld a, (level_obstacles)
   5677 FE 07         [ 7]  885     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5679 C8            [11]  886     ret z
   567A 3E 76         [ 7]  887         ld a, #0x76
   567C CD 14 46      [17]  888         call set_y_last_obstacle
   567F CD 6F 46      [17]  889         call generar1entidad
   5682 3E B4         [ 7]  890         ld a, #0xB4
   5684 CD 14 46      [17]  891         call set_y_last_obstacle
   5687 CD 6F 46      [17]  892         call generar1entidad
   568A C9            [10]  893         ret
                            894 
   568B                     895     comprobarEntidades6lvl18:
   568B 3A 44 47      [13]  896     ld a, (level_obstacles)
   568E FE 08         [ 7]  897     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5690 C8            [11]  898     ret z
   5691 3E 76         [ 7]  899         ld a, #0x76
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   5693 CD 2C 46      [17]  900         call set_y_ghost
   5696 CD 93 46      [17]  901         call  generar1entidadGhost
   5699 C9            [10]  902         ret
                            903 
   569A                     904     comprobarEntidades7lvl18:
   569A 3A 44 47      [13]  905     ld a, (level_obstacles)
   569D FE 09         [ 7]  906     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   569F C8            [11]  907     ret z
   56A0 3E B4         [ 7]  908         ld a, #0xB4
   56A2 CD 2C 46      [17]  909         call set_y_ghost
   56A5 CD 93 46      [17]  910         call  generar1entidadGhost
   56A8 C9            [10]  911         ret
                            912 
   56A9                     913     comprobarEntidades8lvl18:
   56A9 3A 44 47      [13]  914     ld a, (level_obstacles)
   56AC FE 0A         [ 7]  915     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   56AE C8            [11]  916     ret z
   56AF 3E 76         [ 7]  917         ld a, #0x76
   56B1 CD 2C 46      [17]  918         call set_y_ghost
   56B4 CD 93 46      [17]  919         call  generar1entidadGhost
   56B7 C9            [10]  920         ret
                            921 
   56B8                     922     comprobarEntidades9lvl18:
   56B8 3A 44 47      [13]  923     ld a, (level_obstacles)
   56BB FE 0B         [ 7]  924     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   56BD C8            [11]  925     ret z
   56BE 3E B4         [ 7]  926         ld a, #0xB4
   56C0 CD 14 46      [17]  927         call set_y_last_obstacle
   56C3 CD 6F 46      [17]  928         call generar1entidad
   56C6 C9            [10]  929         ret
                            930 
                            931 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            932 ;;
                            933 ;;
                            934 ;;  NIVEL 19 (HALLOWEEN)
                            935 ;;
                            936 ;;
                            937 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   56C7                     938 man_game_controller_lvl_19::
   56C7 3A 46 60      [13]  939     ld a, (_level_seconds)  
   56CA FE 02         [ 7]  940     cp #0x02                      
   56CC 28 1F         [12]  941     jr z, comprobarEntidades1lvl19
   56CE FE 06         [ 7]  942     cp #0x06
   56D0 28 32         [12]  943     jr z, comprobarEntidades2lvl19
   56D2 FE 0A         [ 7]  944     cp #0x0A
   56D4 28 45         [12]  945     jr z, comprobarEntidades3lvl19
   56D6 FE 0B         [ 7]  946     cp #0x0B
   56D8 28 50         [12]  947     jr z, comprobarEntidades4lvl19
   56DA FE 0C         [ 7]  948     cp #0x0C
   56DC 28 5B         [12]  949     jr z, comprobarEntidades5lvl19
   56DE FE 0F         [ 7]  950     cp #0x0F
   56E0 28 66         [12]  951     jr z, comprobarEntidades6lvl19
   56E2 FE 14         [ 7]  952     cp #0x14
   56E4 CA 5F 57      [10]  953     jp z, comprobarEntidades7lvl19
   56E7 FE 18         [ 7]  954     cp #0x18
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   56E9 CA 76 57      [10]  955     jp z, comprobarEntidades8lvl19
   56EC C9            [10]  956     ret
                            957     
   56ED                     958     comprobarEntidades1lvl19:
   56ED 3A 44 47      [13]  959     ld a, (level_obstacles)
   56F0 FE 02         [ 7]  960     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   56F2 C8            [11]  961     ret z
   56F3 3E 76         [ 7]  962         ld a, #0x76
   56F5 CD 2C 46      [17]  963         call set_y_ghost
   56F8 CD 93 46      [17]  964         call generar1entidadGhost
                            965         
   56FB 3E B4         [ 7]  966         ld a, #0xB4
   56FD CD 2C 46      [17]  967         call set_y_ghost
   5700 CD 93 46      [17]  968         call generar1entidadGhost
   5703 C9            [10]  969         ret
                            970     
   5704                     971     comprobarEntidades2lvl19:
   5704 3A 44 47      [13]  972     ld a, (level_obstacles)
   5707 FE 04         [ 7]  973     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5709 C8            [11]  974     ret z
   570A 3E 76         [ 7]  975         ld a, #0x76
   570C CD 14 46      [17]  976         call set_y_last_obstacle
   570F CD 6F 46      [17]  977         call generar1entidad
                            978         
   5712 3E B4         [ 7]  979         ld a, #0xB4
   5714 CD 14 46      [17]  980         call set_y_last_obstacle
   5717 CD 6F 46      [17]  981         call generar1entidad
   571A C9            [10]  982         ret
                            983     
   571B                     984     comprobarEntidades3lvl19:
   571B 3A 44 47      [13]  985     ld a, (level_obstacles)
   571E FE 05         [ 7]  986     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5720 C8            [11]  987     ret z
   5721 3E 76         [ 7]  988         ld a, #0x76
   5723 CD 14 46      [17]  989         call set_y_last_obstacle
   5726 CD 6F 46      [17]  990         call generar1entidad
   5729 C9            [10]  991         ret
                            992     
   572A                     993     comprobarEntidades4lvl19:
   572A 3A 44 47      [13]  994     ld a, (level_obstacles)
   572D FE 06         [ 7]  995     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   572F C8            [11]  996     ret z
   5730 3E 95         [ 7]  997         ld a, #0x95
   5732 CD 14 46      [17]  998         call set_y_last_obstacle
   5735 CD 6F 46      [17]  999         call generar1entidad
   5738 C9            [10] 1000         ret
                           1001     
   5739                    1002     comprobarEntidades5lvl19:
   5739 3A 44 47      [13] 1003     ld a, (level_obstacles)
   573C FE 07         [ 7] 1004     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   573E C8            [11] 1005     ret z
   573F 3E B4         [ 7] 1006         ld a, #0xB4
   5741 CD 14 46      [17] 1007         call set_y_last_obstacle
   5744 CD 6F 46      [17] 1008         call generar1entidad
   5747 C9            [10] 1009         ret
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



                           1010 
   5748                    1011     comprobarEntidades6lvl19:
   5748 3A 44 47      [13] 1012     ld a, (level_obstacles)
   574B FE 09         [ 7] 1013     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   574D C8            [11] 1014     ret z
   574E 3E 86         [ 7] 1015         ld a, #0x86
   5750 CD 14 46      [17] 1016         call set_y_last_obstacle
   5753 CD 6F 46      [17] 1017         call generar1entidad
                           1018         
   5756 3E A5         [ 7] 1019         ld a, #0xA5
   5758 CD 14 46      [17] 1020         call set_y_last_obstacle
   575B CD 6F 46      [17] 1021         call generar1entidad
   575E C9            [10] 1022         ret
                           1023 
   575F                    1024     comprobarEntidades7lvl19:
   575F 3A 44 47      [13] 1025     ld a, (level_obstacles)
   5762 FE 0B         [ 7] 1026     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5764 C8            [11] 1027     ret z
   5765 3E 76         [ 7] 1028         ld a, #0x76
   5767 CD 2C 46      [17] 1029         call set_y_ghost
   576A CD 93 46      [17] 1030         call generar1entidadGhost
                           1031         
   576D 3E B4         [ 7] 1032         ld a, #0xB4
   576F CD 2C 46      [17] 1033         call set_y_ghost
   5772 CD 93 46      [17] 1034         call generar1entidadGhost
   5775 C9            [10] 1035         ret
                           1036 
   5776                    1037     comprobarEntidades8lvl19:
   5776 3A 44 47      [13] 1038     ld a, (level_obstacles)
   5779 FE 0D         [ 7] 1039     cp #0x0D                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   577B C8            [11] 1040     ret z
   577C 3E 76         [ 7] 1041         ld a, #0x76
   577E CD 14 46      [17] 1042         call set_y_last_obstacle
   5781 CD 6F 46      [17] 1043         call generar1entidad
                           1044         
   5784 3E B4         [ 7] 1045         ld a, #0xB4
   5786 CD 14 46      [17] 1046         call set_y_last_obstacle
   5789 CD 6F 46      [17] 1047         call generar1entidad
   578C C9            [10] 1048         ret 
                           1049    
                           1050 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                           1051 ;;
                           1052 ;;
                           1053 ;;  NIVEL 20 (HALLOWEEN)
                           1054 ;;
                           1055 ;;
                           1056 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   578D                    1057 man_game_controller_lvl_20::
   578D 3A 46 60      [13] 1058     ld a, (_level_seconds)  
   5790 FE 02         [ 7] 1059     cp #0x02                      
   5792 28 23         [12] 1060     jr z, comprobarEntidades1lvl20
   5794 FE 06         [ 7] 1061     cp #0x06
   5796 28 36         [12] 1062     jr z, comprobarEntidades2lvl20
   5798 FE 0A         [ 7] 1063     cp #0x0A
   579A 28 49         [12] 1064     jr z, comprobarEntidades3lvl20
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



   579C FE 0B         [ 7] 1065     cp #0x0B
   579E 28 54         [12] 1066     jr z, comprobarEntidades4lvl20    
   57A0 FE 0E         [ 7] 1067     cp #0x0E
   57A2 28 5F         [12] 1068     jr z, comprobarEntidades5lvl20
   57A4 FE 0F         [ 7] 1069     cp #0x0F
   57A6 28 6A         [12] 1070     jr z, comprobarEntidades6lvl20
   57A8 FE 13         [ 7] 1071     cp #0x13
   57AA 28 75         [12] 1072     jr z, comprobarEntidades7lvl20
   57AC FE 14         [ 7] 1073     cp #0x14
   57AE CA 30 58      [10] 1074     jp z, comprobarEntidades8lvl20
   57B1 FE 18         [ 7] 1075     cp #0x18
   57B3 CA 3F 58      [10] 1076     jp z, comprobarEntidades9lvl20
   57B6 C9            [10] 1077     ret
                           1078     
   57B7                    1079     comprobarEntidades1lvl20:
   57B7 3A 44 47      [13] 1080     ld a, (level_obstacles)
   57BA FE 02         [ 7] 1081     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   57BC C8            [11] 1082     ret z
   57BD 3E 76         [ 7] 1083         ld a, #0x76
   57BF CD 2C 46      [17] 1084         call set_y_ghost
   57C2 CD 93 46      [17] 1085         call generar1entidadGhost
                           1086         
   57C5 3E B4         [ 7] 1087         ld a, #0xB4
   57C7 CD 2C 46      [17] 1088         call set_y_ghost
   57CA CD 93 46      [17] 1089         call generar1entidadGhost
   57CD C9            [10] 1090         ret
                           1091 
   57CE                    1092     comprobarEntidades2lvl20:
   57CE 3A 44 47      [13] 1093     ld a, (level_obstacles)
   57D1 FE 04         [ 7] 1094     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   57D3 C8            [11] 1095     ret z
   57D4 3E 76         [ 7] 1096         ld a, #0x76
   57D6 CD 2C 46      [17] 1097         call set_y_ghost
   57D9 CD 93 46      [17] 1098         call generar1entidadGhost
                           1099         
   57DC 3E B4         [ 7] 1100         ld a, #0xB4
   57DE CD 2C 46      [17] 1101         call set_y_ghost
   57E1 CD 93 46      [17] 1102         call generar1entidadGhost
   57E4 C9            [10] 1103         ret
                           1104 
   57E5                    1105     comprobarEntidades3lvl20:
   57E5 3A 44 47      [13] 1106     ld a, (level_obstacles)
   57E8 FE 05         [ 7] 1107     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   57EA C8            [11] 1108     ret z
   57EB 3E 76         [ 7] 1109         ld a, #0x76
   57ED CD 2C 46      [17] 1110         call set_y_ghost
   57F0 CD 93 46      [17] 1111         call generar1entidadGhost
   57F3 C9            [10] 1112         ret
                           1113 
   57F4                    1114     comprobarEntidades4lvl20:
   57F4 3A 44 47      [13] 1115     ld a, (level_obstacles)
   57F7 FE 06         [ 7] 1116     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   57F9 C8            [11] 1117     ret z       
   57FA 3E 76         [ 7] 1118         ld a, #0x76
   57FC CD 2C 46      [17] 1119         call set_y_ghost
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   57FF CD 93 46      [17] 1120         call generar1entidadGhost
   5802 C9            [10] 1121         ret
                           1122 
   5803                    1123     comprobarEntidades5lvl20:
   5803 3A 44 47      [13] 1124     ld a, (level_obstacles)
   5806 FE 07         [ 7] 1125     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5808 C8            [11] 1126     ret z
   5809 3E 76         [ 7] 1127         ld a, #0x76
   580B CD 2C 46      [17] 1128         call set_y_ghost
   580E CD 93 46      [17] 1129         call generar1entidadGhost
   5811 C9            [10] 1130         ret
                           1131 
   5812                    1132     comprobarEntidades6lvl20:
   5812 3A 44 47      [13] 1133     ld a, (level_obstacles)
   5815 FE 08         [ 7] 1134     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5817 C8            [11] 1135     ret z       
   5818 3E B4         [ 7] 1136         ld a, #0xB4
   581A CD 2C 46      [17] 1137         call set_y_ghost
   581D CD 93 46      [17] 1138         call generar1entidadGhost
   5820 C9            [10] 1139         ret
                           1140     
   5821                    1141     comprobarEntidades7lvl20:
   5821 3A 44 47      [13] 1142     ld a, (level_obstacles)
   5824 FE 09         [ 7] 1143     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5826 C8            [11] 1144     ret z
   5827 3E B4         [ 7] 1145         ld a, #0xB4
   5829 CD 2C 46      [17] 1146         call set_y_ghost
   582C CD 93 46      [17] 1147         call generar1entidadGhost
   582F C9            [10] 1148         ret
                           1149 
   5830                    1150     comprobarEntidades8lvl20:
   5830 3A 44 47      [13] 1151     ld a, (level_obstacles)
   5833 FE 0A         [ 7] 1152     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5835 C8            [11] 1153     ret z       
   5836 3E B4         [ 7] 1154         ld a, #0xB4
   5838 CD 2C 46      [17] 1155         call set_y_ghost
   583B CD 93 46      [17] 1156         call generar1entidadGhost
   583E C9            [10] 1157         ret
                           1158     
   583F                    1159     comprobarEntidades9lvl20:
   583F 3A 44 47      [13] 1160     ld a, (level_obstacles)
   5842 FE 0C         [ 7] 1161     cp #0x0C                ;; Si ya tengo 14 entidades no compruebo ninguna mas
   5844 C8            [11] 1162     ret z
   5845 3E A4         [ 7] 1163         ld a, #0xA4
   5847 CD 14 46      [17] 1164         call set_y_last_obstacle
   584A CD 6F 46      [17] 1165         call generar1entidad
   584D 3E B4         [ 7] 1166         ld a, #0xB4
   584F CD 14 46      [17] 1167         call set_y_last_obstacle
   5852 CD 6F 46      [17] 1168         call generar1entidad
   5855 C9            [10] 1169         ret
