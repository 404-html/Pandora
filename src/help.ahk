; ALT + R �����ű�
!r::
    Send, ^s
    reload
Return

; Alt + F11 �����ű�
~!F11::
    reload
return

!q::
    ; ��һ��������ǰ���а�����ݱ���������Ȼ�����
    tmp := Clipboard
    Clipboard =
    ; �ڶ��������Ƶ�ǰѡ������
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 10) {
        MsgBox, �벻Ҫ�Ѵ˹��ܵ��������
        return 
    }
    ; �е�����API���ݷ�����
    ; Var := ajax("http://119.23.22.136:6634/index.php?text=" . Clipboard . "&type=_")
    ; �ٶȷ���API
    Var := ajax("http://119.23.22.136:6634/baidu_transapi.php?text=" . Clipboard . "&type=_")
    ; �л���Ӣ�ģ��ر��������뷨��
    SwitchIME(0x08040804)
    ; ������
    SendInput, % Var
    ; ���￼�Ǽ��а�Ҫtmp�����ݣ����Ƿ�������ݡ���ʱ���淭������
    Clipboard := Var
Return

^!q::
    ; ��һ��������ǰ���а�����ݱ���������Ȼ�����
    tmp := Clipboard
    Clipboard =
    ; �ڶ��������Ƶ�ǰѡ������
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 10) {
        MsgBox, �벻Ҫ�Ѵ˹��ܵ��������
        return 
    }
    ; �ٶȷ���API
    Var := ajax("http://119.23.22.136:6634/baidu_transapi.php?text=" . Clipboard . "&type=tuofeng")
    ; �л���Ӣ��
    SwitchIME(0x08040804)
    ; ������
    SendInput, % Var
    ; ���￼�Ǽ��а�Ҫtmp�����ݣ����Ƿ�������ݡ���ʱ���淭������
    Clipboard := Var
Return


+!q::
    ; ��һ��������ǰ���а�����ݱ���������Ȼ�����
    tmp := Clipboard
    Clipboard =
    ; �ڶ��������Ƶ�ǰѡ������
    SendInput, ^c
    ClipWait, 2
    ; �ٶȷ���API
    Var := ajax("http://119.23.22.136:6634/baidu_transapi.php?text=" . Clipboard . "&type=_", true)
    TrayTip, ����ɹ�, ������Ϊ�� %Var%, 20, 17
    ; ���￼�Ǽ��а�Ҫtmp�����ݣ����Ƿ�������ݡ���ʱ���淭������
    Clipboard := Var
Return

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


; ץȡ�˵�
+!c::  
    SendInput, ^c  ;^a
    Sleep, 150 
    Menu, MyMenu, DeleteAll
    MyVar := clipboard
    clipboard := ""
    RegExMatch(MyVar, "i)(\b\w+\b)(?CCallout)") 
    Callout(m) {
        if (StrLen(m) >= 3 and StrLen(m) < 20) {
            clipboard .= m . ","
        }
        return 1
    }
    MyVar := clipboard
    Sort MyVar, U D,
    ; DĬ��ʹ�ö�����Ϊ�ָ�����U�Ƴ��ظ���
    Sort MyVar, U D,
    ColorArray := StrSplit(MyVar, ",")
    Loop % ColorArray.MaxIndex() {
        this_color := ColorArray[a_index]
        Menu, MyMenu, Add, %this_color%, MenuHandler
    }
    TrayTip, ���ɳɹ�, ���ţ�3�����Ũq?�� ���� Ctrl + x ��������, 20, 17
    MenuHandler:
        SendRaw, % A_ThisMenuItem
    Return  
return

!x::
     Menu, MyMenu, Show
Return

; ��ȡ��ǰip����Ϊ1234�ĸ�����
::ip1::
    SendInput, % A_IPAddress1
return

::ip2::
    SendInput, % A_IPAddress2
return

::ip3::
    SendInput, % A_IPAddress3
return

::ip4::
    SendInput, % A_IPAddress4
return

; �Ұ����Ƶ�ip�������Ҽ���
>^i::
    SendRaw, 119.23.22.136
return


>^t::
time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
SendInput, % time
return

::git::
    SendInput,  rm -rf *.bak && git add . && git commit -m '' && git push -u origin master{LEFT 30}
Return

::auth::
    SendInput, Authorization
return

!a::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB  
    Clipboard := "#" . SubStr(color, 3)
    TrayTip, my title, current color is `n %Clipboard%, 20, 17
return

^+d::
    InputBox, OutputVar, title, enter your download url?
    if (OutputVar != "") {
        text := ajax(OutputVar)
        RUN, notepad
        WinWaitActive, �ޱ��� - ���±�, , 2
        if ErrorLevel {
            MsgBox, WinWait timed out.
        }
        else {
            ; ������Ҫ�۽�һ��
            Winactivate
            code(text)
        }
    }
return