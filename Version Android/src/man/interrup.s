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
.include "interrup.h.s"
.include "timer.h.s"

uncontador: .db 06

;;Controla interrupciones
int_handler::
push af
push bc
push de
push hl

call timer_control
ld a, (uncontador)
dec a
jr nz, _cont
_zero:
call cpct_akp_musicPlay_asm
ld a, #6 
_cont:
ld (uncontador), a
pop hl
pop de
pop bc
pop af

ei
reti
;;INICIA INTERRUPCIONES
set_int_handler:
ld hl, #0x38
ld (hl), #0xC3
inc hl
ld (hl), #<int_handler
inc hl
ld (hl), #>int_handler
inc hl
ld (hl), #0xC9
ret

