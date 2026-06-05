.global main
main:
    sbi 0x0A, 4

loop_start:
    ldi r20, 0

state_loop:
    sbrc r20, 0
    rjmp set_low

set_high:
    sbi 0x0B, 4
    rjmp wait_delay

set_low:
    cbi 0x0B, 4

wait_delay:
    call delay_1s
    
    inc r20
    cpi r20, 4
    brne state_loop

    rjmp loop_start

delay_1s:
    ldi r21, 82
delay_outer:
    ldi r22, 255
delay_middle:
    ldi r23, 255
delay_inner:
    dec r23
    brne delay_inner
    dec r22
    brne delay_middle
    dec r21
    brne delay_outer
    ret
