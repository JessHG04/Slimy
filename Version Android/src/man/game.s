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
.include "cpctelera.h.s"
.include "cpctelera_functions.h.s"
.include "sys/render.h.s"
.include "timer.h.s"
.include "hero.h.s"
.include "obstacles.h.s"
.include "interrup.h.s"
.include "man/menu.h.s"
.include "man/game.h.s"
.include "man/gameover.h.s"
.include "man/win.h.s"
.globl _song_demo
level:: .db 1
level_obstacles:: .db 0

man_game_init::;;Empieza el juego    
    call set_int_handler          ;; Coloca la funcion que controla las interrupciones en el registro HL     
    ld de, #_song_demo
    call cpct_akp_musicInit_asm
    ld a, #0
    ld (_juego_pausado), a  

ret

man_game_init_lvl:: ;;Comprueba en que nivel estamos lo inicializa y despausa el contador
    ;;Resetea el numero de obstaculos creados en el nivel
    ld a, (level)
    cp #1
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #2
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #3
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #4
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #5
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #6
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #7
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #8
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #9
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #10
        call z, man_game_init_lvl_123
    ld a, (level)
    cp #11
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #12
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #13
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #14
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #15
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #16
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #17
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #18
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #19
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #20
        call z, man_game_init_lvl_456
    ld a, (level)
    cp #21
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #22
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #23
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #24
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #25
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #26
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #27
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #28
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #29
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #30
        call z, man_game_init_lvl_789
    ld a, (level)
    cp #31

        call z, man_win_run
    ;;Despausa el nivel
    ld a, #1
    ld (_juego_pausado), a
ret


;; La llamo en el chequeo de colisiones
man_game_restart::
    call hero_restart
    ld a,#0
    ld (level_obstacles), a
    ld (num_obstacles_marcados),a
    ld (_juego_pausado), a  
    
 
    
ret

man_game_reset_level::
    ld a, #0
    ld (_juego_pausado), a ;;Pausa el timer si hay colision
    call man_game_restart;;Reinicia el heroe y limpia obstaculos
    call man_gameover_run;;Invoca la pantalla gameover
    ret

man_game_check_level::;;Comprueba en que nivel estamos y controla la creacion de entidades
    ;;Key N control PASAR AL SIGUIENTE NIVEL
    ;;call    cpct_scanKeyboard_asm
    ;;ld      hl, #Key_N
    ;;call    cpct_isKeyPressed_asm
    ;;call      nz, timer_clear

    ;;Key R control RESETEA EL NIVEL
    ;;call    cpct_scanKeyboard_asm
    ;;ld      hl, #Key_R
    ;;call    cpct_isKeyPressed_asm
    ;;call      nz, man_game_reset_level



    ld a, (level)
    cp #1
        call z, man_game_controller_lvl_1
    ld a, (level)
    cp #2
        call z, man_game_controller_lvl_2
    ld a, (level)
    cp #3
        call z, man_game_controller_lvl_3
    ld a, (level)
    cp #4
        call z, man_game_controller_lvl_4
    ld a, (level)
    cp #5
        call z, man_game_controller_lvl_5
    ld a, (level)
    cp #6
        call z, man_game_controller_lvl_6
    ld a, (level)
    cp #7
        call z, man_game_controller_lvl_7
    ld a, (level)
    cp #8
        call z, man_game_controller_lvl_8
    ld a, (level)
    cp #9
        call z, man_game_controller_lvl_9
    ld a, (level)
    cp #10
        call z, man_game_controller_lvl_10
    ld a, (level)
    cp #11
        call z, man_game_controller_lvl_11
    ld a, (level)
    cp #12
        call z, man_game_controller_lvl_12
    ld a, (level)
    cp #13
        call z, man_game_controller_lvl_13
    ld a, (level)
    cp #14
        call z, man_game_controller_lvl_14
    ld a, (level)
    cp #15
        call z, man_game_controller_lvl_15
    ld a, (level)
    cp #16
        call z, man_game_controller_lvl_16
    ld a, (level)
    cp #17
        call z, man_game_controller_lvl_17
    ld a, (level)
    cp #18
        call z, man_game_controller_lvl_18
    ld a, (level)
    cp #19
        call z, man_game_controller_lvl_19
    ld a, (level)
    cp #20
        call z, man_game_controller_lvl_20
    ld a, (level)
    cp #21
        call z, man_game_controller_lvl_21
    ld a, (level)
    cp #22
        call z, man_game_controller_lvl_22
    ld a, (level)
    cp #23
        call z, man_game_controller_lvl_23
    ld a, (level)
    cp #24
        call z, man_game_controller_lvl_24
    ld a, (level)
    cp #25
        call z, man_game_controller_lvl_25
    ld a, (level)
    cp #26
        call z, man_game_controller_lvl_26
    ld a, (level)
    cp #27
        call z, man_game_controller_lvl_27
    ld a, (level)
    cp #28
        call z, man_game_controller_lvl_28
    ld a, (level)
    cp #29
        call z, man_game_controller_lvl_29
    ld a, (level)
    cp #30
        call z, man_game_controller_lvl_30
ret

;;GAMES INITS

man_game_init_lvl_123::
    call sys_render_update_bginit123
    ld a, (level)
    cp #1
        call z, sys_render_draw_stlvl1
    ld a, (level)
    cp #2
        call z, sys_render_draw_stlvl2
    ld a, (level)
    cp #3
        call z, sys_render_draw_stlvl3
    ld a, (level)
    cp #4
        call z, sys_render_draw_stlvl4
    ld a, (level)
    cp #5
        call z, sys_render_draw_stlvl5
    ld a, (level)
    cp #6
        call z, sys_render_draw_stlvl6
    ld a, (level)
    cp #7
        call z, sys_render_draw_stlvl7
    ld a, (level)
    cp #8
        call z, sys_render_draw_stlvl8
    ld a, (level)
    cp #9
        call z, sys_render_draw_stlvl9
    ld a, (level)
    cp #10
        call z, sys_render_draw_stlvl10
ret

man_game_init_lvl_456::
    call sys_render_update_bginit456
    ld a, (level)
    cp #11
        call z, sys_render_draw_stlvl11
    ld a, (level)
    cp #12
        call z, sys_render_draw_stlvl12
    ld a, (level)
    cp #13
        call z, sys_render_draw_stlvl13
    ld a, (level)
    cp #14
        call z, sys_render_draw_stlvl14
    ld a, (level)
    cp #15
        call z, sys_render_draw_stlvl15
    ld a, (level)
    cp #16
        call z, sys_render_draw_stlvl16
    ld a, (level)
    cp #17
        call z, sys_render_draw_stlvl17
    ld a, (level)
    cp #18
        call z, sys_render_draw_stlvl18
    ld a, (level)
    cp #19
        call z, sys_render_draw_stlvl19
    ld a, (level)
    cp #20
        call z, sys_render_draw_stlvl20
ret

man_game_init_lvl_789::
    call sys_render_update_bginit789
    ld a, (level)
    cp #21
        call z, sys_render_draw_stlvl21
    ld a, (level)
    cp #22
        call z, sys_render_draw_stlvl22
    ld a, (level)
    cp #23
        call z, sys_render_draw_stlvl23
    ld a, (level)
    cp #24
        call z, sys_render_draw_stlvl24
    ld a, (level)
    cp #25
        call z, sys_render_draw_stlvl25
    ld a, (level)
    cp #26
        call z, sys_render_draw_stlvl26
    ld a, (level)
    cp #27
        call z, sys_render_draw_stlvl27
    ld a, (level)
    cp #28
        call z, sys_render_draw_stlvl28
    ld a, (level)
    cp #29
        call z, sys_render_draw_stlvl29
    ld a, (level)
    cp #30
        call z, sys_render_draw_stlvl30
ret