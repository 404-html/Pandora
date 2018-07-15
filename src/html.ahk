::div::
    Send, <div></div>{left 6}
return

::span::
    Send, <span></span>{left 7}
return

::a::
Var = 
(
<a href="http://www.baidu.com" target='_blank'>�ٶ�һ��</a>
)
code(Var)
return

::html-all::
::html`:all::
::html.all::
::htmlall::
::myhtml::
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- normalize -->
    <link href="https://cdn.bootcss.com/normalize/8.0.0/normalize.min.css" rel="stylesheet">

    <!-- Vue -->
    <script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>

    <!-- jquery -->
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>

    <!-- bootstrap 3.3.6 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    </style>

    <body>
        <div id="app">
          <!--   <input type="radio" id="one" value="One" v-model="picked">
            <label for="one">One</label>
            <br>
            <input type="radio" id="two" value="Two" v-model="picked">
            <label for="two">Two</label> -->

            <div v-for='(item, index) in items' :key='index'>
                <input type="radio" id="two" :value="item" v-model="picked">
                <label for="two">{{ item }}</label>
            </div>

            <br>
            <span>Picked: {{ picked }}</span>

            <hr />
            
            <div id='example-3'>
                  <input type="checkbox" id="jack" value="Jack" v-model="checkedNames">
                  <label for="jack">Jack</label>
                  <input type="checkbox" id="john" value="John" v-model="checkedNames">
                  <label for="john">John</label>
                  <input type="checkbox" id="mike" value="Mike" v-model="checkedNames">
                  <label for="mike">Mike</label>
                  <br>
                  <span>Checked names: {{ checkedNames }}</span>
            </div>

            <hr>

            <select v-model="selected">
              <option disabled value="">Please select one</option>
              <option>A</option>
              <option>B</option>
              <option>C</option>
            </select>
            <span>Selected: {{ selected }}</span>
        </div>
    </body>
    <script>
        // jquery
        $(function () {
            console.log('hello world');
        });

         // Vue
        new Vue({
            el: '#app',
            data: {
                title: 'hello world',
                picked: 'Three',
                checkedNames: [],
                selected: '',
                items: ['One', 'Two', 'Three']
            },
            methods: {
                clickHandle: function () {
                    console.log('hello world');
                }
            }
        })
    </script>

</html>
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


::vuehtml::
::vhtml::
::vue.html::
::vue-html::
Var = 
(
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://cdn.bootcss.com/vue/2.5.16/vue.min.js"></script>
    <style>
    </style>
    <body>
        <div id="app">
            {{ title }}
            <mybutton></mybutton>
        </div>
    </body>
    <script>
        // �ֲ�ע�����
        var mybutton = Vue.extend({
              template: ``
                <div><button @click="handle">fuck title</button></div>
              `,
              methods: {
                handle () {
                    vue.title = 'fuck'
                }
              }
        });
        Vue.component('mybutton', mybutton)
        var vue = new Vue({
            el: '#app',
            data: {
                title: '123'
            }
        })
    </script>
</html>
)
code(Var)
return