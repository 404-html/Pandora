::#app::
Var = 
(
<div id="app"></div>
)
code(Var)
Send, {left 6}
return

::a::
	SendRaw, <a href="http://www.baidu.com" target='_blank'>�ٶ�һ��</a>
return

::html`:5::
Var = 
(
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Document</title>
</head>
<style>
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

::table-cell::
Var = 
(
/**
 * ��Ԫ�أ�table-cell���ݵ�IE8
 *
 * ȱ��1��margin���Ի�ʧЧ������Ԫ�ز�Ӱ�죩����Ϊmargin�������ڱ�񲼾֡�
 * ���1����������һ��div������Ȼ����������display:block;margin: 0 auto;����
 *
 * ȱ��2��ʹ��display: table-cell;��Ԫ�����ÿ�߰ٷֱȵ�ʱ�򽫲������ã�Ʃ��������Ϊ����100`%���
 * ���2�����ֻ������������100`%�������з����ģ��Ǿ�������һ���ܴ��ֵ����3000px
 *
 * ȱ��3����Ԫ������Ϊposition: absolute;��ʱ���ʧЧ��
 * ���3���ο����1���������һ������,��absolute�����ڸ��������ɡ�
 *       ������һ�����ֻᵼ��ȱ��2�����⣬Ҳ���ǿ�߰ٷֱ�ʧЧ������Ҫ������ʹ�á�
 *       ʵ�ڲ��п���ʹ��:
 		 position: relative;
		 top: 50`%;
		 transform: translateY(-50`%);  
         ����-webkit-ǰ׺�󣬼����Կ��ԴﵽIE9��
         Ҳ���Բ���margin-top: ��Ԫ�صĸ߶ȡ�����Ҫ֪���߶ȣ��޷��������ݳ�������Ӧ��
 */
.my-container {
    display: table-cell;
    vertical-align: middle;
}
)
code(Var)
return

::middle::
    SendRaw, vertical-align: middle;
return

::fig::
Var = 
(
<figure>
    <img src="https://iph.href.lu/100x100" alt="..." />
    <figcaption>explanatory caption</figcaption>
</figure>
)
code(Var)
return

::fig-span::
Var = 
(
<style>
.my-container {
	display: table-cell;
	vertical-align: middle;
	background-color: red;
	height:500px;
}
img, span {
	/**
	 * ��ǰ����Ϊֻ��display:table-cell;����ʹ�á�
	 * ���ڲŷ���ԭ��ֻҪ������Ԫ�ض����ԣ���������ǣ�img��ȻҲ��һ������Ԫ�ء� 
	 */
	vertical-align: middle;
}
</style>
<body>
	<figure class="my-container">
		<img src="https://iph.href.lu/100x100" alt="..." />
		<span>explanatory caption</span>
	</figure>
</div>
)
code(Var)
return


; https://tool.lu/imageholder/ ��ʵ��ȫ�����Լ�ʵ�֡����ˣ������е������ַ���
::img::
    SendInput, <img src="https://iph.href.lu/400x400" alt="..." />{left 14}{ShiftDown}{left 7}{ShiftUp}
Return
