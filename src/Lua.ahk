~^F12::
; ��ȡָ��λ�õ���ֵ
FileRead, key, C:\Users\lizhaohong\Desktop\keypressed.txt

; b ����԰
if (key == 66) {
    RUN, http://www.cnblogs.com/cylee
}

input(V, select := false) {
    if (select == true) {
        Sleep 50
        SendRaw, ^a
    }
    SendRaw, % V
    Send, {tab}
    Sleep 50
}

; ����R��redis���˺�����
if (key == 82) {
    input("sit")
    input("172.16.200.113")
    input("6379")
    input("hongte888")
}

; ��1�� �����������ϵͳ���˺�����
if (key == 97) {
    input("admin-alms")
    input("hongte123")
    SendInput, {enter}
}

; ��2�� ���������Ŵ�ϵͳ���˺�����
if (key == 98) {
    input("admin")
    input("hongte@2018")
    SendInput, {enter}
}

; ��3�� ��������н��ϵͳ���˺�����
if (key == 99) {
    input("HX-04397")
    input("123456")
    SendInput, {enter}
}

; ��9�� �������벩��԰���˺�����
if (key == 105) {
    input("������è")
    input("202063sb_")
    SendInput, {enter}
}

; ��8�� ��������UC���˺�����
if (key == 104) {
    input("admin-uc")
    input("hongte123")
    SendInput, {enter}
}

; ��1�� ���������صģ�����[���ȷ��]������
if (key == 49) {
    input("ʯ��־",true)
    input("340321197506109897")
    input("13800138005")
}

; ��3�� ���������صģ�����[���ȷ��]������
if (key == 51) {
    input("��Ը��",true)
    input("321315345553213123")
    input("����")
    input("450203198605050730")
    input("13821262000")
}

; ��2�� ���������صģ�����[��¼]
if (key == 50) {
    input("13794942971", true)
    input("123456.a")
}

; ��d����ת������ϵͳ
if (key == 68) {
    RUN, http://172.16.50.112:30601/index
}

; �򿪱�������localhost
if (key == 76) {
    Var := "http://" . A_IPAddress2 . ":8080"
    run, % Var
}

; F5
if (key == 116) {
    Send, {F5}
}

; ��Vueȫ��Ͱ
if (key == 86) {
    run, http://vuejs.org/
    run, http://vuex.vuejs.org
    run, http://router.vuejs.org 
    run, https://github.com/opendigg/awesome-github-vue
}

; �򿪶���ôȫ��Ͱ
if (key == 69) {
    run, http://element-cn.eleme.io/#/zh-CN/component/radio
    run, https://github.com/ElemeFE/element/blob/dev/packages/
    run, https://github.com/ElemeFE/mint-ui
    run, http://elemefe.github.io/mint-ui/#/
}

; ����[x]���򿪴���ϵͳ
if (key == 88) {
    run, http://172.16.200.106:8092/
}

; ����[s]����н��ϵͳ
if (key == 83) {
    run, http://172.16.50.121:31501/index
}

; ����[u]�����û�Ȩ��ϵͳ
if (key == 85) {
    run, http://172.16.50.110:30131/
}

; BackSpace
if (key == 8) {
    send, {BackSpace}
}

; ����C��ʱ��ִ��ctrl + l,ר��������տ���̨������
if (key == 67) {
    Send, ^l
}