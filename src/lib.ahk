; ����ר��Ŀ¼
if !FileExist(".pandora")
	FileCreateDir, .pandora
	; ��������Ŀ¼
	if !FileExist(".pandora/.cache")
		FileCreateDir, .pandora/.cache

; ��ʵ��Ӧ�÷�������ģ�����֪��Ϊɶ��������������Ч
OnClipboardChange("ClipChanged")
ClipChanged(Type) {
    if (type == 1) {
        filename := A_WorkingDir . "\.pandora\.cache\" . A_YYYY . A_MM . A_DD . ".txt"
        if (Var != Clipboard and StrLen(Trim(StrReplace(Clipboard, "`r`n"))) != 0) {
            time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
            FileAppend, __________________%time%__________________`r`n`r`n%Clipboard%`r`n`r`n, *%filename%
        }
    }
}

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
    tmp := Clipboard
    Clipboard := code
    ; ����Ҳ��Ҫ�ȴ��������м��ʳ���������������������������������������ͳ��Ե����������ֵ��
    Sleep, 40
    SendInput, ^+v
    ; ����������Ҫ�ȴ�100m��ԭ����
    sleep, 100
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


