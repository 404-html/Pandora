; ��������
ajax(url, q:=false, text:="����Ϊ�����ش��룬�뱣������˳��")
{
    whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    whr.Open("GET", url, true)
    whr.Send()
    if (text != "") {
        TrayTip, ���Ժ�, % text, 20, 17
    }   
    whr.WaitForResponse()
    
    
    if (q==false) {
        if (whr.ResponseText) {
            TrayTip, ���سɹ�, ���ţ�3�����Ũq?�� , 20, 17
        } else {
            TrayTip, �����ݷ���, (����(#��)��t�ro(�����///) , 20, 17
        }
    }
    
    return  whr.ResponseText
}


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
    SendInput, ^+v
    ; ����������Ҫ�ȴ�100m
    sleep, 150
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
