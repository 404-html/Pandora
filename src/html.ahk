::a::
Var = 
(
<a href="http://www.baidu.com" target='_blank'>�ٶ�һ��</a>
)
code(Var)
return

::html5::
::html`:5::
Var = 
(
<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<title>Document</title>
</head>
<style>
	body {
		max-width: 540px;
        min-width: 320px;
	}
</style>
<body>
	
</body>
<script>
</script>
</html>
)
code(Var)
Return

::meta::
Var = 
(
<meta charset="UTF-8">
<!-- ��ֹ���� -->
<meta name="viewport"content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<!-- �������� -->
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui" />
<!-- �����ص�ַ���������IOS��Safari��ע��IOS7.0�汾�Ժ�safari���ѿ�����Ч���� -->
<meta name="apple-mobile-web-app-capable" content="yes" />
<!-- �����IOS��Safari����״̬������ʽ����ѡdefault/black/black-translucent �� -->
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<!-- IOS�н��ý�����ʶ��Ϊ�绰����/����Androidƽ̨�ж������ַ��ʶ�� -->
<meta name="format-detection"content="telephone=no, email=no" />
����meta��ǩ
<!-- ����360������ļ���ģʽ(webkit) -->
<meta name="renderer" content="webkit">
<!-- ����IEʹ�ü���ģʽ -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- ����ֳ��豸�Ż�����Ҫ�����һЩ�ϵĲ�ʶ��viewport��������������ݮ -->
<meta name="HandheldFriendly" content="true">
<!-- ΢�����ʽ����� -->
<meta name="MobileOptimized" content="320">
<!-- ucǿ������ -->
<meta name="screen-orientation" content="portrait">
<!-- QQǿ������ -->
<meta name="x5-orientation" content="portrait">
<!-- UCǿ��ȫ�� -->
<meta name="full-screen" content="yes">
<!-- QQǿ��ȫ�� -->
<meta name="x5-fullscreen" content="true">
<!-- UCӦ��ģʽ -->
<meta name="browsermode" content="application">
<!-- QQӦ��ģʽ -->
<meta name="x5-page-mode" content="app">
<!-- windows phone ����޸߹� -->
<meta name="msapplication-tap-highlight" content="no">
)
code(Var)
Return

::nocache::
(
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
<!-- HTTP 1.1 -->  
<meta http-equiv="pragma" content="no-cache">  
<!-- HTTP 1.0 -->  
<meta http-equiv="cache-control" content="no-cache">  
<!-- Prevent caching at the proxy server -->  
<meta http-equiv="expires" content="0">  
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />  
)
Return

::art::
    SendRaw, <article></article>
return

::middle::
    SendRaw, vertical-align: middle;
return

; https://tool.lu/imageholder/ ��ʵ��ȫ�����Լ�ʵ�֡����ˣ������е������ַ���
::img::
    SendInput, <img src="https://iph.href.lu/400x400" alt="..." />{left 14}{ShiftDown}{left 7}{ShiftUp}
Return
