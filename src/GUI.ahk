Gui, Add, Text, gAllSearchA W120, ����������:
Gui, Add, Checkbox, gMySubroutine Checked HwndMyEditHwnd vbd, �ٶ�
Gui, Add, Checkbox, vgoogle, Google
Gui, Add, Checkbox, vgithub, Github
Gui, Add, Checkbox, vso, Stack Overflow

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
Gui, Add, Checkbox, vsegmentfault, SegmentFault

Gui, Add, Text, gAllSearchE W120 ym, ������:
Gui, Add, Checkbox, vtaobao, �Ա�
Gui, Add, Checkbox, vtianmao, ��è
Gui, Add, Checkbox, vjingdong, ����
Gui, Add, Checkbox, vdangdang, ����

; ym ���� y�ỻ�У��е�����float:left ���� xm���Ի���,�е�����clear:both
Gui, Add, Edit, r9 vSearchContent w300 Limit50 ym , 
Gui, Color, E6FFE6
Gui, Margin, 10, 10
Gui, Add, Button, w300 h30, OK
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
	} else {
		GuiControl,, bd, 0
		GuiControl,, google, 0
		GuiControl,, so, 0
		GuiControl,, github, 0
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
		GuiControl,, segmentfault, 1 
	} else {
		GuiControl,, juejin, 0
		GuiControl,, jianshu, 0
		GuiControl,, csdn, 0
		GuiControl,, zhihu, 0
		GuiControl,, segmentfault, 0
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
	} else {
		GuiControl,, taobao, 0
		GuiControl,, tianmao, 0
		GuiControl,, jingdong, 0
		GuiControl,, dangdang, 0
	}
return


GuiClose:
ButtonOK:
Gui, Submit

; �ٶ�
if (bd == 1) {
	RUN, https://www.baidu.com/s?wd=%SearchContent%
}

; Google
if (google == 1) {
	RUN, http://
}

; Github
if (github == 1) {
	RUN, http://
}

; Stack Overfl
if (so == 1) {
	RUN, http://
}

; �ٶȷ���   
if (bdfy == 1) {
	RUN, http://
}

; �е�����
if (youdaofy == 1) {
	RUN, http://
}

; Google����
if (googlefanyi == 1) {
	RUN, http://
}

; ����������   
if (wy == 1) {
	RUN, http://
}

; QQ����
if (qq == 1) {
	RUN, http://
}

; �ṷ����
if (dog == 1) {
	RUN, http://
}

; Ϻ������
if (xiami == 1) {
	RUN, http://
}

; ���
if (juejin == 1) {
	RUN, http://
}

; ����
if (jianshu == 1) {
	RUN, http://
}

; CSDN
if (csdn == 1) {
	RUN, http://
}

; ֪��
if (zhihu == 1) {
	RUN, http://
}

; SegmentFault
if (segmentfault == 1) {
	RUN, http://
}

; �Ա�
if (taobao == 1) {
	RUN, http://
}

; ��è
if (tianmao == 1) {
	RUN, http://
}

; ����
if (jingdong == 1) {
	RUN, http://
}

; ����
if (dangdang == 1) {
	RUN, http://
}
return