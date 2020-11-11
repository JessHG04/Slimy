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
   512A                      28 man_game_controller_lvl_11::
   512A 3A 6E 60      [13]   29     ld a, (_level_seconds)  
   512D FE 04         [ 7]   30     cp #0x04                      
   512F 28 1D         [12]   31     jr z, comprobarEntidades1lvl11
   5131 FE 08         [ 7]   32     cp #0x08 
   5133 28 28         [12]   33     jr z, comprobarEntidades2lvl11
   5135 FE 0C         [ 7]   34     cp #0x0C
   5137 28 33         [12]   35     jr z, comprobarEntidades3lvl11
   5139 FE 0E         [ 7]   36     cp #0x0E
   513B 28 3E         [12]   37     jr z, comprobarEntidades4lvl11
   513D FE 12         [ 7]   38     cp #0x12
   513F 28 49         [12]   39     jr z, comprobarEntidades5lvl11
   5141 FE 14         [ 7]   40     cp #0x14
   5143 28 54         [12]   41     jr z, comprobarEntidades6lvl11
   5145 FE 17         [ 7]   42     cp #0x17
   5147 28 5F         [12]   43     jr z, comprobarEntidades7lvl11
   5149 FE 19         [ 7]   44     cp #0x19
   514B 28 6A         [12]   45     jr z, comprobarEntidades8lvl11
   514D C9            [10]   46     ret
                             47     
   514E                      48     comprobarEntidades1lvl11:
   514E 3A 6C 47      [13]   49     ld a, (level_obstacles)
   5151 FE 01         [ 7]   50     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5153 C8            [11]   51     ret z
   5154 3E 76         [ 7]   52         ld a, #0x76
   5156 CD 54 46      [17]   53         call set_y_ghost
   5159 CD BB 46      [17]   54         call  generar1entidadGhost
   515C C9            [10]   55         ret
                             56     
   515D                      57     comprobarEntidades2lvl11:
   515D 3A 6C 47      [13]   58     ld a, (level_obstacles)
   5160 FE 02         [ 7]   59     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5162 C8            [11]   60     ret z
   5163 3E B4         [ 7]   61         ld a, #0xB4
   5165 CD 3C 46      [17]   62         call set_y_last_obstacle   
   5168 CD 97 46      [17]   63         call generar1entidad
   516B C9            [10]   64         ret  
                             65     
   516C                      66     comprobarEntidades3lvl11:
   516C 3A 6C 47      [13]   67     ld a, (level_obstacles)
   516F FE 03         [ 7]   68     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5171 C8            [11]   69     ret z
   5172 3E 76         [ 7]   70         ld a, #0x76
   5174 CD 3C 46      [17]   71         call set_y_last_obstacle
   5177 CD 97 46      [17]   72         call generar1entidad
   517A C9            [10]   73         ret 
                             74     
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 7.
Hexadecimal [16-Bits]



   517B                      75     comprobarEntidades4lvl11:
   517B 3A 6C 47      [13]   76     ld a, (level_obstacles)
   517E FE 04         [ 7]   77     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5180 C8            [11]   78     ret z
   5181 3E B4         [ 7]   79         ld a, #0xB4
   5183 CD 3C 46      [17]   80         call set_y_last_obstacle  
   5186 CD 97 46      [17]   81         call generar1entidad
   5189 C9            [10]   82         ret 
                             83 
   518A                      84     comprobarEntidades5lvl11:
   518A 3A 6C 47      [13]   85     ld a, (level_obstacles)
   518D FE 05         [ 7]   86     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   518F C8            [11]   87     ret z
   5190 3E 76         [ 7]   88         ld a, #0x76
   5192 CD 3C 46      [17]   89         call set_y_last_obstacle
   5195 CD 97 46      [17]   90         call generar1entidad
   5198 C9            [10]   91         ret
                             92 
   5199                      93     comprobarEntidades6lvl11:
   5199 3A 6C 47      [13]   94     ld a, (level_obstacles)
   519C FE 06         [ 7]   95     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   519E C8            [11]   96     ret z
   519F 3E B4         [ 7]   97         ld a, #0xB4
   51A1 CD 54 46      [17]   98         call set_y_ghost
   51A4 CD BB 46      [17]   99         call  generar1entidadGhost
   51A7 C9            [10]  100         ret
                            101     
   51A8                     102     comprobarEntidades7lvl11:
   51A8 3A 6C 47      [13]  103     ld a, (level_obstacles)
   51AB FE 07         [ 7]  104     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   51AD C8            [11]  105     ret z
   51AE 3E 76         [ 7]  106         ld a, #0x76
   51B0 CD 54 46      [17]  107         call set_y_ghost
   51B3 CD BB 46      [17]  108         call  generar1entidadGhost
   51B6 C9            [10]  109         ret
                            110     
   51B7                     111     comprobarEntidades8lvl11:
   51B7 3A 6C 47      [13]  112     ld a, (level_obstacles)
   51BA FE 08         [ 7]  113     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   51BC C8            [11]  114     ret z
   51BD 3E B4         [ 7]  115         ld a, #0xB4
   51BF CD 3C 46      [17]  116         call set_y_last_obstacle
   51C2 CD 97 46      [17]  117         call generar1entidad
   51C5 C9            [10]  118         ret
                            119     
                            120 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            121 ;;
                            122 ;;
                            123 ;;  NIVEL 12 (HALLOWEEN)
                            124 ;;
                            125 ;;
                            126 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   51C6                     127 man_game_controller_lvl_12::
   51C6 3A 6E 60      [13]  128     ld a, (_level_seconds)  
   51C9 FE 03         [ 7]  129     cp #0x03                      
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 8.
Hexadecimal [16-Bits]



   51CB 28 15         [12]  130     jr z, comprobarEntidades1lvl12
   51CD FE 07         [ 7]  131     cp #0x07
   51CF 28 20         [12]  132     jr z, comprobarEntidades2lvl12
   51D1 FE 0C         [ 7]  133     cp #0x0C
   51D3 28 2B         [12]  134     jr z, comprobarEntidades3lvl12
   51D5 FE 13         [ 7]  135     cp #0x13
   51D7 28 3E         [12]  136     jr z, comprobarEntidades4lvl12
   51D9 FE 15         [ 7]  137     cp #0x15
   51DB 28 49         [12]  138     jr z, comprobarEntidades5lvl12
   51DD FE 1A         [ 7]  139     cp #0x1A
   51DF 28 54         [12]  140     jr z, comprobarEntidades6lvl12
   51E1 C9            [10]  141     ret
                            142 
   51E2                     143     comprobarEntidades1lvl12:
   51E2 3A 6C 47      [13]  144     ld a, (level_obstacles)
   51E5 FE 01         [ 7]  145     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   51E7 C8            [11]  146     ret z
   51E8 3E B4         [ 7]  147         ld a, #0xB4
   51EA CD 54 46      [17]  148         call set_y_ghost
   51ED CD BB 46      [17]  149         call  generar1entidadGhost
   51F0 C9            [10]  150         ret
                            151     
   51F1                     152     comprobarEntidades2lvl12:
   51F1 3A 6C 47      [13]  153     ld a, (level_obstacles)
   51F4 FE 02         [ 7]  154     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   51F6 C8            [11]  155     ret z
   51F7 3E 76         [ 7]  156         ld a, #0x76
   51F9 CD 3C 46      [17]  157         call set_y_last_obstacle   
   51FC CD 97 46      [17]  158         call generar1entidad
   51FF C9            [10]  159         ret
                            160     
   5200                     161     comprobarEntidades3lvl12:
   5200 3A 6C 47      [13]  162     ld a, (level_obstacles)
   5203 FE 04         [ 7]  163     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5205 C8            [11]  164     ret z
   5206 3E 76         [ 7]  165         ld a, #0x76
   5208 CD 3C 46      [17]  166         call set_y_last_obstacle
   520B CD 97 46      [17]  167         call generar1entidad
                            168         
   520E 3E B4         [ 7]  169         ld a, #0xB4
   5210 CD 3C 46      [17]  170         call set_y_last_obstacle
   5213 CD 97 46      [17]  171         call generar1entidad    
   5216 C9            [10]  172         ret
                            173     
   5217                     174     comprobarEntidades4lvl12:
   5217 3A 6C 47      [13]  175     ld a, (level_obstacles)
   521A FE 05         [ 7]  176     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   521C C8            [11]  177     ret z
   521D 3E B4         [ 7]  178         ld a, #0xB4
   521F CD 54 46      [17]  179         call set_y_ghost
   5222 CD BB 46      [17]  180         call  generar1entidadGhost
   5225 C9            [10]  181         ret 
                            182     
   5226                     183     comprobarEntidades5lvl12:
   5226 3A 6C 47      [13]  184     ld a, (level_obstacles)
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 9.
Hexadecimal [16-Bits]



   5229 FE 06         [ 7]  185     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   522B C8            [11]  186     ret z
   522C 3E 76         [ 7]  187         ld a, #0x76
   522E CD 3C 46      [17]  188         call set_y_last_obstacle
   5231 CD 97 46      [17]  189         call generar1entidad
   5234 C9            [10]  190         ret
                            191     
   5235                     192     comprobarEntidades6lvl12:
   5235 3A 6C 47      [13]  193     ld a, (level_obstacles)
   5238 FE 08         [ 7]  194     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   523A C8            [11]  195     ret z
   523B 3E 76         [ 7]  196         ld a, #0x76
   523D CD 3C 46      [17]  197         call set_y_last_obstacle
   5240 CD 97 46      [17]  198         call generar1entidad
                            199         
   5243 3E B4         [ 7]  200         ld a, #0xB4
   5245 CD 3C 46      [17]  201         call set_y_last_obstacle
   5248 CD 97 46      [17]  202         call generar1entidad    
   524B C9            [10]  203         ret    
                            204 
                            205 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            206 ;;
                            207 ;;
                            208 ;;  NIVEL 13 (HALLOWEEN)
                            209 ;;
                            210 ;;
                            211 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            212 
   524C                     213 man_game_controller_lvl_13::
   524C 3A 6E 60      [13]  214     ld a, (_level_seconds)  
   524F FE 02         [ 7]  215     cp #0x02                      
   5251 28 27         [12]  216     jr z, comprobarEntidades1lvl13
   5253 FE 04         [ 7]  217     cp #0x04
   5255 28 32         [12]  218     jr z, comprobarEntidades2lvl13
   5257 FE 05         [ 7]  219     cp #0x05
   5259 28 3D         [12]  220     jr z, comprobarEntidades3lvl13
   525B FE 08         [ 7]  221     cp #0x08
   525D 28 48         [12]  222     jr z, comprobarEntidades4lvl13
   525F FE 0C         [ 7]  223     cp #0x0C
   5261 28 53         [12]  224     jr z, comprobarEntidades5lvl13
   5263 FE 0E         [ 7]  225     cp #0x0E
   5265 28 5E         [12]  226     jr z, comprobarEntidades6lvl13
   5267 FE 0F         [ 7]  227     cp #0x0F
   5269 28 69         [12]  228     jr z, comprobarEntidades7lvl13
   526B FE 11         [ 7]  229     cp #0x11
   526D 28 74         [12]  230     jr z, comprobarEntidades8lvl13
   526F FE 14         [ 7]  231     cp #0x14
   5271 CA F2 52      [10]  232     jp z, comprobarEntidades9lvl13
   5274 FE 18         [ 7]  233     cp #0x18
   5276 CA 01 53      [10]  234     jp z, comprobarEntidades10lvl13
   5279 C9            [10]  235     ret
                            236     
   527A                     237     comprobarEntidades1lvl13:
   527A 3A 6C 47      [13]  238     ld a, (level_obstacles)
   527D FE 01         [ 7]  239     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 10.
Hexadecimal [16-Bits]



   527F C8            [11]  240     ret z
   5280 3E B4         [ 7]  241         ld a, #0xB4
   5282 CD 3C 46      [17]  242         call set_y_last_obstacle
   5285 CD 97 46      [17]  243         call generar1entidad
   5288 C9            [10]  244         ret
                            245     
   5289                     246     comprobarEntidades2lvl13:
   5289 3A 6C 47      [13]  247     ld a, (level_obstacles)
   528C FE 02         [ 7]  248     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   528E C8            [11]  249     ret z
   528F 3E 76         [ 7]  250         ld a, #0x76
   5291 CD 3C 46      [17]  251         call set_y_last_obstacle
   5294 CD 97 46      [17]  252         call generar1entidad
   5297 C9            [10]  253         ret
                            254     
   5298                     255     comprobarEntidades3lvl13:
   5298 3A 6C 47      [13]  256     ld a, (level_obstacles)
   529B FE 03         [ 7]  257     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   529D C8            [11]  258     ret z
   529E 3E 76         [ 7]  259         ld a, #0x76
   52A0 CD 3C 46      [17]  260         call set_y_last_obstacle
   52A3 CD 97 46      [17]  261         call generar1entidad
   52A6 C9            [10]  262         ret
                            263     
   52A7                     264     comprobarEntidades4lvl13:
   52A7 3A 6C 47      [13]  265     ld a, (level_obstacles)
   52AA FE 04         [ 7]  266     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   52AC C8            [11]  267     ret z
   52AD 3E 76         [ 7]  268         ld a, #0x76
   52AF CD 54 46      [17]  269         call set_y_ghost
   52B2 CD BB 46      [17]  270         call  generar1entidadGhost    
   52B5 C9            [10]  271         ret 
                            272     
   52B6                     273     comprobarEntidades5lvl13:
   52B6 3A 6C 47      [13]  274     ld a, (level_obstacles)
   52B9 FE 05         [ 7]  275     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   52BB C8            [11]  276     ret z
   52BC 3E B4         [ 7]  277         ld a, #0xB4
   52BE CD 3C 46      [17]  278         call set_y_last_obstacle
   52C1 CD 97 46      [17]  279         call generar1entidad
   52C4 C9            [10]  280         ret
                            281     
   52C5                     282     comprobarEntidades6lvl13:
   52C5 3A 6C 47      [13]  283     ld a, (level_obstacles)
   52C8 FE 06         [ 7]  284     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   52CA C8            [11]  285     ret z
   52CB 3E 76         [ 7]  286         ld a, #0x76
   52CD CD 3C 46      [17]  287         call set_y_last_obstacle
   52D0 CD 97 46      [17]  288         call generar1entidad
   52D3 C9            [10]  289         ret  
                            290     
   52D4                     291     comprobarEntidades7lvl13:
   52D4 3A 6C 47      [13]  292     ld a, (level_obstacles)
   52D7 FE 07         [ 7]  293     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   52D9 C8            [11]  294     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 11.
Hexadecimal [16-Bits]



   52DA 3E 76         [ 7]  295         ld a, #0x76
   52DC CD 3C 46      [17]  296         call set_y_last_obstacle
   52DF CD 97 46      [17]  297         call generar1entidad
   52E2 C9            [10]  298         ret 
                            299     
   52E3                     300     comprobarEntidades8lvl13:
   52E3 3A 6C 47      [13]  301     ld a, (level_obstacles)
   52E6 FE 08         [ 7]  302     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   52E8 C8            [11]  303     ret z
   52E9 3E B4         [ 7]  304         ld a, #0xB4
   52EB CD 3C 46      [17]  305         call set_y_last_obstacle
   52EE CD 97 46      [17]  306         call generar1entidad
   52F1 C9            [10]  307         ret
                            308     
   52F2                     309     comprobarEntidades9lvl13:
   52F2 3A 6C 47      [13]  310     ld a, (level_obstacles)
   52F5 FE 09         [ 7]  311     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   52F7 C8            [11]  312     ret z
   52F8 3E 76         [ 7]  313         ld a, #0x76
   52FA CD 54 46      [17]  314         call set_y_ghost
   52FD CD BB 46      [17]  315         call  generar1entidadGhost  
   5300 C9            [10]  316         ret
                            317 
   5301                     318     comprobarEntidades10lvl13:
   5301 3A 6C 47      [13]  319     ld a, (level_obstacles)
   5304 FE 0B         [ 7]  320     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5306 C8            [11]  321     ret z
   5307 3E 76         [ 7]  322         ld a, #0x76
   5309 CD 3C 46      [17]  323         call set_y_last_obstacle
   530C CD 97 46      [17]  324         call generar1entidad
                            325 
   530F 3E B4         [ 7]  326         ld a, #0xB4
   5311 CD 3C 46      [17]  327         call set_y_last_obstacle
   5314 CD 97 46      [17]  328         call generar1entidad   
   5317 C9            [10]  329         ret 
                            330 
                            331 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            332 ;;
                            333 ;;
                            334 ;;  NIVEL 14 (HALLOWEEN)
                            335 ;;
                            336 ;;
                            337 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            338 
   5318                     339 man_game_controller_lvl_14::
   5318 3A 6E 60      [13]  340     ld a, (_level_seconds)  
   531B FE 02         [ 7]  341     cp #0x02                      
   531D 28 22         [12]  342     jr z, comprobarEntidades1lvl14
   531F FE 03         [ 7]  343     cp #0x03
   5321 28 2D         [12]  344     jr z, comprobarEntidades2lvl14
   5323 FE 06         [ 7]  345     cp #0x06
   5325 28 38         [12]  346     jr z, comprobarEntidades3lvl14
   5327 FE 09         [ 7]  347     cp #0x09
   5329 28 43         [12]  348     jr z, comprobarEntidades4lvl14
   532B FE 0C         [ 7]  349     cp #0x0C
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 12.
Hexadecimal [16-Bits]



   532D 28 4E         [12]  350     jr z, comprobarEntidades5lvl14
   532F FE 0F         [ 7]  351     cp #0x0F
   5331 28 61         [12]  352     jr z, comprobarEntidades6lvl14
   5333 FE 12         [ 7]  353     cp #0x12
   5335 28 6C         [12]  354     jr z, comprobarEntidades7lvl14
   5337 FE 16         [ 7]  355     cp #0x16
   5339 28 77         [12]  356     jr z, comprobarEntidades8lvl14
   533B FE 19         [ 7]  357     cp #0x19
   533D CA C9 53      [10]  358     jp z, comprobarEntidades9lvl14
   5340 C9            [10]  359     ret
                            360 
   5341                     361     comprobarEntidades1lvl14:
   5341 3A 6C 47      [13]  362     ld a, (level_obstacles)
   5344 FE 01         [ 7]  363     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   5346 C8            [11]  364     ret z
   5347 3E 76         [ 7]  365         ld a, #0x76
   5349 CD 54 46      [17]  366         call set_y_ghost
   534C CD BB 46      [17]  367         call  generar1entidadGhost
   534F C9            [10]  368         ret
                            369 
   5350                     370     comprobarEntidades2lvl14:
   5350 3A 6C 47      [13]  371     ld a, (level_obstacles)
   5353 FE 02         [ 7]  372     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   5355 C8            [11]  373     ret z
   5356 3E B4         [ 7]  374         ld a, #0xB4
   5358 CD 3C 46      [17]  375         call set_y_last_obstacle
   535B CD 97 46      [17]  376         call generar1entidad        
   535E C9            [10]  377         ret
                            378 
   535F                     379     comprobarEntidades3lvl14:
   535F 3A 6C 47      [13]  380     ld a, (level_obstacles)
   5362 FE 03         [ 7]  381     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5364 C8            [11]  382     ret z
   5365 3E 76         [ 7]  383         ld a, #0x76
   5367 CD 3C 46      [17]  384         call set_y_last_obstacle
   536A CD 97 46      [17]  385         call generar1entidad        
   536D C9            [10]  386         ret
                            387         
   536E                     388     comprobarEntidades4lvl14:
   536E 3A 6C 47      [13]  389     ld a, (level_obstacles)
   5371 FE 04         [ 7]  390     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5373 C8            [11]  391     ret z
   5374 3E B4         [ 7]  392         ld a, #0xB4
   5376 CD 54 46      [17]  393         call set_y_ghost
   5379 CD BB 46      [17]  394         call  generar1entidadGhost
   537C C9            [10]  395         ret
                            396     
   537D                     397     comprobarEntidades5lvl14:
   537D 3A 6C 47      [13]  398     ld a, (level_obstacles)
   5380 FE 06         [ 7]  399     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5382 C8            [11]  400     ret z
   5383 3E 76         [ 7]  401         ld a, #0x76
   5385 CD 3C 46      [17]  402         call set_y_last_obstacle
   5388 CD 97 46      [17]  403         call generar1entidad
                            404         
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 13.
Hexadecimal [16-Bits]



   538B 3E B4         [ 7]  405         ld a, #0xB4
   538D CD 3C 46      [17]  406         call set_y_last_obstacle
   5390 CD 97 46      [17]  407         call generar1entidad
   5393 C9            [10]  408         ret
                            409 
   5394                     410     comprobarEntidades6lvl14:
   5394 3A 6C 47      [13]  411     ld a, (level_obstacles)
   5397 FE 07         [ 7]  412     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5399 C8            [11]  413     ret z
   539A 3E 76         [ 7]  414         ld a, #0x76
   539C CD 54 46      [17]  415         call set_y_ghost
   539F CD BB 46      [17]  416         call  generar1entidadGhost
   53A2 C9            [10]  417         ret
                            418 
   53A3                     419     comprobarEntidades7lvl14:
   53A3 3A 6C 47      [13]  420     ld a, (level_obstacles)
   53A6 FE 08         [ 7]  421     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   53A8 C8            [11]  422     ret z
   53A9 3E B4         [ 7]  423         ld a, #0xB4
   53AB CD 54 46      [17]  424         call set_y_ghost
   53AE CD BB 46      [17]  425         call  generar1entidadGhost
   53B1 C9            [10]  426         ret 
                            427 
   53B2                     428     comprobarEntidades8lvl14:
   53B2 3A 6C 47      [13]  429     ld a, (level_obstacles)
   53B5 FE 0A         [ 7]  430     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   53B7 C8            [11]  431     ret z
   53B8 3E 76         [ 7]  432         ld a, #0x76
   53BA CD 3C 46      [17]  433         call set_y_last_obstacle
   53BD CD 97 46      [17]  434         call generar1entidad
                            435         
   53C0 3E B4         [ 7]  436         ld a, #0xB4
   53C2 CD 3C 46      [17]  437         call set_y_last_obstacle
   53C5 CD 97 46      [17]  438         call generar1entidad
   53C8 C9            [10]  439         ret
                            440 
   53C9                     441     comprobarEntidades9lvl14:
   53C9 3A 6C 47      [13]  442     ld a, (level_obstacles)
   53CC FE 0B         [ 7]  443     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   53CE C8            [11]  444     ret z
   53CF 3E B4         [ 7]  445         ld a, #0xB4
   53D1 CD 3C 46      [17]  446         call set_y_last_obstacle
   53D4 CD 97 46      [17]  447         call generar1entidad
   53D7 C9            [10]  448         ret
                            449         
                            450 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            451 ;;
                            452 ;;
                            453 ;;  NIVEL 15 (HALLOWEEN)
                            454 ;;
                            455 ;;
                            456 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   53D8                     457 man_game_controller_lvl_15::
   53D8 3A 6E 60      [13]  458     ld a, (_level_seconds)  
   53DB FE 03         [ 7]  459     cp #0x03                      
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 14.
Hexadecimal [16-Bits]



   53DD 28 27         [12]  460     jr z, comprobarEntidades1lvl15
   53DF FE 04         [ 7]  461     cp #0x04
   53E1 28 32         [12]  462     jr z, comprobarEntidades2lvl15
   53E3 FE 05         [ 7]  463     cp #0x05
   53E5 28 3D         [12]  464     jr z, comprobarEntidades3lvl15
   53E7 FE 0A         [ 7]  465     cp #0x0A
   53E9 28 48         [12]  466     jr z, comprobarEntidades4lvl15
   53EB FE 0B         [ 7]  467     cp #0x0B
   53ED 28 53         [12]  468     jr z, comprobarEntidades5lvl15
   53EF FE 0C         [ 7]  469     cp #0x0C
   53F1 28 5E         [12]  470     jr z, comprobarEntidades6lvl15
   53F3 FE 10         [ 7]  471     cp #0x10
   53F5 28 69         [12]  472     jr z, comprobarEntidades7lvl15
   53F7 FE 13         [ 7]  473     cp #0x13
   53F9 28 74         [12]  474     jr z, comprobarEntidades8lvl15
   53FB FE 17         [ 7]  475     cp #0x17
   53FD CA 7E 54      [10]  476     jp z, comprobarEntidades9lvl15
   5400 FE 1A         [ 7]  477     cp #0x1A
   5402 CA 95 54      [10]  478     jp z, comprobarEntidades10lvl15
   5405 C9            [10]  479     ret
                            480 
   5406                     481     comprobarEntidades1lvl15:
   5406 3A 6C 47      [13]  482     ld a, (level_obstacles)
   5409 FE 01         [ 7]  483     cp #0x01                ;; Si ya tengo 1 entidades no compruebo ninguna mas
   540B C8            [11]  484     ret z
   540C 3E 76         [ 7]  485         ld a, #0x76
   540E CD 3C 46      [17]  486         call set_y_last_obstacle
   5411 CD 97 46      [17]  487         call generar1entidad
   5414 C9            [10]  488         ret
                            489     
   5415                     490     comprobarEntidades2lvl15:
   5415 3A 6C 47      [13]  491     ld a, (level_obstacles)
   5418 FE 02         [ 7]  492     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   541A C8            [11]  493     ret z
   541B 3E 95         [ 7]  494         ld a, #0x95
   541D CD 3C 46      [17]  495         call set_y_last_obstacle
   5420 CD 97 46      [17]  496         call generar1entidad
   5423 C9            [10]  497         ret  
                            498     
   5424                     499     comprobarEntidades3lvl15:
   5424 3A 6C 47      [13]  500     ld a, (level_obstacles)
   5427 FE 03         [ 7]  501     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5429 C8            [11]  502     ret z
   542A 3E B4         [ 7]  503         ld a, #0xB4
   542C CD 3C 46      [17]  504         call set_y_last_obstacle
   542F CD 97 46      [17]  505         call generar1entidad
   5432 C9            [10]  506         ret
                            507 
   5433                     508     comprobarEntidades4lvl15:
   5433 3A 6C 47      [13]  509     ld a, (level_obstacles)
   5436 FE 04         [ 7]  510     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5438 C8            [11]  511     ret z
   5439 3E B4         [ 7]  512         ld a, #0xB4
   543B CD 3C 46      [17]  513         call set_y_last_obstacle
   543E CD 97 46      [17]  514         call generar1entidad
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 15.
Hexadecimal [16-Bits]



   5441 C9            [10]  515         ret
                            516          
   5442                     517     comprobarEntidades5lvl15:
   5442 3A 6C 47      [13]  518     ld a, (level_obstacles)
   5445 FE 05         [ 7]  519     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5447 C8            [11]  520     ret z
   5448 3E 95         [ 7]  521         ld a, #0x95
   544A CD 3C 46      [17]  522         call set_y_last_obstacle
   544D CD 97 46      [17]  523         call generar1entidad
   5450 C9            [10]  524         ret 
                            525 
   5451                     526     comprobarEntidades6lvl15:
   5451 3A 6C 47      [13]  527     ld a, (level_obstacles)
   5454 FE 06         [ 7]  528     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5456 C8            [11]  529     ret z
   5457 3E 76         [ 7]  530         ld a, #0x76
   5459 CD 3C 46      [17]  531         call set_y_last_obstacle
   545C CD 97 46      [17]  532         call generar1entidad
   545F C9            [10]  533         ret  
                            534 
   5460                     535     comprobarEntidades7lvl15:
   5460 3A 6C 47      [13]  536     ld a, (level_obstacles)
   5463 FE 07         [ 7]  537     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5465 C8            [11]  538     ret z
   5466 3E B4         [ 7]  539         ld a, #0xB4
   5468 CD 54 46      [17]  540         call set_y_ghost
   546B CD BB 46      [17]  541         call  generar1entidadGhost
   546E C9            [10]  542         ret 
                            543     
   546F                     544     comprobarEntidades8lvl15:
   546F 3A 6C 47      [13]  545     ld a, (level_obstacles)
   5472 FE 08         [ 7]  546     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5474 C8            [11]  547     ret z
   5475 3E 76         [ 7]  548         ld a, #0x76
   5477 CD 54 46      [17]  549         call set_y_ghost
   547A CD BB 46      [17]  550         call  generar1entidadGhost
   547D C9            [10]  551         ret
                            552     
   547E                     553     comprobarEntidades9lvl15:
   547E 3A 6C 47      [13]  554     ld a, (level_obstacles)
   5481 FE 0A         [ 7]  555     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   5483 C8            [11]  556     ret z
   5484 3E 76         [ 7]  557         ld a, #0x76
   5486 CD 3C 46      [17]  558         call set_y_last_obstacle
   5489 CD 97 46      [17]  559         call generar1entidad
                            560         
   548C 3E B4         [ 7]  561         ld a, #0xB4
   548E CD 3C 46      [17]  562         call set_y_last_obstacle
   5491 CD 97 46      [17]  563         call generar1entidad
   5494 C9            [10]  564         ret
                            565     
   5495                     566     comprobarEntidades10lvl15:
   5495 3A 6C 47      [13]  567     ld a, (level_obstacles)
   5498 FE 0B         [ 7]  568     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   549A C8            [11]  569     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 16.
Hexadecimal [16-Bits]



   549B 3E 76         [ 7]  570         ld a, #0x76
   549D CD 3C 46      [17]  571         call set_y_last_obstacle
   54A0 CD 97 46      [17]  572         call generar1entidad
   54A3 C9            [10]  573         ret
                            574 
                            575 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            576 ;;
                            577 ;;
                            578 ;;  NIVEL 16 (HALLOWEEN)
                            579 ;;
                            580 ;;
                            581 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   54A4                     582 man_game_controller_lvl_16::
   54A4 3A 6E 60      [13]  583     ld a, (_level_seconds)  
   54A7 FE 02         [ 7]  584     cp #0x02                      
   54A9 28 28         [12]  585     jr z, comprobarEntidades1lvl16
   54AB FE 05         [ 7]  586     cp #0x05
   54AD 28 3B         [12]  587     jr z, comprobarEntidades2lvl16
   54AF FE 06         [ 7]  588     cp #0x06
   54B1 28 46         [12]  589     jr z, comprobarEntidades3lvl16
   54B3 FE 09         [ 7]  590     cp #0x09
   54B5 28 51         [12]  591     jr z, comprobarEntidades4lvl16
   54B7 FE 0B         [ 7]  592     cp #0x0B
   54B9 28 5C         [12]  593     jr z, comprobarEntidades5lvl16
   54BB FE 0C         [ 7]  594     cp #0x0C
   54BD 28 6F         [12]  595     jr z, comprobarEntidades6lvl16
   54BF FE 0F         [ 7]  596     cp #0x0F
   54C1 28 7A         [12]  597     jr z, comprobarEntidades7lvl16
   54C3 FE 12         [ 7]  598     cp #0x12
   54C5 CA 4C 55      [10]  599     jp z, comprobarEntidades8lvl16
   54C8 FE 16         [ 7]  600     cp #0x16
   54CA CA 5B 55      [10]  601     jp z, comprobarEntidades9lvl16
   54CD FE 19         [ 7]  602     cp #0x19
   54CF CA 6A 55      [10]  603     jp z, comprobarEntidades10lvl16
   54D2 C9            [10]  604     ret
                            605     
   54D3                     606     comprobarEntidades1lvl16:
   54D3 3A 6C 47      [13]  607     ld a, (level_obstacles)
   54D6 FE 02         [ 7]  608     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   54D8 C8            [11]  609     ret z
   54D9 3E 76         [ 7]  610         ld a, #0x76
   54DB CD 3C 46      [17]  611         call set_y_last_obstacle
   54DE CD 97 46      [17]  612         call generar1entidad
                            613         
   54E1 3E B4         [ 7]  614         ld a, #0xB4
   54E3 CD 3C 46      [17]  615         call set_y_last_obstacle
   54E6 CD 97 46      [17]  616         call generar1entidad
   54E9 C9            [10]  617         ret
                            618     
   54EA                     619     comprobarEntidades2lvl16:
   54EA 3A 6C 47      [13]  620     ld a, (level_obstacles)
   54ED FE 03         [ 7]  621     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   54EF C8            [11]  622     ret z
   54F0 3E 76         [ 7]  623         ld a, #0x76
   54F2 CD 54 46      [17]  624         call set_y_ghost
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 17.
Hexadecimal [16-Bits]



   54F5 CD BB 46      [17]  625         call  generar1entidadGhost
   54F8 C9            [10]  626         ret  
                            627     
   54F9                     628     comprobarEntidades3lvl16:
   54F9 3A 6C 47      [13]  629     ld a, (level_obstacles)
   54FC FE 04         [ 7]  630     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   54FE C8            [11]  631     ret z
   54FF 3E B4         [ 7]  632         ld a, #0xB4
   5501 CD 3C 46      [17]  633         call set_y_last_obstacle   
   5504 CD 97 46      [17]  634         call generar1entidad
   5507 C9            [10]  635         ret 
                            636 
   5508                     637     comprobarEntidades4lvl16:
   5508 3A 6C 47      [13]  638     ld a, (level_obstacles)
   550B FE 05         [ 7]  639     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   550D C8            [11]  640     ret z
   550E 3E 95         [ 7]  641         ld a, #0x95
   5510 CD 3C 46      [17]  642         call set_y_last_obstacle   
   5513 CD 97 46      [17]  643         call generar1entidad
   5516 C9            [10]  644         ret 
                            645 
   5517                     646     comprobarEntidades5lvl16:
   5517 3A 6C 47      [13]  647     ld a, (level_obstacles)
   551A FE 07         [ 7]  648     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   551C C8            [11]  649     ret z
   551D 3E 76         [ 7]  650         ld a, #0x76
   551F CD 3C 46      [17]  651         call set_y_last_obstacle
   5522 CD 97 46      [17]  652         call generar1entidad
                            653         
   5525 3E B4         [ 7]  654         ld a, #0xB4
   5527 CD 3C 46      [17]  655         call set_y_last_obstacle
   552A CD 97 46      [17]  656         call generar1entidad
   552D C9            [10]  657         ret 
                            658 
   552E                     659     comprobarEntidades6lvl16:
   552E 3A 6C 47      [13]  660     ld a, (level_obstacles)
   5531 FE 08         [ 7]  661     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   5533 C8            [11]  662     ret z
   5534 3E 76         [ 7]  663         ld a, #0x76
   5536 CD 54 46      [17]  664         call set_y_ghost
   5539 CD BB 46      [17]  665         call  generar1entidadGhost
   553C C9            [10]  666         ret
                            667     
   553D                     668     comprobarEntidades7lvl16:
   553D 3A 6C 47      [13]  669     ld a, (level_obstacles)
   5540 FE 09         [ 7]  670     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5542 C8            [11]  671     ret z
   5543 3E B4         [ 7]  672         ld a, #0xB4
   5545 CD 54 46      [17]  673         call set_y_ghost
   5548 CD BB 46      [17]  674         call  generar1entidadGhost
   554B C9            [10]  675         ret
                            676 
   554C                     677     comprobarEntidades8lvl16:
   554C 3A 6C 47      [13]  678     ld a, (level_obstacles)
   554F FE 0A         [ 7]  679     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 18.
Hexadecimal [16-Bits]



   5551 C8            [11]  680     ret z
   5552 3E 76         [ 7]  681         ld a, #0x76
   5554 CD 54 46      [17]  682         call set_y_ghost
   5557 CD BB 46      [17]  683         call  generar1entidadGhost
   555A C9            [10]  684         ret
                            685 
   555B                     686     comprobarEntidades9lvl16:
   555B 3A 6C 47      [13]  687     ld a, (level_obstacles)
   555E FE 0B         [ 7]  688     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5560 C8            [11]  689     ret z
   5561 3E 76         [ 7]  690         ld a, #0x76
   5563 CD 54 46      [17]  691         call set_y_ghost
   5566 CD BB 46      [17]  692         call  generar1entidadGhost
   5569 C9            [10]  693         ret
                            694 
   556A                     695     comprobarEntidades10lvl16:
   556A 3A 6C 47      [13]  696     ld a, (level_obstacles)
   556D FE 0C         [ 7]  697     cp #0x0C                ;; Si ya tengo 12 entidades no compruebo ninguna mas
   556F C8            [11]  698     ret z
   5570 3E B4         [ 7]  699         ld a, #0xB4
   5572 CD 54 46      [17]  700         call set_y_ghost
   5575 CD BB 46      [17]  701         call  generar1entidadGhost
   5578 C9            [10]  702         ret
                            703 
                            704 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            705 ;;
                            706 ;;
                            707 ;;  NIVEL 17 (HALLOWEEN)
                            708 ;;
                            709 ;;
                            710 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   5579                     711 man_game_controller_lvl_17::
   5579 3A 6E 60      [13]  712     ld a, (_level_seconds)  
   557C FE 02         [ 7]  713     cp #0x02                      
   557E 28 1F         [12]  714     jr z, comprobarEntidades1lvl17
   5580 FE 05         [ 7]  715     cp #0x05
   5582 28 32         [12]  716     jr z, comprobarEntidades2lvl17
   5584 FE 07         [ 7]  717     cp #0x07
   5586 28 3D         [12]  718     jr z, comprobarEntidades3lvl17
   5588 FE 0C         [ 7]  719     cp #0x0C
   558A 28 48         [12]  720     jr z, comprobarEntidades4lvl17
   558C FE 0F         [ 7]  721     cp #0x0F
   558E 28 5B         [12]  722     jr z, comprobarEntidades5lvl17
   5590 FE 11         [ 7]  723     cp #0x11
   5592 28 66         [12]  724     jr z, comprobarEntidades6lvl17
   5594 FE 16         [ 7]  725     cp #0x16
   5596 CA 09 56      [10]  726     jp z, comprobarEntidades7lvl17
   5599 FE 19         [ 7]  727     cp #0x19
   559B CA 20 56      [10]  728     jp z, comprobarEntidades8lvl17
   559E C9            [10]  729     ret
                            730     
   559F                     731     comprobarEntidades1lvl17:
   559F 3A 6C 47      [13]  732     ld a, (level_obstacles)
   55A2 FE 02         [ 7]  733     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   55A4 C8            [11]  734     ret z
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 19.
Hexadecimal [16-Bits]



   55A5 3E 76         [ 7]  735         ld a, #0x76
   55A7 CD 3C 46      [17]  736         call set_y_last_obstacle
   55AA CD 97 46      [17]  737         call generar1entidad
                            738         
   55AD 3E B4         [ 7]  739         ld a, #0xB4
   55AF CD 3C 46      [17]  740         call set_y_last_obstacle
   55B2 CD 97 46      [17]  741         call generar1entidad
   55B5 C9            [10]  742         ret
                            743     
   55B6                     744     comprobarEntidades2lvl17:
   55B6 3A 6C 47      [13]  745     ld a, (level_obstacles)
   55B9 FE 03         [ 7]  746     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   55BB C8            [11]  747     ret z
   55BC 3E B4         [ 7]  748         ld a, #0xB4
   55BE CD 54 46      [17]  749         call set_y_ghost
   55C1 CD BB 46      [17]  750         call  generar1entidadGhost
   55C4 C9            [10]  751         ret
                            752     
   55C5                     753     comprobarEntidades3lvl17:
   55C5 3A 6C 47      [13]  754     ld a, (level_obstacles)
   55C8 FE 04         [ 7]  755     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   55CA C8            [11]  756     ret z
   55CB 3E 76         [ 7]  757         ld a, #0x76
   55CD CD 3C 46      [17]  758         call set_y_last_obstacle
   55D0 CD 97 46      [17]  759         call generar1entidad
   55D3 C9            [10]  760         ret
                            761 
   55D4                     762     comprobarEntidades4lvl17:
   55D4 3A 6C 47      [13]  763     ld a, (level_obstacles)
   55D7 FE 06         [ 7]  764     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   55D9 C8            [11]  765     ret z
   55DA 3E 76         [ 7]  766         ld a, #0x76
   55DC CD 3C 46      [17]  767         call set_y_last_obstacle
   55DF CD 97 46      [17]  768         call generar1entidad
                            769         
   55E2 3E B4         [ 7]  770         ld a, #0xB4
   55E4 CD 3C 46      [17]  771         call set_y_last_obstacle
   55E7 CD 97 46      [17]  772         call generar1entidad
   55EA C9            [10]  773         ret
                            774 
   55EB                     775     comprobarEntidades5lvl17:
   55EB 3A 6C 47      [13]  776     ld a, (level_obstacles)
   55EE FE 07         [ 7]  777     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   55F0 C8            [11]  778     ret z
   55F1 3E B4         [ 7]  779         ld a, #0xB4
   55F3 CD 54 46      [17]  780         call set_y_ghost
   55F6 CD BB 46      [17]  781         call  generar1entidadGhost
   55F9 C9            [10]  782         ret
                            783     
   55FA                     784     comprobarEntidades6lvl17:
   55FA 3A 6C 47      [13]  785     ld a, (level_obstacles)
   55FD FE 08         [ 7]  786     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   55FF C8            [11]  787     ret z
   5600 3E 76         [ 7]  788         ld a, #0x76
   5602 CD 3C 46      [17]  789         call set_y_last_obstacle
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 20.
Hexadecimal [16-Bits]



   5605 CD 97 46      [17]  790         call generar1entidad
   5608 C9            [10]  791         ret
                            792 
   5609                     793     comprobarEntidades7lvl17:
   5609 3A 6C 47      [13]  794     ld a, (level_obstacles)
   560C FE 0A         [ 7]  795     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   560E C8            [11]  796     ret z
   560F 3E 76         [ 7]  797         ld a, #0x76
   5611 CD 3C 46      [17]  798         call set_y_last_obstacle
   5614 CD 97 46      [17]  799         call generar1entidad
                            800         
   5617 3E B4         [ 7]  801         ld a, #0xB4
   5619 CD 3C 46      [17]  802         call set_y_last_obstacle
   561C CD 97 46      [17]  803         call generar1entidad
   561F C9            [10]  804         ret
                            805 
   5620                     806     comprobarEntidades8lvl17:
   5620 3A 6C 47      [13]  807     ld a, (level_obstacles)
   5623 FE 0B         [ 7]  808     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   5625 C8            [11]  809     ret z
   5626 3E B4         [ 7]  810         ld a, #0xB4
   5628 CD 54 46      [17]  811         call set_y_ghost
   562B CD BB 46      [17]  812         call  generar1entidadGhost
   562E C9            [10]  813         ret
                            814 
                            815 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            816 ;;
                            817 ;;
                            818 ;;  NIVEL 18 (HALLOWEEN)
                            819 ;;
                            820 ;;
                            821 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   562F                     822 man_game_controller_lvl_18::
   562F 3A 6E 60      [13]  823     ld a, (_level_seconds)  
   5632 FE 02         [ 7]  824     cp #0x02                      
   5634 28 22         [12]  825     jr z, comprobarEntidades1lvl18
   5636 FE 06         [ 7]  826     cp #0x06
   5638 28 35         [12]  827     jr z, comprobarEntidades2lvl18
   563A FE 08         [ 7]  828     cp #0x08
   563C 28 40         [12]  829     jr z, comprobarEntidades3lvl18
   563E FE 0A         [ 7]  830     cp #0x0A
   5640 28 4B         [12]  831     jr z, comprobarEntidades4lvl18
   5642 FE 10         [ 7]  832     cp #0x10
   5644 28 56         [12]  833     jr z, comprobarEntidades5lvl18
   5646 FE 12         [ 7]  834     cp #0x12
   5648 28 69         [12]  835     jr z, comprobarEntidades6lvl18
   564A FE 14         [ 7]  836     cp #0x14
   564C 28 74         [12]  837     jr z, comprobarEntidades7lvl18
   564E FE 16         [ 7]  838     cp #0x16
   5650 28 7F         [12]  839     jr z, comprobarEntidades8lvl18
   5652 FE 19         [ 7]  840     cp #0x19
   5654 CA E0 56      [10]  841     jp z, comprobarEntidades9lvl18
   5657 C9            [10]  842     ret
                            843     
   5658                     844     comprobarEntidades1lvl18:
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 21.
Hexadecimal [16-Bits]



   5658 3A 6C 47      [13]  845     ld a, (level_obstacles)
   565B FE 02         [ 7]  846     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   565D C8            [11]  847     ret z
   565E 3E 76         [ 7]  848         ld a, #0x76
   5660 CD 3C 46      [17]  849         call set_y_last_obstacle
   5663 CD 97 46      [17]  850         call generar1entidad
   5666 3E B4         [ 7]  851         ld a, #0xB4
   5668 CD 3C 46      [17]  852         call set_y_last_obstacle
   566B CD 97 46      [17]  853         call generar1entidad
   566E C9            [10]  854         ret
                            855 
   566F                     856     comprobarEntidades2lvl18:
   566F 3A 6C 47      [13]  857     ld a, (level_obstacles)
   5672 FE 03         [ 7]  858     cp #0x03                ;; Si ya tengo 3 entidades no compruebo ninguna mas
   5674 C8            [11]  859     ret z
   5675 3E 76         [ 7]  860         ld a, #0x76
   5677 CD 54 46      [17]  861         call set_y_ghost
   567A CD BB 46      [17]  862         call  generar1entidadGhost
   567D C9            [10]  863         ret
                            864 
   567E                     865     comprobarEntidades3lvl18:
   567E 3A 6C 47      [13]  866     ld a, (level_obstacles)
   5681 FE 04         [ 7]  867     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5683 C8            [11]  868     ret z
   5684 3E B4         [ 7]  869         ld a, #0xB4
   5686 CD 54 46      [17]  870         call set_y_ghost
   5689 CD BB 46      [17]  871         call  generar1entidadGhost
   568C C9            [10]  872         ret
                            873 
   568D                     874     comprobarEntidades4lvl18:
   568D 3A 6C 47      [13]  875     ld a, (level_obstacles)
   5690 FE 05         [ 7]  876     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5692 C8            [11]  877     ret z
   5693 3E 76         [ 7]  878         ld a, #0x76
   5695 CD 54 46      [17]  879         call set_y_ghost
   5698 CD BB 46      [17]  880         call  generar1entidadGhost
   569B C9            [10]  881         ret 
                            882 
   569C                     883     comprobarEntidades5lvl18:
   569C 3A 6C 47      [13]  884     ld a, (level_obstacles)
   569F FE 07         [ 7]  885     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   56A1 C8            [11]  886     ret z
   56A2 3E 76         [ 7]  887         ld a, #0x76
   56A4 CD 3C 46      [17]  888         call set_y_last_obstacle
   56A7 CD 97 46      [17]  889         call generar1entidad
   56AA 3E B4         [ 7]  890         ld a, #0xB4
   56AC CD 3C 46      [17]  891         call set_y_last_obstacle
   56AF CD 97 46      [17]  892         call generar1entidad
   56B2 C9            [10]  893         ret
                            894 
   56B3                     895     comprobarEntidades6lvl18:
   56B3 3A 6C 47      [13]  896     ld a, (level_obstacles)
   56B6 FE 08         [ 7]  897     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   56B8 C8            [11]  898     ret z
   56B9 3E 76         [ 7]  899         ld a, #0x76
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 22.
Hexadecimal [16-Bits]



   56BB CD 54 46      [17]  900         call set_y_ghost
   56BE CD BB 46      [17]  901         call  generar1entidadGhost
   56C1 C9            [10]  902         ret
                            903 
   56C2                     904     comprobarEntidades7lvl18:
   56C2 3A 6C 47      [13]  905     ld a, (level_obstacles)
   56C5 FE 09         [ 7]  906     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   56C7 C8            [11]  907     ret z
   56C8 3E B4         [ 7]  908         ld a, #0xB4
   56CA CD 54 46      [17]  909         call set_y_ghost
   56CD CD BB 46      [17]  910         call  generar1entidadGhost
   56D0 C9            [10]  911         ret
                            912 
   56D1                     913     comprobarEntidades8lvl18:
   56D1 3A 6C 47      [13]  914     ld a, (level_obstacles)
   56D4 FE 0A         [ 7]  915     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   56D6 C8            [11]  916     ret z
   56D7 3E 76         [ 7]  917         ld a, #0x76
   56D9 CD 54 46      [17]  918         call set_y_ghost
   56DC CD BB 46      [17]  919         call  generar1entidadGhost
   56DF C9            [10]  920         ret
                            921 
   56E0                     922     comprobarEntidades9lvl18:
   56E0 3A 6C 47      [13]  923     ld a, (level_obstacles)
   56E3 FE 0B         [ 7]  924     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   56E5 C8            [11]  925     ret z
   56E6 3E B4         [ 7]  926         ld a, #0xB4
   56E8 CD 3C 46      [17]  927         call set_y_last_obstacle
   56EB CD 97 46      [17]  928         call generar1entidad
   56EE C9            [10]  929         ret
                            930 
                            931 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                            932 ;;
                            933 ;;
                            934 ;;  NIVEL 19 (HALLOWEEN)
                            935 ;;
                            936 ;;
                            937 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   56EF                     938 man_game_controller_lvl_19::
   56EF 3A 6E 60      [13]  939     ld a, (_level_seconds)  
   56F2 FE 02         [ 7]  940     cp #0x02                      
   56F4 28 1F         [12]  941     jr z, comprobarEntidades1lvl19
   56F6 FE 06         [ 7]  942     cp #0x06
   56F8 28 32         [12]  943     jr z, comprobarEntidades2lvl19
   56FA FE 0A         [ 7]  944     cp #0x0A
   56FC 28 45         [12]  945     jr z, comprobarEntidades3lvl19
   56FE FE 0B         [ 7]  946     cp #0x0B
   5700 28 50         [12]  947     jr z, comprobarEntidades4lvl19
   5702 FE 0C         [ 7]  948     cp #0x0C
   5704 28 5B         [12]  949     jr z, comprobarEntidades5lvl19
   5706 FE 0F         [ 7]  950     cp #0x0F
   5708 28 66         [12]  951     jr z, comprobarEntidades6lvl19
   570A FE 14         [ 7]  952     cp #0x14
   570C CA 87 57      [10]  953     jp z, comprobarEntidades7lvl19
   570F FE 18         [ 7]  954     cp #0x18
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 23.
Hexadecimal [16-Bits]



   5711 CA 9E 57      [10]  955     jp z, comprobarEntidades8lvl19
   5714 C9            [10]  956     ret
                            957     
   5715                     958     comprobarEntidades1lvl19:
   5715 3A 6C 47      [13]  959     ld a, (level_obstacles)
   5718 FE 02         [ 7]  960     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   571A C8            [11]  961     ret z
   571B 3E 76         [ 7]  962         ld a, #0x76
   571D CD 54 46      [17]  963         call set_y_ghost
   5720 CD BB 46      [17]  964         call generar1entidadGhost
                            965         
   5723 3E B4         [ 7]  966         ld a, #0xB4
   5725 CD 54 46      [17]  967         call set_y_ghost
   5728 CD BB 46      [17]  968         call generar1entidadGhost
   572B C9            [10]  969         ret
                            970     
   572C                     971     comprobarEntidades2lvl19:
   572C 3A 6C 47      [13]  972     ld a, (level_obstacles)
   572F FE 04         [ 7]  973     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   5731 C8            [11]  974     ret z
   5732 3E 76         [ 7]  975         ld a, #0x76
   5734 CD 3C 46      [17]  976         call set_y_last_obstacle
   5737 CD 97 46      [17]  977         call generar1entidad
                            978         
   573A 3E B4         [ 7]  979         ld a, #0xB4
   573C CD 3C 46      [17]  980         call set_y_last_obstacle
   573F CD 97 46      [17]  981         call generar1entidad
   5742 C9            [10]  982         ret
                            983     
   5743                     984     comprobarEntidades3lvl19:
   5743 3A 6C 47      [13]  985     ld a, (level_obstacles)
   5746 FE 05         [ 7]  986     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5748 C8            [11]  987     ret z
   5749 3E 76         [ 7]  988         ld a, #0x76
   574B CD 3C 46      [17]  989         call set_y_last_obstacle
   574E CD 97 46      [17]  990         call generar1entidad
   5751 C9            [10]  991         ret
                            992     
   5752                     993     comprobarEntidades4lvl19:
   5752 3A 6C 47      [13]  994     ld a, (level_obstacles)
   5755 FE 06         [ 7]  995     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5757 C8            [11]  996     ret z
   5758 3E 95         [ 7]  997         ld a, #0x95
   575A CD 3C 46      [17]  998         call set_y_last_obstacle
   575D CD 97 46      [17]  999         call generar1entidad
   5760 C9            [10] 1000         ret
                           1001     
   5761                    1002     comprobarEntidades5lvl19:
   5761 3A 6C 47      [13] 1003     ld a, (level_obstacles)
   5764 FE 07         [ 7] 1004     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5766 C8            [11] 1005     ret z
   5767 3E B4         [ 7] 1006         ld a, #0xB4
   5769 CD 3C 46      [17] 1007         call set_y_last_obstacle
   576C CD 97 46      [17] 1008         call generar1entidad
   576F C9            [10] 1009         ret
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 24.
Hexadecimal [16-Bits]



                           1010 
   5770                    1011     comprobarEntidades6lvl19:
   5770 3A 6C 47      [13] 1012     ld a, (level_obstacles)
   5773 FE 09         [ 7] 1013     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   5775 C8            [11] 1014     ret z
   5776 3E 86         [ 7] 1015         ld a, #0x86
   5778 CD 3C 46      [17] 1016         call set_y_last_obstacle
   577B CD 97 46      [17] 1017         call generar1entidad
                           1018         
   577E 3E A5         [ 7] 1019         ld a, #0xA5
   5780 CD 3C 46      [17] 1020         call set_y_last_obstacle
   5783 CD 97 46      [17] 1021         call generar1entidad
   5786 C9            [10] 1022         ret
                           1023 
   5787                    1024     comprobarEntidades7lvl19:
   5787 3A 6C 47      [13] 1025     ld a, (level_obstacles)
   578A FE 0B         [ 7] 1026     cp #0x0B                ;; Si ya tengo 11 entidades no compruebo ninguna mas
   578C C8            [11] 1027     ret z
   578D 3E 76         [ 7] 1028         ld a, #0x76
   578F CD 54 46      [17] 1029         call set_y_ghost
   5792 CD BB 46      [17] 1030         call generar1entidadGhost
                           1031         
   5795 3E B4         [ 7] 1032         ld a, #0xB4
   5797 CD 54 46      [17] 1033         call set_y_ghost
   579A CD BB 46      [17] 1034         call generar1entidadGhost
   579D C9            [10] 1035         ret
                           1036 
   579E                    1037     comprobarEntidades8lvl19:
   579E 3A 6C 47      [13] 1038     ld a, (level_obstacles)
   57A1 FE 0D         [ 7] 1039     cp #0x0D                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   57A3 C8            [11] 1040     ret z
   57A4 3E 76         [ 7] 1041         ld a, #0x76
   57A6 CD 3C 46      [17] 1042         call set_y_last_obstacle
   57A9 CD 97 46      [17] 1043         call generar1entidad
                           1044         
   57AC 3E B4         [ 7] 1045         ld a, #0xB4
   57AE CD 3C 46      [17] 1046         call set_y_last_obstacle
   57B1 CD 97 46      [17] 1047         call generar1entidad
   57B4 C9            [10] 1048         ret 
                           1049    
                           1050 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                           1051 ;;
                           1052 ;;
                           1053 ;;  NIVEL 20 (HALLOWEEN)
                           1054 ;;
                           1055 ;;
                           1056 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   57B5                    1057 man_game_controller_lvl_20::
   57B5 3A 6E 60      [13] 1058     ld a, (_level_seconds)  
   57B8 FE 02         [ 7] 1059     cp #0x02                      
   57BA 28 23         [12] 1060     jr z, comprobarEntidades1lvl20
   57BC FE 06         [ 7] 1061     cp #0x06
   57BE 28 36         [12] 1062     jr z, comprobarEntidades2lvl20
   57C0 FE 0A         [ 7] 1063     cp #0x0A
   57C2 28 49         [12] 1064     jr z, comprobarEntidades3lvl20
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 25.
Hexadecimal [16-Bits]



   57C4 FE 0B         [ 7] 1065     cp #0x0B
   57C6 28 54         [12] 1066     jr z, comprobarEntidades4lvl20    
   57C8 FE 0E         [ 7] 1067     cp #0x0E
   57CA 28 5F         [12] 1068     jr z, comprobarEntidades5lvl20
   57CC FE 0F         [ 7] 1069     cp #0x0F
   57CE 28 6A         [12] 1070     jr z, comprobarEntidades6lvl20
   57D0 FE 13         [ 7] 1071     cp #0x13
   57D2 28 75         [12] 1072     jr z, comprobarEntidades7lvl20
   57D4 FE 14         [ 7] 1073     cp #0x14
   57D6 CA 58 58      [10] 1074     jp z, comprobarEntidades8lvl20
   57D9 FE 18         [ 7] 1075     cp #0x18
   57DB CA 67 58      [10] 1076     jp z, comprobarEntidades9lvl20
   57DE C9            [10] 1077     ret
                           1078     
   57DF                    1079     comprobarEntidades1lvl20:
   57DF 3A 6C 47      [13] 1080     ld a, (level_obstacles)
   57E2 FE 02         [ 7] 1081     cp #0x02                ;; Si ya tengo 2 entidades no compruebo ninguna mas
   57E4 C8            [11] 1082     ret z
   57E5 3E 76         [ 7] 1083         ld a, #0x76
   57E7 CD 54 46      [17] 1084         call set_y_ghost
   57EA CD BB 46      [17] 1085         call generar1entidadGhost
                           1086         
   57ED 3E B4         [ 7] 1087         ld a, #0xB4
   57EF CD 54 46      [17] 1088         call set_y_ghost
   57F2 CD BB 46      [17] 1089         call generar1entidadGhost
   57F5 C9            [10] 1090         ret
                           1091 
   57F6                    1092     comprobarEntidades2lvl20:
   57F6 3A 6C 47      [13] 1093     ld a, (level_obstacles)
   57F9 FE 04         [ 7] 1094     cp #0x04                ;; Si ya tengo 4 entidades no compruebo ninguna mas
   57FB C8            [11] 1095     ret z
   57FC 3E 76         [ 7] 1096         ld a, #0x76
   57FE CD 54 46      [17] 1097         call set_y_ghost
   5801 CD BB 46      [17] 1098         call generar1entidadGhost
                           1099         
   5804 3E B4         [ 7] 1100         ld a, #0xB4
   5806 CD 54 46      [17] 1101         call set_y_ghost
   5809 CD BB 46      [17] 1102         call generar1entidadGhost
   580C C9            [10] 1103         ret
                           1104 
   580D                    1105     comprobarEntidades3lvl20:
   580D 3A 6C 47      [13] 1106     ld a, (level_obstacles)
   5810 FE 05         [ 7] 1107     cp #0x05                ;; Si ya tengo 5 entidades no compruebo ninguna mas
   5812 C8            [11] 1108     ret z
   5813 3E 76         [ 7] 1109         ld a, #0x76
   5815 CD 54 46      [17] 1110         call set_y_ghost
   5818 CD BB 46      [17] 1111         call generar1entidadGhost
   581B C9            [10] 1112         ret
                           1113 
   581C                    1114     comprobarEntidades4lvl20:
   581C 3A 6C 47      [13] 1115     ld a, (level_obstacles)
   581F FE 06         [ 7] 1116     cp #0x06                ;; Si ya tengo 6 entidades no compruebo ninguna mas
   5821 C8            [11] 1117     ret z       
   5822 3E 76         [ 7] 1118         ld a, #0x76
   5824 CD 54 46      [17] 1119         call set_y_ghost
ASxxxx Assembler V02.00 + NoICE + SDCC mods  (Zilog Z80 / Hitachi HD64180), page 26.
Hexadecimal [16-Bits]



   5827 CD BB 46      [17] 1120         call generar1entidadGhost
   582A C9            [10] 1121         ret
                           1122 
   582B                    1123     comprobarEntidades5lvl20:
   582B 3A 6C 47      [13] 1124     ld a, (level_obstacles)
   582E FE 07         [ 7] 1125     cp #0x07                ;; Si ya tengo 7 entidades no compruebo ninguna mas
   5830 C8            [11] 1126     ret z
   5831 3E 76         [ 7] 1127         ld a, #0x76
   5833 CD 54 46      [17] 1128         call set_y_ghost
   5836 CD BB 46      [17] 1129         call generar1entidadGhost
   5839 C9            [10] 1130         ret
                           1131 
   583A                    1132     comprobarEntidades6lvl20:
   583A 3A 6C 47      [13] 1133     ld a, (level_obstacles)
   583D FE 08         [ 7] 1134     cp #0x08                ;; Si ya tengo 8 entidades no compruebo ninguna mas
   583F C8            [11] 1135     ret z       
   5840 3E B4         [ 7] 1136         ld a, #0xB4
   5842 CD 54 46      [17] 1137         call set_y_ghost
   5845 CD BB 46      [17] 1138         call generar1entidadGhost
   5848 C9            [10] 1139         ret
                           1140     
   5849                    1141     comprobarEntidades7lvl20:
   5849 3A 6C 47      [13] 1142     ld a, (level_obstacles)
   584C FE 09         [ 7] 1143     cp #0x09                ;; Si ya tengo 9 entidades no compruebo ninguna mas
   584E C8            [11] 1144     ret z
   584F 3E B4         [ 7] 1145         ld a, #0xB4
   5851 CD 54 46      [17] 1146         call set_y_ghost
   5854 CD BB 46      [17] 1147         call generar1entidadGhost
   5857 C9            [10] 1148         ret
                           1149 
   5858                    1150     comprobarEntidades8lvl20:
   5858 3A 6C 47      [13] 1151     ld a, (level_obstacles)
   585B FE 0A         [ 7] 1152     cp #0x0A                ;; Si ya tengo 10 entidades no compruebo ninguna mas
   585D C8            [11] 1153     ret z       
   585E 3E B4         [ 7] 1154         ld a, #0xB4
   5860 CD 54 46      [17] 1155         call set_y_ghost
   5863 CD BB 46      [17] 1156         call generar1entidadGhost
   5866 C9            [10] 1157         ret
                           1158     
   5867                    1159     comprobarEntidades9lvl20:
   5867 3A 6C 47      [13] 1160     ld a, (level_obstacles)
   586A FE 0C         [ 7] 1161     cp #0x0C                ;; Si ya tengo 14 entidades no compruebo ninguna mas
   586C C8            [11] 1162     ret z
   586D 3E A4         [ 7] 1163         ld a, #0xA4
   586F CD 3C 46      [17] 1164         call set_y_last_obstacle
   5872 CD 97 46      [17] 1165         call generar1entidad
   5875 3E B4         [ 7] 1166         ld a, #0xB4
   5877 CD 3C 46      [17] 1167         call set_y_last_obstacle
   587A CD 97 46      [17] 1168         call generar1entidad
   587D C9            [10] 1169         ret
