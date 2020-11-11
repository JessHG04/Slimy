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
.include "hero.h.s"
.include "obstacles.h.s"
.include "sprites/background_z.h.s"
.include "sprites/background_hallow_z.h.s"
.include "sprites/background_prince_z.h.s"
.include "sprites/menu_z.h.s"
.include "sprites/win_z.h.s"
.globl level
.globl animation_seconds

str_lvl1: .asciz "Level 1"
str_lvl2: .asciz "Level 2"
str_lvl3: .asciz "Level 3"
str_lvl4: .asciz "Level 4"
str_lvl5: .asciz "Level 5"
str_lvl6: .asciz "Level 6"
str_lvl7: .asciz "Level 7"
str_lvl8: .asciz "Level 8"
str_lvl9: .asciz "Level 9"
str_lvl10: .asciz "Level 10"
str_lvl11: .asciz "Level 11"
str_lvl12: .asciz "Level 12"
str_lvl13: .asciz "Level 13"
str_lvl14: .asciz "Level 14"
str_lvl15: .asciz "Level 15"
str_lvl16: .asciz "Level 16"
str_lvl17: .asciz "Level 17"
str_lvl18: .asciz "Level 18"
str_lvl19: .asciz "Level 19"
str_lvl20: .asciz "Level 20"
str_lvl21: .asciz "Level 21"
str_lvl22: .asciz "Level 22"
str_lvl23: .asciz "Level 23"
str_lvl24: .asciz "Level 24"
str_lvl25: .asciz "Level 25"
str_lvl26: .asciz "Level 26"
str_lvl27: .asciz "Level 27"
str_lvl28: .asciz "Level 28"
str_lvl29: .asciz "Level 29"
str_lvl30: .asciz "Level 30"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  INICIALIZAMOS EL RENDER, PONEMOS EL MODO DE VIDEO A 0
;;  INICIALIZAMOS LA PALETA
;;
;;  DESTROYED REGISTER VALUES -> AF, BC, HL, DE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_init::
    ld      c, #0x00
    call   cpct_setVideoMode_asm        
    ld     hl, #_hero_pal
    ld     de, #16
    call   cpct_setPalette_asm          
    ld	hl, #0x1410
    call cpct_setPALColour_asm          

    ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;      Pinta al heroe
;;      DESTROYED REGISTER VALUES AF, BC, DE, HL, IX
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;------------76--------------      PRIMER CUADRANTE
;;------------81--------------      SEGUNDO CUADRANTE
;;------------8C--------------      SEGUNDO CUADRANTE
;;------------95--------------      TERCER CUADRANTE
;;------------A2--------------      TERCER CUADRANTE
;;------------AB--------------      CUARTO CUADRANTE
;;------------B4--------------      CUARTO CUADRANTE

sys_render_update_hero::
    call hero_getIXPtr
    ld      hl, #_hero_sp_00
    ld       a, h_y(ix)
    sub     #0xA2
    jr      c, tres           ;;Si hay carry, esta por encima
    jr      nc, dibujar        ;;Si no, esta en el cuarto cuadrante
tres:
    ld      hl, #_hero_sp_02
    ld       a, h_y(ix)
    sub     #0x8C
    jr      c, dos          ;;Si hay carry, esta por encima
    jr      nc, dibujar      ;;Si no hay carry, esta en el tercer cuadrante y pintamos
dos:
    ld      hl, #_hero_sp_03
    ld       a, h_y(ix)
    cp     #0x76
    jr      z, uno          ;;Si es 76, esta arriba
    jr      nc, dibujar      ;;Si no hay carry, esta en el segundo cuadrante y pintamos
uno:
    ld      hl, #_hero_sp_04
    jr      dibujar
dibujar:
    call sys_render_draw
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  BORRAMOS AL HEROE
;;  DESTROYED REGISTER VALUES -> IX, HL, DE, BC, AF
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_clear_hero::
    call hero_getIXPtr
    ld      hl, #_hero_sp_08
    call sys_render_draw
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  PINTAMOS LOS ENEMIGOS CORRESPONDIENTES DEPENDIENDO DEL NIVEL, SI TIENEN ANIMACION TAMBIEN LO CONTROLAMOS
;;  DESTROYED REGISTER VALUES -> HL, DE, BC, AF
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_update_obstacle::
    ;;Levels 1-10 -> Blue obstacle and wave
    ld      a, (level)
    cp      #01
    jp      z, lv123
    ld      a, (level)
    cp      #02
    jp      z, lv123
    ld      a, (level)
    cp      #03
    jp      z, lv123
    ld      a, (level)
    cp      #04
    jp      z, lv123
    ld      a, (level)
    cp      #05
    jp      z, lv123
    ld      a, (level)
    cp      #06
    jp      z, lv123
    ld      a, (level)
    cp      #07
    jp      z, lv123
    ld      a, (level)
    cp      #08
    jp      z, lv123
    ld      a, (level)
    cp      #09
    jp      z, lv123
    ld      a, (level)
    cp      #10
    jp      z, lv123

    ;;Levels 4, 5, 6 -> Ghost and green obstacle
    ld      a, (level)
    cp      #11
    jp      z, lv456
    ld      a, (level)
    cp      #12
    jp      z, lv456
    ld      a, (level)
    cp      #13
    jp      z, lv456
    ld      a, (level)
    cp      #14
    jp      z, lv456
    ld      a, (level)
    cp      #15
    jp      z, lv456
    ld      a, (level)
    cp      #16
    jp      z, lv456
    ld      a, (level)
    cp      #17
    jp      z, lv456
    ld      a, (level)
    cp      #18
    jp      z, lv456
    ld      a, (level)
    cp      #19
    jp      z, lv456
    ld      a, (level)
    cp      #20
    jp      z, lv456

    ;;Levels 21-30: -> FireBall, sandwave, bigfire and salicornio
    ld      a, (level)
    cp      #21
    jp      z, lv789
    ld      a, (level)
    cp      #22
    jp      z, lv789
    ld      a, (level)
    cp      #23
    jp      z, lv789
    ld      a, (level)
    cp      #24
    jp      z, lv789
    ld      a, (level)
    cp      #25
    jp      z, lv789
    ld      a, (level)
    cp      #26
    jp      z, lv789
    ld      a, (level)
    cp      #27
    jp      z, lv789
    ld      a, (level)
    cp      #28
    jp      z, lv789
    ld      a, (level)
    cp      #29
    jp      z, lv789
    ld      a, (level)
    cp      #30
    jp      z, lv789

lv123:
    ld      a, h_color(ix)
    cp      #01
    jr      z, bluee
    jr      nz, wave

bluee:
    ld      hl, #_obstacle_sp_0
    jp      dibujar

wave:
    ld      a, h_y(ix)
    cp      #0x76
    jr      z, waveup
    jr      nz, wavedown

waveup:
    ld      hl, #_wave_sp_0
    jp      dibujar

wavedown:
    ld      hl, #_wave_sp_1
    jp      dibujar

lv456:
    ld      a, h_color(ix)
    cp      #01
    jr      z, green
    jr      nz, ghost

green:
    ld      hl, #_obstacle_sp_1
    jp      dibujar

ghost:
    ld      a, (animation_seconds)
    cp      #00
    jr      z, ghost1
    cp      #02
    jr      z, ghost1    
    cp      #04
    jr      z, ghost1    
    cp      #06
    jr      z, ghost1    
    cp      #08
    jr      z, ghost1    
    jr      nz, ghost2
    
    ghost1:
        ld      hl, #_ghost_sp_0
        jp      dibujar

    ghost2:
        ld      hl, #_ghost_sp_1
        jp      dibujar

lv789:
    ld      a, h_color(ix)
    cp      #01
    jr      z, fireball

    ld      a, h_color(ix)
    cp      #02
    jr      z, bigfire

    ld      a, h_color(ix)
    cp      #03
    jr      z, salicornio
    jr      nz, sandwave

fireball: 
    ld      hl, #_fireball_sp_0
    jp      dibujar

bigfire:
    ld      a, (animation_seconds)
    cp      #00
    jr      z, bigfire1
    cp      #02
    jr      z, bigfire1    
    cp      #04
    jr      z, bigfire1
    cp      #06
    jr      z, bigfire1
    cp      #08
    jr      z, bigfire1
    jr      nz, bigfire2

bigfire1:
    ld      hl, #_bigfire_sp_0
    jp      dibujar

bigfire2:
    ld      hl, #_bigfire_sp_1
    jp      dibujar

salicornio:
    ld      a, (animation_seconds)
    cp      #00
    jr      z, salicornio1
    cp      #02
    jr      z, salicornio1    
    cp      #04
    jr      z, salicornio1
    cp      #06
    jr      z, salicornio1
    cp      #08
    jr      z, salicornio1
    jr      nz, salicornio2

salicornio1:
    ld      hl, #_salicornio_sp_0
    jp      dibujar

salicornio2:
    ld      hl, #_salicornio_sp_1
    jp      dibujar

sandwave:
    ld      a, h_y(ix)
    cp      #0x76
    jr      z, sandwaveup
    jr      nz, sandwavedown

sandwaveup:
    ld      hl, #_wave_sp_4
    jp      dibujar

sandwavedown:
    ld      hl, #_wave_sp_5
    jp      dibujar

ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  BORRAMOS ENEMIGOS, DEPENDIENDO DEL ENEMIGO HACE UN CLEAR U OTRO
;;  DESTROYED REGISTER VALUES -> HL, DE, BC, AF
;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_clear_obstacle::
    ld      a, h_color(ix)
    cp      #01
    jr      z, tipo1

    ld      a, h_color(ix)
    cp      #02
    jr      z, tipo2

    ld      a, h_color(ix)
    cp      #03
    jr      z, tipo3

    ld      a, h_color(ix)
    cp      #04
    jr      z, tipo4    
    
tipo1:
    ld      hl, #_fireball_sp_1
    jp      dibujar

tipo2:
    ld      hl, #_bigfire_sp_2
    jp      dibujar

tipo3:
    ld      hl, #_hero_sp_08
    jp      dibujar

tipo4:
    ld      hl, #_wave_sp_2
    jp      dibujar

ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  PINTAMOS EL SPRITE QUE NOS PASEN EN EL REGISTRO HL
;;  DESTROYED REGISTER VALUES -> IX, HL, DE, BC, AF
;;  INPUT -> HL (Apunta al sprite a dibujar)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_draw::
    ld  a, h_w(ix)
    cp  #00
    ret z

    push    hl
    ld      de,     #CPCT_VMEM_START_ASM
    ld      c,      h_x(ix)
    ld      b,      h_y(ix)
    call cpct_getScreenPtr_asm
    ex      de,     hl 
    pop hl
    
    ld      a, h_color(ix)      ;;Es mentira, es el tipo jej
    cp      #01
    jr z, small
    ld      a, h_color(ix)
    cp      #02
    jr z, big
    ld      a, h_color(ix)
    cp      #03
    jr z, medium
    jr nz, wavee

small:
    ld      c,      #8      ;;Width
    ld      b,      #12     ;;Height
    call cpct_drawSprite_asm
    ret
medium:
    ld      c,      #8      ;;Width
    ld      b,      #16     ;;Height
    call cpct_drawSprite_asm
    ret
wavee:
    ld      c,      #16     ;;Width
    ld      b,      #24     ;;Height
    call cpct_drawSprite_asm
    ret 
big:
    ld      c,      #8      ;;Width
    ld      b,      #44     ;;Height
    call cpct_drawSprite_asm
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  LIMPIAMOS LA PANTALLA PINTANDO DOS CAJAS NEGRAS GIGANTES
;;  DESTROYED REGISTER VALUES -> AF, DE, BC, HL
;;  INPUT -> HL (Apunta al sprite a dibujar)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_clear_screen::
    ld de, #0xC000
    ld a, #0x00
    ld b, #200
    ld c, #0x25
    call cpct_drawSolidBox_asm

    ld de, #0xC025
    ld a, #0x00
    ld b, #200
    ld c, #0x40
    call cpct_drawSolidBox_asm
ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  ACTUALIZA LOS FONDOS
;;  DESTROYED REGISTER VALUES -> DE, HL, AF, BC
;;  INPUT -> HL (Apunta al sprite a dibujar)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_update_bginit123::
    ld      hl, #_background_z_end
    ld      de, #0xFFFF
    call    cpct_zx7b_decrunch_s_asm
ret

sys_render_update_bginit456::
    ld      hl, #_background_hallow_z_end
    ld      de, #0xFFFF
    call    cpct_zx7b_decrunch_s_asm
ret

sys_render_update_bginit789::
    ld      hl, #_background_prince_z_end
    ld      de, #0xFFFF
    call    cpct_zx7b_decrunch_s_asm
ret

sys_render_update_menu::
    ld      hl, #_menu_z_end
    ld      de, #0xFFFF
    call    cpct_zx7b_decrunch_s_asm
ret

sys_render_update_win::
    ld      hl, #_win_z_end
    ld      de, #0xFFFF
    call    cpct_zx7b_decrunch_s_asm
ret

sys_render_clear_killed::
ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;  ACTUALIZA EL STRING DEL NIVEL
;;  DESTROYED REGISTER VALUES -> DE, HL, AF, BC
;;  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sys_render_draw_stlvl1::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl1
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl2::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl2
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl3::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl3
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl4::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl4
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl5::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl5
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl6::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl6
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl7::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl7
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl8::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl8
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl9::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl9
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl10::
    ld      hl, #0x0F06
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl10
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl11::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl11
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl12::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl12
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl13::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl13
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl14::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl14
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl15::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl15
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl16::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl16
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl17::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl17
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl18::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl18
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl19::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl19
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl20::
    ld      hl, #0x0F0B
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl20
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl21::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl21
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl22::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl22
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl23::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl23
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl24::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl24
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl25::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl25
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl26::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl26
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl27::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl27
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl28::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl28
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl29::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl29
    call    cpct_drawStringM0_asm
ret

sys_render_draw_stlvl30::
    ld      hl, #0x0F04
    call    cpct_setDrawCharM0_asm
    ld      de, #0xC000
    ld       c, #0x1B
    ld       b, #0x00
    call    cpct_getScreenPtr_asm
    ld      iy, #str_lvl30
    call    cpct_drawStringM0_asm
ret