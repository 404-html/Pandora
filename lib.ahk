; �ر����뷨
; ʹ��ʾ����SwitchIME(0x08040804)
; ʹ��ʾ����SwitchIME(0x04090409)
SwitchIME(dwLayout){
    HKL:=DllCall("LoadKeyboardLayout", Str, dwLayout, UInt, 1)
    ControlGetFocus,ctl,A
    SendMessage,0x50,0,HKL,%ctl%,A
}

; �����������ı�
code(code)
{
    ; MsgBox,  %code%
    tmp := Clipboard
    Clipboard := code
    SendInput, ^v
    ; ����������Ҫ�ȴ�50m
    sleep, 50 
    Clipboard := tmp
}