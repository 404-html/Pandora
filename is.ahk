
::is-cn::
Var = 
(
if (!/^[\u4e00-\u9fa5]+$/.test('���Ⱥ�')) {
      throw new Error('���������ĺ���')
}
)
code(Var)
return

::is-phone::
Var = 
(
/^([0-9]{3,4}-)?[0-9]{7,8}$/.test(s)
)
code(Var)
return
    
::is-pwd:: 
    SendRaw, /[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/.test('123456a@') ; /* ����ͬʱ�������ֺ���ĸ,֧�ַǷ����� */
Return 

::is-user:: 
    SendRaw, /^[a-zA-Z0-9-_]*$/.test(''); /* ��6-16λ���֡� ��ĸ�� '_'�� '-'��ɣ����������ַ�*/
Return 

::is-id::
Var = 
(
if (!/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test('445222199307100337')){
    throw new Error('�Ƿ����֤')
}
)
code(Var)
return

::is-email::
    SendRaw, /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(s)
Return
