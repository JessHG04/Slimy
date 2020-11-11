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
.include "timer.h.s"
.include "gameover.h.s"
.include "nextlevel.h.s"
.include "game.h.s"
.globl level


_tiempo_de_control:: .db 0
_unidad_segundos:: .db 0
_decena_segundos:: .db 0
_juego_pausado:: .db 0          ;; 1 no pausado // 0 pausado
_level_seconds:: .db 0
animation_seconds:: .db 0

_str_timers:   .asciz  "5"
_str_timerd:   .asciz  "1"

;;CONTROLA LAS INTERRUPCIONES DURANTE 1 SEGUNDO
timer_control::
    ld a, (_juego_pausado)
    ret z
    ld      a, (_tiempo_de_control)
    cp      #150                      ;; cada 300 interrupciones pasa 1 sec
    call      z, timer_menos1s
    inc     a                       ;; si no, incrementamos y volvemos
    ld      (_tiempo_de_control), a
    ret

;;RESTA UN SEGUNDO AL CONTADOR
timer_menos1s::
    ;;Ha pasado un segundo del nivel
    ld a, (_level_seconds)
    inc a
    ld (_level_seconds), a
    ;; reseteamos el contador
    ld      a, #0
    ld      (_tiempo_de_control), a
    ;; incrementamos los segundos
    ld      a, (_unidad_segundos)
    cp #0
    call z, timer_menos1d ;;LLEGAN A 0 LOS SEGUNDOS 
    dec     a

    ld      (_unidad_segundos), a  ;; lo, guardamos y volvemos
    ld      (animation_seconds), a
    add #48 ;; PARA EL ASCI 
    ld (_str_timers), a

    ret
timer_menos1d::

ld a, (_decena_segundos)
dec a
cp #-1
call z,timer_clear ;;AL TERMINAR EL CONTADOR HACE ESTO

ld (_decena_segundos), a
add #48 ;; PARA EL ASCI 
ld (_str_timerd), a

ld a,  #10
ret

timer_clear::;;BORRA TIMER E INVOCA PANTALLA NEXT LEVEL

    ;;Pauso el contador
    ld a, #0
    ld (_juego_pausado), a
    ;;Incremento el nivel
    ld a, (level)
    inc a
    ld (level), a
    ;;Invoco pantalla siguiente nivel
    call man_nextlevel_run

ret

;;SETEA EL VALOR DEL CRONOMETRO 
timer_value::
    ;;Reinicio los segundos del nivel
    ld a, #0 
    ld (_level_seconds), a
    ;;Reseteo el contador
    ld a, #0  
    ld (_unidad_segundos), a
    ld (animation_seconds), a
    add #48 ;; PARA EL ASCI 
    ld (_str_timers), a
    ld a, #3
    ld (_decena_segundos), a
    add #48 ;; PARA EL ASCI 
    ld (_str_timerd), a
    ret
;;DIBUJA EL CRONOMETRO
timer_render::

ret