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

; ��ȡ��ǰ���ڵ�id��ʹ����if WinActive("ahk_id 0x3d1362")
; https://wyagd001.github.io/zh-cn/docs/misc/WinTitle.htm#ActiveWindow
::winid::
     Send, % WinExist("A")
return

; ��ȡ��ǰ���ڵ�class��ʹ�÷�Χ�Ϲ�
; https://wyagd001.github.io/zh-cn/docs/commands/WinGetClass.htm
::winclass::
    WinGetClass, class, A
    Send, % class
return
