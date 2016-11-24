;
;
; This is the memory locations used by the code
;
;

CURRENT_VBLANK_HNDLR        EQU             $c000

ANIMATION_ACTIVE            EQU             $c010
FRAME_COUNTER               EQU             $c011
ANIMATION_VAR_01            EQU             $c013
ANIMATION_VAR_02            EQU             $c014
ANIMATION_VAR_03            EQU             $c015


SPRITE_BUFFER               EQU             $c200
DMA_TRANSFER                EQU             $ff80
