~^F12::
; ��ȡָ��λ�õ���ֵ
FileRead, key, C:\Users\lizhaohong\Desktop\keypressed.txt

; b �ٶ�
if (key == 66) {
    RUN, http://www.cnblogs.com/cylee
}

; ����R��redis���˺�����
if (key == 82) {
    ; �ر����뷨
    SwitchIME(0x08040804)
    ; �����˺�
    SendInput, sit
    ; �л��������
    SendInput, {tab}
    Sleep 200
    ; ��������
    SendRaw, 172.16.200.113
    Sleep 200     
    SendInput, {tab}
    SendRaw, 6379
    Sleep 200   
    SendInput, {tab}
    SendRaw, hongte888
}

; 1 �����������ϵͳ���˺�����
if (key == 97) {
    SendInput, ^a
    ; �ر����뷨
    SwitchIME(0x08040804)
    ; �����˺�
    SendInput, admin-alms
    ; �л��������
    SendInput, {tab}
    Sleep 200
    ; ��������
    SendRaw, hongte123
    Sleep 200
    SendInput, {enter}
}

; 2 ���������Ŵ�ϵͳ���˺�����
if (key == 98) {
    SendInput, ^a
    ; �ر����뷨
    SwitchIME(0x08040804)
    ; �����˺�
    SendInput, admin
    ; �л��������
    SendInput, {tab}
    Sleep 200
    ; ��������
    SendRaw, hongte@2018
    Sleep 200
    SendInput, {enter}
}

; 3 ��������н��ϵͳ���˺�����
if (key == 99) {
    SendInput, ^a
    ; �ر����뷨
    SwitchIME(0x08040804)
    ; �����˺�
    SendInput, HX-04397
    ; �л��������
    SendInput, {tab}
    Sleep 200
    ; ��������
    SendRaw, 123456
    Sleep 200
    SendInput, {enter}
}

; 9 �������벩��԰���˺�����
if (key == 105) {
SendInput, ^a
; �ر����뷨
SwitchIME(0x08040804)
Var = 
(
������è
)
code(Var)
; �л��������
SendInput, {tab}
Sleep 200
; ��������
SendRaw, 202063sb_
Sleep 200
SendInput, {enter}
}

; 8 ��������UC���˺�����
if (key == 104) {
    SendInput, ^a
    ; �ر����뷨
    SwitchIME(0x08040804)
    ; �����˺�
    SendInput, admin-uc
    ; �л��������
    SendInput, {tab}
    Sleep 200
    ; ��������
    SendRaw, hongte123
    Sleep 200
    SendInput, {enter}
}

; 1 ���������صģ�����[���ȷ��]������
if (key == 49) {
    SendInput, ^a
    ; �ر����뷨
    SwitchIME(0x08040804)
    ; �����˺�
    SendInput, ʯ��־
    ; �л��������
    SendInput, {tab}
    Sleep 200
    ; ��������
    SendRaw, 340321197506109897
    Sleep 200
    ; �л��������
    SendInput, {tab}
    SendRaw, 13800138005
}

; 2 ���������صģ�����[��¼]
if (key == 50) {
    SendInput, ^a
    ; �ر����뷨
    SwitchIME(0x08040804)
    ; �����˺�
    SendInput, 13794942971
    ; �л��������
    SendInput, {tab}
    Sleep 200
    ; ��������
    SendRaw, 123456.a
}

; ��d����ת������ϵͳ
if (key == 68) {
    RUN, http://172.16.200.112:30601/index
}

; ��p������post����
if (key == 80) {
Var = 
(
this.$http.post('/uaa/auth/login', {
    "userName": "admin-salary",
    "password": "123456"
}).then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('�ӿ��쳣��' + err.message);
})
)
code(Var)
}

; ��p������post����
if (key == 71) {
Var = 
(
this.$http.get('/uc/auth/loadMenu').then(result => {
    console.log(result);
}).catch(err => {
    this.$message.error('�ӿ��쳣��' + err.message);
})
)
code(Var)
}

if (key == 76) {
    run, http://localhost:8080
}

if (key == 116) {
    Send, {F5}
}

if (key == 86) {
    run, http://vuejs.org/
    run, http://vuex.vuejs.org
    run, http://router.vuejs.org 
    run, https://github.com/opendigg/awesome-github-vue
}

if (key == 69) {
    run, http://element-cn.eleme.io/#/zh-CN/component/radio
    run, https://github.com/ElemeFE/element/blob/dev/packages/
    run, https://github.com/ElemeFE/mint-ui
    run, http://elemefe.github.io/mint-ui/#/
}

if (key == 88) {
    run, http://172.16.200.106:8083/
}

if (key == 83) {
    run, http://172.16.200.121:31501/index
}

if (key == 85) {
    run, http://172.16.200.110:30131/
}

if (key == 8) {
    send, {BackSpace}
}