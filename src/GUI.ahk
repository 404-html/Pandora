Gui, Add, Text, gAllSearchA W120 ym, ����������:
Gui, Add, Checkbox, gMySubroutine Checked HwndMyEditHwnd vbd, �ٶ�
Gui, Add, Checkbox, vgoogle, Google
Gui, Add, Checkbox, vgithub, Github
Gui, Add, Checkbox, vso, Stack Overflow
Gui, Add, Checkbox, vsegmentfault, SegmentFault
Gui, Add, Checkbox, vcylee, cnblogs

Gui, Add, Text, gAllSearchB W120 ym, ������:
Gui, Add, Checkbox, vbdfy, �ٶȷ���   
Gui, Add, Checkbox, vyoudaofy, �е�����
Gui, Add, Checkbox, vgooglefanyi, Google����

Gui, Add, Text, gAllSearchC W120 ym, ������:
Gui, Add, Checkbox, vwy, ����������   
Gui, Add, Checkbox, vqq, QQ����
Gui, Add, Checkbox, vdog, �ṷ����
Gui, Add, Checkbox, vxiami, Ϻ������

Gui, Add, Text, gAllSearchD W120 ym, ������:
Gui, Add, Checkbox, vjuejin, ���
Gui, Add, Checkbox, vjianshu, ����
Gui, Add, Checkbox, vcsdn, CSDN
Gui, Add, Checkbox, vzhihu, ֪��

Gui, Add, Text, gAllSearchE W80 ym, ������:
Gui, Add, Checkbox, vtaobao, �Ա�
Gui, Add, Checkbox, vjingdong, ����
Gui, Add, Checkbox, vdangdang, ����
Gui, Add, Checkbox, vamazon, ����ѷ
Gui, Add, Checkbox, vsuning, �����׹�


; ������
Gui, Add, Edit, vSearchContent w600 Limit50 y+30 xs, 
; ����ɫ
Gui, Color, E6FFE6
; margin ����
Gui, Margin, 10, 10
; submit ��ť
Gui, Add, Button, w600 h30 Default, OK


GuiEscape:
GuiClose:
	Gui,Hide
return

!space::
	Gui, Show, W620, Simple Input Example
return 

!m::
	isAllSearchC := true
	GuiControl,,bd, 0
	GuiControl,, wy, 1 
	GuiControl,, qq, 1 
	GuiControl,, dog, 1 
	GuiControl,, xiami, 1 
	Gui, Show,, Simple Input Example
return 

; +g ��ʵ������Ӱ�
MySubroutine:
	/*
		MsgBox, %MyEditHwnd%
		MsgBox, %A_EventInfo%, %A_GuiEvent%, %A_GuiControl%, %A_Gui%
	*/
return

isAllSearchA := false
AllSearchA:
	isAllSearchA := !isAllSearchA
	if (isAllSearchA) {
		GuiControl,, bd, 1 
		GuiControl,, google, 1 
		GuiControl,, so, 1 
		GuiControl,, github, 1 
		GuiControl,, segmentfault, 1 
	} else {
		GuiControl,, bd, 0
		GuiControl,, google, 0
		GuiControl,, so, 0
		GuiControl,, github, 0
		GuiControl,, segmentfault, 0
	}
return

isAllSearchB := false
AllSearchB:
	isAllSearchB := !isAllSearchB
	if (isAllSearchB) {
		GuiControl,, bdfy, 1 
		GuiControl,, youdaofy, 1 
		GuiControl,, googlefanyi, 1 
	} else {
		GuiControl,, bdfy, 0
		GuiControl,, youdaofy, 0
		GuiControl,, googlefanyi, 0
	}
return

isAllSearchC := false
AllSearchC:
	isAllSearchC := !isAllSearchC
	if (isAllSearchC) {
		GuiControl,, wy, 1 
		GuiControl,, qq, 1 
		GuiControl,, dog, 1 
		GuiControl,, xiami, 1 
	} else {
		GuiControl,, wy, 0
		GuiControl,, qq, 0
		GuiControl,, dog, 0
		GuiControl,, xiami, 0
	}
return

isAllSearchD := false
AllSearchD:
	isAllSearchD := !isAllSearchD
	if (isAllSearchD) {
		GuiControl,, juejin, 1 
		GuiControl,, jianshu, 1 
		GuiControl,, csdn, 1 
		GuiControl,, zhihu, 1 
	} else {
		GuiControl,, juejin, 0
		GuiControl,, jianshu, 0
		GuiControl,, csdn, 0
		GuiControl,, zhihu, 0
	}
return

isAllSearchE := false
AllSearchE:
	isAllSearchE := !isAllSearchE
	if (isAllSearchE) {
		GuiControl,, taobao, 1 
		GuiControl,, tianmao, 1 
		GuiControl,, jingdong, 1 
		GuiControl,, dangdang, 1 
		GuiControl,, amazon, 1 
		GuiControl,, suning, 1 
	} else {
		GuiControl,, taobao, 0
		GuiControl,, tianmao, 0
		GuiControl,, jingdong, 0
		GuiControl,, dangdang, 0
		GuiControl,, amazon, 0 
		GuiControl,, suning, 0
	}
return


ButtonOK:
; �����û������뵽ÿ���ؼ��Ĺ���������.
Gui, Submit, NoHide 

; ������è'����԰
if (cylee == 1) {
	RUN, https://zzk.cnblogs.com/my/s/blogpost-p?Keywords=%SearchContent%
}

; �ٶ�
if (bd == 1) {
	RUN, https://www.baidu.com/s?wd=%SearchContent%
}

; Google
if (google == 1) {
	RUN, https://www.google.com/search?q=%SearchContent%
}

; Github
if (github == 1) {
	RUN, https://github.com/search?q=%SearchContent%
}

; Stack Overflow
if (so == 1) {
	RUN, https://stackoverflow.com/search?q=%SearchContent%
}

; SegmentFault
if (segmentfault == 1) {
	RUN, https://segmentfault.com/search?q=%SearchContent%
}

; �ٶȷ���   
if (bdfy == 1) {
	RUN, http://fanyi.baidu.com/translate?aldtype=16047&query=%SearchContent%&keyfrom=baidu&smartresult=dict&lang=auto2zh#zh/en/%SearchContent%
}

; �е�����
if (youdaofy == 1) {
	RUN, http://dict.youdao.com/w/eng/%SearchContent%/#keyfrom=dict2.index
}

; Google����
if (googlefanyi == 1) {
	RUN, https://translate.google.cn/#auto/en/%SearchContent%
}

; ����������   
if (wy == 1) {
	RUN, http://music.163.com/#/search/m/?s=%SearchContent%
}

; QQ����
if (qq == 1) {
	RUN, https://y.qq.com/portal/search.html#w=%SearchContent%
}

; �ṷ����
if (dog == 1) {
	RUN, http://www.kugou.com/yy/html/search.html#searchType=song&searchKeyWord=%SearchContent%
}

; Ϻ������
if (xiami == 1) {
	RUN, https://www.xiami.com/search?key=%SearchContent%
}

; ���
if (juejin == 1) {
	RUN, https://juejin.im/search?query=%SearchContent%
}

; ����
if (jianshu == 1) {
	RUN, https://www.jianshu.com/search?q=%SearchContent%&page=1&type=note
}

; CSDN
if (csdn == 1) {
	RUN, https://so.csdn.net/so/search/s.do?q=%SearchContent%
}

; ֪��
if (zhihu == 1) {
	RUN, https://www.zhihu.com/search?type=content&q=%SearchContent%
}

; �Ա�
if (taobao == 1) {
	RUN, https://s.taobao.com/search?q=%SearchContent%
}

; ����
if (jingdong == 1) {
	RUN, https://search.jd.com/Search?keyword=%SearchContent%&enc=utf-8&wq=%SearchContent%
}

; ����ѷ
if (amazon == 1) {
	RUN, https://www.amazon.cn/s/ref=nb_sb_noss?field-keywords=%SearchContent%
}

; �����׹�
if (suning == 1) {
	RUN, https://search.suning.com/%SearchContent%/
}

; ����
if (dangdang == 1) {
	RUN, http://search.dangdang.com/?key=%SearchContent%
}
return