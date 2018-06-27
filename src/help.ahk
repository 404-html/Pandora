Menu, StatusMenu, add
Menu, LifeMenu, add
Menu, MyMenu, add

MenuHandler:
    SendRaw, % A_ThisMenuItem
Return  

!h::
    Run, mspaint 
return

:*:@qq::
    Send, 928532756@qq.com
return


^+/::
Var = 
(
/**
 * say something ...
 * @param {*} 参数 参数说明
 */
)
code(Var)
return

!o::
    tmp := Clipboard
    Clipboard := 
    Send, ^c
    ClipWait, 2
    RUN, % Clipboard
    Sleep, 200
    Clipboard := tmp
return

!s:: 
    ColorArray := ["primary", "success", "info", "warning", "danger"]
    Loop % ColorArray.MaxIndex() {
        this_color := ColorArray[a_index]
        Menu, StatusMenu, Add, %this_color%, MenuHandler
    }
    Menu, StatusMenu, Show
return

!BackSpace::
    Send, +{Home}
    Send, {Del}
return

!l:: 
    lifeArray := ["beforeCreate", "created", "beforeMount", "mounted", "activated"]
    Loop % lifeArray.MaxIndex() {
        this_life := lifeArray[a_index]
        Menu, LifeMenu, Add, %this_life%, MenuHandler
    }
    Menu, LifeMenu, Show
return

AppsKey & s::
>^s::
    run, %A_Desktop%\sublime_text.exe.lnk
return

!j::
    WinGetTitle, title, A
    if (InStr(title, "Sublime Text") == 0) {
        tmp := Clipboard
        Clipboard :=
        Send, ^c
        ClipWait 1
        Clipboard := StrReplace(Clipboard, "`r`n")  
        Send, ^v
        Clipboard := tmp
    } else {
        Send, ^j
    }
return

!Up::
    Send, {PGUP}
return

^!Up::
#Up::
    Send, {PGUP 10}
return

+!Up::
    Send, +{PGUP}
return

!Down::
    Send, {PGDN}
return

^!Down::
#Down::
    Send, {PGDN 10}
return


+!Down::
    Send, +{PGDN}
return

~!Right::
    SendInput, {end} 
return

+!Right::
    SendInput, +{end} 
return

~!Left::
    SendInput, {Home}
return

+!Left::
    SendInput, +{Home}
return

!p::
	FileSelectFolder, OutputVar,,3
	Clipboard := OutputVar
return

!d::
    run, %A_WorkingDir%/src
return

!t::
    filename := A_WorkingDir . "\.pandora\.cache\" . A_YYYY . A_MM . A_DD . ".txt"
	if FileExist(filename)
		run, %filename%
return

>!t::
    RUN, https://www.tslang.cn/docs/handbook/basic-types.html
return

>!c::
::cmd::
    run, cmd
return

>!n::
::cmd::
    run, notepad
return

::@info::
    Send, lizhaohong@hongte.info
return

; ALT + R 重启脚本
!r::
    if WinActive("ahk_class SciTEWindow")
        Send, ^s
    reload
Return

!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 20) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 有道翻译API（暂废弃）
    ; Var := ajax("http://119.23.22.136:6635/index.php?text=" . Clipboard . "&type=_")
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6635/baidu_transapi.php?text=" . Clipboard . "&type=_")
    ; 切换到英文（关闭中文输入法）
    SwitchIME(0x08040804)
    ; 黏贴结果
    SendInput, % Var
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return

^!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 20) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6635/baidu_transapi.php?text=" . Clipboard . "&type=tuofeng")
    ; 切换到英文
    SwitchIME(0x08040804)
    ; 黏贴结果
    SendInput, % Var
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return


+!q::
    ; 第一步，将当前剪切板的内容保存起来，然后清空
    tmp := Clipboard
    Clipboard =
    ; 第二步，复制当前选中内容
    SendInput, ^c
    ClipWait, 2
    if (StrLen(Clipboard) >= 20) {
        MsgBox, 请不要把此功能当做翻译机
        return 
    }
    ; 百度翻译API
    Var := ajax("http://119.23.22.136:6635/baidu_transapi.php?text=" . Clipboard . "&type=_", true)
    TrayTip, 翻译成功, 翻译结果为： %Var%, 20, 17
    ; 这里考虑剪切板要tmp的数据，还是翻译的数据。暂时保存翻译结果吧
    Clipboard := Var
Return

; 抓取菜单
+!c::  
    ; 必须add一下才可以使用DeletaAll
    Menu, MyMenu, add
    Menu, MyMenu, DeleteAll
    SendInput, ^c
    Sleep, 150 
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
    ; D默认使用逗号作为分隔符，U移除重复项
    Sort MyVar, U D,
    ColorArray := StrSplit(MyVar, ",")
    Loop % ColorArray.MaxIndex() {
        this_color := ColorArray[a_index]
        Menu, MyMenu, Add, %this_color%, MenuHandler
    }
    TrayTip, 生成成功, （づ￣3￣）づ╭?～ 按下 Ctrl + x 可以启动, 20, 17
return

!x::
     Menu, MyMenu, Show
Return

::ip::
if (A_IPAddress2 == "0.0.0.0") {
    SendInput, % A_IPAddress1
} else { 
    SendInput, % A_IPAddress2
}
return

; 获取当前ip，分为1234四个网卡
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


AppsKey & l::
>^l::
    ip := A_IPAddress1
    if (A_IPAddress2 == "0.0.0.0") {
       ip := A_IPAddress1
    } else { 
       ip := A_IPAddress2
    }
    Var := "http://" . ip . ":8080"
    SendRaw, % Var
return

; 我阿里云的ip，方便我记忆
AppsKey & i::
>^i::
    SendRaw, 119.23.22.136
return


AppsKey & t::
>^t::
time := A_YYYY . "/" . A_MM . "/" . A_DD . " " . A_Hour . ":" . A_Min . ":" . A_Sec
SendInput, % time
return

::git::
    SendInput, git add . && git commit -m '' && git push -u origin master{LEFT 30}
Return

::git-push::
::gitpush::
::git push::
    SendInput, git push -u origin master
return

::git-pull::
::gitpull::
::git pull::
    SendInput, git pull origin master
return

::gitig::
::.git::
::gitignore::
Var = 
(
.DS_Store
node_modules/
dist/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
test/unit/coverage
test/e2e/reports
selenium-debug.log

# Editor directories and files
.idea
*.suo
*.ntvs*
*.njsproj
*.sln
)
code(Var)
return

::auth::
    SendInput, Authorization
return

!a::
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%, RGB  
    Clipboard := SubStr(color, 3) ; 考虑在前面加上，但我就算了，实战的时候发现这个东西有点多余"#" . 
    TrayTip, my title, current color is `n %Clipboard%, 20, 17
return

^+d::
    InputBox, OutputVar, title, enter your download url?
    if (OutputVar != "") {
        text := ajax(OutputVar)
        RUN, notepad
        WinWaitActive, 无标题 - 记事本, , 2
        if ErrorLevel {
            MsgBox, WinWait timed out.
        }
        else {
            ; 这里需要聚焦一下
            Winactivate
            code(text)
        }
    }
return


::jss::
    Send, JavaScript
return

::desk::
::desktop::
    SendRaw, %A_Desktop%
return

::desk/::
::desktop/::
    Var := StrReplace(A_Desktop, "\", "/")
    SendRaw, %Var%
return


!enter::
    WinGet, OutputVar, MinMax, A
    if (OutputVar == 1) {
        WinRestore, A
    } else {
        WinMaximize, A
    }
return