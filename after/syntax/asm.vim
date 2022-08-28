hi Normal ctermfg=7
hi link asmIdentifier Normal

syn match Comment ';.*$'
syn match Instruction_A '\v(LDA|STA|CMP|TXA|TYA|AND|EOR|ORA|ADC|SBC|ROR|ROL|LSR|ASL|BIT|lda|sta|cmp|txa|tya|and|eor|ora|adc|sbc|ror|rol|lsr|asl|bit)>'
syn match Instruction_BranchAndJump '\v(JSR|RTS|BNE|BEQ|BCC|BCS|BVC|BVS|JMP|BPL|BMI|RTI|jsr|rts|bne|beq|bcc|bcs|bvc|bvs|jmp|bpl|bmi|rti)>'
syn match Instruction_SetRegister '\v(CLC|SEC|CLI|SEI|CLV|SED|CLD|clc|sec|cli|sei|clv|sed|cld)>'
syn match Instruction_Memory '\v\.?(ENUM|ENDE|enum|ende|org|ORG|INCSRC|INCBIN|BASE|INC|DEC|inc|dec)>'
syn match Instruction_Y '\v(LDY|STY|CPY|INY|DEY|TAY|ldy|sty|cpy|iny|dey|tay)>'
syn match Instruction_Stack '\v(PHA|PLA|PHP|PLP|TSX|pha|pla|php|plp|tsx)>'
syn match Instruction_X '\v(LDX|STX|CPX|INX|DEX|TAX|TXS|ldx|stx|cpx|inx|dex|tax|txs)>'
syn match Instruction_NOP '\v(NOP|BRK|nop|brk)\W'
syn match ASM_Hexadecimal '\v(#\$|#\>|#\<|\$|#)(\d|\w|-)+'
syn match ASM_Hexadecimal '\v#\(.*\)'
syn match ASM_Hexadecimal '\v(#?\$[0-9A-Fa-f]+)'
syn match ASM_Hexadecimal '\v(\+|-)\d+$'
syn match ASM_Hexadecimal 'HEX|hex.*$'
syn match ASM_Binary '\v#?\%\d+'
syn match Offset '\v, ?(x|y|X|Y)'
syn match Offset '(.*)'
syn match Offset '\v\.?DB|db|DL|dl|DH|dh|DW|dw|DSB|dsb'
syn match Label '\v^(\+|-|\@)\S*\s?'
syn match Label '\v^\w:'
syn match Macro '\vMACRO|ENDM|macro|endm'
syn match Repeat '\v(REPT\s\d*|ENDR|rept\s\d*|endr)'
syn match File '\v[/A-Za-z0-9\\_-]+\.asm'

hi Instruction_A ctermfg=14
hi Instruction_Y ctermfg=40
hi Instruction_X ctermfg=219
hi Instruction_BranchAndJump ctermfg=226
hi Instruction_SetRegister ctermfg=141
hi Instruction_Memory ctermfg=105
hi Instruction_Stack ctermfg=125
hi Instruction_NOP ctermfg=196
hi ASM_Hexadecimal ctermfg=172
hi ASM_Binary ctermfg=196
hi Offset ctermfg=33
hi Label ctermfg=1
hi Macro ctermfg=16 ctermbg=71
hi Repeat ctermfg=16 ctermbg=68
hi File ctermfg=145
