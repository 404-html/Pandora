﻿!e::
	Menu, VueEventMenu, Add, @click="doThat('hello'`, $event)", EventHandler
	Menu, VueEventMenu, Add, @click.stop, EventHandler
	Menu, VueEventMenu, Add, @click.once, EventHandler
	Menu, VueEventMenu, Add, @change, EventHandler
	Menu, VueEventMenu, Add, @keyup, EventHandler
	Menu, VueEventMenu, Add, @keyup.enter, EventHandler
	Menu, VueEventMenu, Add, @keyup.13, EventHandler
	Menu, VueEventMenu, Add, @input, EventHandler
	Menu, VueEventMenu, Add, @mouseover/@mouseleave, EventHandler
	
	Menu, ReactEventMenu, Add, onClick = { this.clickHandle }, EventHandler
	Menu, ReactEventMenu, Add, onChange = { this.changeHandle }, EventHandler
	Menu, ReactEventMenu, Add, onScroll = { this.scrollHandle }, EventHandler
	Menu, ReactEventMenu, Add, onInput = { this.inputHandle }, EventHandler
	Menu, ReactEventMenu, Add, onMouseOver = { this.MouseOverHandle }, EventHandler
	Menu, ReactEventMenu, Add, onMouseLeave = { this.MouseLeaveHandle }, EventHandler


	Menu, jqueryEventMenu, Add, $('#app').click(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').mouseleave(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').mouseover(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').change(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').mouseup(e => {}), EventHandler
	Menu, jqueryEventMenu, Add, $('#app').scroll(e => {}), EventHandler
	
	
	Menu, JavaScriptEventMenu, Add, .addEventListener('click'`, e => {}), EventHandler
	Menu, JavaScriptEventMenu, Add, js监听enter, EventHandler
	Menu, JavaScriptEventMenu, Add, js 组合键监听ctrl + enter, EventHandler
	Menu, JavaScriptEventMenu, Add, .addEventListener('mouseover'`, e => {}) , EventHandler
	Menu, JavaScriptEventMenu, Add, .addEventListener('mouseleave'`, e => {}), EventHandler
	Menu, JavaScriptEventMenu, Add, , EventHandler
	Menu, JavaScriptEventMenu, Add, ### 注意：onclick只能为元素绑定一个方法，而addEventListener可以绑定无限个 ### , EventHandler
	Menu, JavaScriptEventMenu, Add, , EventHandler
	Menu, JavaScriptEventMenu, Add, .onclick = (e) => {}, EventHandler
	Menu, JavaScriptEventMenu, Add, .onsubmit = (e) => {}, EventHandler


	


	Menu, echartsEventMenu, Add, echarts.init, EventHandler
	Menu, echartsEventMenu, Add, echarts.options, EventHandler
	Menu, echartsEventMenu, Add, echarts.loading, EventHandler


	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, echarts.label, EventHandler
	Menu, echartsEventMenu, Add, echarts.title, EventHandler
	Menu, echartsEventMenu, Add, echarts.legend, EventHandler
	Menu, echartsEventMenu, Add, echarts.visualMap, EventHandler
	Menu, echartsEventMenu, Add, echarts.tooltip, EventHandler


	Menu, echartsEventMenu, Add, echarts.pin（饼图）, EventHandler
	Menu, echartsEventMenu, Add, echarts.bar（柱状图）, EventHandler
	Menu, echartsEventMenu, Add, echarts.line（折线图）, EventHandler
	Menu, echartsEventMenu, Add, echarts.rose（玫瑰图）, EventHandler

	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add
	
	Menu, echartsEventMenu, Add, ehcarts.click, EventHandler
	Menu, echartsEventMenu, Add, ehcarts.mouseover, EventHandler
	Menu, echartsEventMenu, Add, ehcarts.mouseout, EventHandler
	Menu, echartsEventMenu, Add, ehcarts.legendselectchanged, EventHandler


	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, echarts.3dmap, EventHandler
	Menu, echartsEventMenu, Add, aspectScale: 1, EventHandler
	Menu, echartsEventMenu, Add, echarts.effectScatter（2d地图散点）, EventHandler
	Menu, echartsEventMenu, Add, echarts.scatter（2d地图气泡）, EventHandler

	Menu, echartsEventMenu, Add
	Menu, echartsEventMenu, Add

	Menu, echartsEventMenu, Add, getPointCenter, EventHandler
	Menu, echartsEventMenu, Add, geojson, EventHandler
	Menu, echartsEventMenu, Add, createPolygon, EventHandler
	Menu, echartsEventMenu, Add, echarts.broadcast 轮播器, EventHandler
	Menu, echartsEventMenu, Add, new echarts.graphic.LinearGradient, EventHandler
	Menu, echartsEventMenu, Add, 隐藏xy轴, EventHandler
	Menu, echartsEventMenu, Add, 坐标区域虚线（其实是Y轴不是x轴）, EventHandler

	Menu, EventMenu, Add, echarts, :echartsEventMenu
	Menu, EventMenu, Add, Vue, :VueEventMenu
	Menu, EventMenu, Add, React, :ReactEventMenu
	Menu, EventMenu, Add, jquery, :jqueryEventMenu
	Menu, EventMenu, Add, JavaScript, :JavaScriptEventMenu
	
	Menu, EventMenu, Add
	Menu, EventMenu, Add
	
	Menu, EventMenu, Add, 冒泡点击mouseup, EventHandler
	Menu, EventMenu, Add, String.fromCharCode(e.keycode), EventHandler
	Menu, EventMenu, Add, event.preventDefault(); event.stopPropagation();, EventHandler
	Menu, EventMenu, Add, 长按longpress手势, EventHandler
	
	Menu, EventMenu, Show
	Menu, EventMenu, DeleteAll
	Menu, echartsEventMenu, DeleteAll
	Menu, VueEventMenu, DeleteAll
	Menu, ReactEventMenu, DeleteAll
	Menu, jqueryEventMenu, DeleteAll
	Menu, JavaScriptEventMenu, DeleteAll
	
return


EventHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=	

if (v == "") {
Var = 
(
)
}

if (v == "长按longpress手势") {
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
    <button id="longPress">longPress</button>

    <li class="longPress">longPress</li>
    <li class="longPress">longPress</li>
    <li class="longPress">longPress</li>
    <li class="longPress">longPress</li>
</body>
<script>
    
/**
 * 绑定长按事件，同时支持绑定点击事件
 * @param {dom} dom 需要绑定的dom元素
 * @param {fn} longPressCallBack 长按事件执行的方法
 * @param {fn} touchCallBack 点击事件执行的方法
 */
var longPress = function (dom, longPressCallBack, touchCallBack) {
    var timer = undefined;
    var isLongPress = false;

    var setEvent = function (e) {
          e.addEventListener('touchstart', function(event) {
                  timer = setTimeout(function () {
                    isLongPress = true
                  longPressCallBack && longPressCallBack(e);
                }, 500);
          }, false);

          e.addEventListener('touchmove', function(event) {
                 clearTimeout(timer);
          }, false);

          e.addEventListener('touchend', function(event) {
                  if (!isLongPress) touchCallBack && touchCallBack()
                  clearTimeout(timer); 
                  isLongPress = false;
          }, false);
    }

    if (dom.length) {
        // 支持绑定多个元素
          for (var i = 0; i < dom.length; i++) {
            setEvent(dom[i])
        }
    } else {
        setEvent(dom)
    }
}

longPress(document.getElementById('longPress'), function () {
    console.log('longPress')
}, function () {
    console.log('touch');
});

[...document.querySelectorAll('.longPress')].forEach(function (e, i) {
    longPress(e, function () {
        console.log('longPress')
    }, function () {
        console.log('touch');
    });
});
</script>
</html>
)
}

if (v == "event.preventDefault(); event.stopPropagation();") {
Var = 
(
event.preventDefault(); event.stopPropagation();
)
}

if (v == "隐藏xy轴") {
Var = 
(
axisLine: {
	lineStyle: {
		width: 0,
		color: 'transparent'
	}
},
)
}

if (v == "坐标区域虚线（其实是Y轴不是x轴）") {
Var = 
(
splitLine: {
	show: true,
	lineStyle: {
	  type: 'dashed',
	  color: '#34495e',
	  opacity: 0.54,
	  width: 1,
	}
},
)
}


if (v == "js 组合键监听ctrl + enter") {
Var = 
(
$(window).keydown(function (event) {
	 // 监听esc键退出全屏
	 if (event.keyCode == 27) {
	   
	 }
	 // 监听 Ctrl + Enter 可全屏查看 
	 if (event.ctrlKey && event.keyCode == 13) {
		
	 }
});
)
}

if (v == "new echarts.graphic.LinearGradient") {
Var = 
(
color: new echarts.graphic.LinearGradient(
	// 右/下/左/上
	0, 0, 0, 1,
	[
		{offset: 0, color: 'rgba(141, 222, 255, 0.8)'},
		{offset: 0.6, color: 'rgba(141, 222, 255, 0.3)'},
		{offset: 1, color: 'transparent'}
	]
`),
)
}

if (v == "echarts.broadcast 轮播器") {
SendLevel 1
SendInput, echarts.lunbo{tab}
return
}

if (v == "aspectScale: 1") {
Var = 
(
aspectScale: 1
)
}


if (v == "echarts.init") {
SendLevel 1
SendInput, echarts.init{tab}
return
}

if (v == "echarts.options") {
SendLevel 1
SendInput, echarts.options{tab}
return
}

if (v == "echarts.loading") {
SendLevel 1
SendInput, echarts.loading{tab}
return
}

if (v == "echarts.pin（饼图）") {
SendLevel 1
SendInput, echarts.pin{tab}
return
}

if (v == "echarts.bar（柱状图）") {
SendLevel 1
SendInput, echarts.bar{tab}
return
}

if (v == "echarts.line（折线图）") {
SendLevel 1
SendInput, echarts.line{tab}
return
}

if (v == "echarts.rose（玫瑰图）") {
SendLevel 1
SendInput, echarts.rose{tab}
return
}

if (v == "echarts.label") {
SendLevel 1
SendInput, echarts.label{tab}
return
}

if (v == "echarts.title") {
SendLevel 1
SendInput, echarts.title{tab}
return
}

if (v == "echarts.legend") {
SendLevel 1
SendInput, echarts.legend{tab}
return
}

if (v == "echarts.visualMap") {
SendLevel 1
SendInput, echarts.visualMap{tab}
return
}

if (v == "echarts.tooltip") {
SendLevel 1
SendInput, echarts.tooltip{tab}
return
}

if (v == "echarts.3dmap") {
SendLevel 1
SendInput, echarts.3dmap{tab}
return
}

if (v == "echarts.effectScatter（2d地图散点）") {
SendLevel 1
SendInput, echarts.effectScatter{tab}
return
}

if (v == "echarts.scatter（2d地图气泡）") {
SendLevel 1
SendInput, echarts.scatter{tab}
return
}

if (v == "getPointCenter") {
SendLevel 1
SendInput, getPointCenter{tab}
return
}

if (v == "geojson") {
SendLevel 1
SendInput, geojson{tab}
return
}

if (v == "createPolygon") {
SendLevel 1
SendInput, createPolygon{tab}
return
}


if (v == "js监听enter") {
Var = 
(
window.addEventListener("keydown", function(e) {
	// enter键开始
	if (e.keyCode == 13) self.start();
}, false);
)
}

if (v == "@mouseover/@mouseleave") {
Var = 
(
@mouseover='broadcast(false)' @mouseleave='broadcast'
)
}

if (v == "ehcarts.legendselected") {
Var = 
(
this.myChart.on('legendselectchanged', params => {
	console.log(20181028120657, params)
})
)
}

if (v == "$('#app').scroll(e => {})") {
Var = 
(
$('.trajectoryTable').scroll(function (e) {
    console.log(20180825190354, e.currentTarget.scrollTop)
})
)
}

if (v == ".addEventListener('click', e => {})") {
Var = 
(
.addEventListener('click', e => {})
)
}
if (v == ".addEventListener('mouseover', e => {}) ,") {
Var = 
(
.addEventListener('mouseover', e => {})
)
}
if (v == ".addEventListener('mouseleave', e => {}") {
Var = 
(
.addEventListener('mouseleave', e => {})
)
}
if (v == ".onclick = (e) => {}") {
Var = 
(
.onclick = (e) => {}
)
}
if (v == ".onsubmit = (e) => {}") {
Var = 
(
.onsubmit = (e) => {}
)
}
if (v == "$('#app').click(e => {})") {
Var = 
(
$('#app').click(e => {})
)
}
if (v == "$('#app').mouseleave(e => {})") {
Var = 
(
$('#app').mouseleave(e => {})
)
}
if (v == "$('#app').mouseover(e => {})") {
Var = 
(
$('#app').mouseover(e => {})
)
}
if (v == "$('#app').change(e => {})") {
Var = 
(
$('#app').change(e => {})
)
}
if (v == "$('#app').mouseup(e => {})") {
Var = 
(
$('#app').mouseup(e => {})
)
}
if (v == "@click=""doThat('hello', $event)""") {
Var = 
(
@click = "doThat('hello', $event)"
)
}
if (v == "@click.stop") {
Var = 
(
@click.stop = "doThat('hello', $event)"
)
}
if (v == "@click.once") {
Var = 
(
@click.once = "doThat('hello', $event)"
)
}
if (v == "@change") {
Var = 
(
@change = "doThat('hello', $event)"
)
}
if (v == "@keyup") {
Var = 
(
@keyup = "doThat('hello', $event)"
)
}
if (v == "@keyup.enter") {
Var = 
(
@keyup.enter = "doThat('hello', $event)"
)
}
if (v == "@keyup.13") {
Var = 
(
@keyup.13 = "doThat('hello', $event)"
)
}
if (v == "@input") {
Var = 
(
@input = "doThat('hello', $event)"
)
}
if (v == "onClick = { this.clickHandle }") {
Var = 
(
onClick = { this.clickHandle }
)
}
if (v == "onChange = { this.changeHandle }") {
Var = 
(
onChange = { this.changeHandle }
)
}
if (v == "onScroll = { this.scrollHandle }") {
Var = 
(
onScroll = { this.scrollHandle }
)
}
if (v == "onInput = { this.inputHandle }") {
Var = 
(
onInput = { this.inputHandle }
)
}
if (v == "onMouseOver = { this.MouseOverHandle }") {
Var = 
(
onMouseOver = { this.MouseOverHandle }
)
}
if (v == "onMouseLeave = { this.MouseLeaveHandle }") {
Var = 
(
onMouseLeave = { this.MouseLeaveHandle }
)
}
if (v == "ehcarts.click") {
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var = 
(
this.myChart.on('click', params => {
	console.log(%t%, params)
})
)
}
if (v == "ehcarts.mouseover") {
Var = 
(
this.myChart.on('mouseover', params => {
	console.log(%t%, params)
})
)
}

if (v == "ehcarts.mouseout") {
Var = 
(
this.myChart.on('mouseout', params => {
	console.log(%t%, params)
})
)
}

if (v == "ehcarts.legendselectchanged") {
Var = 
(
this.myChart.on('legendselectchanged', params => {
	console.log(%t%, params)
})
)
}

if (v == "冒泡点击mouseup") {
Var = 
(
// jQuery版本
$('.keySupervision__layer').css({ left, top }).show(300, function () {
      window.addEventListener('mouseup', function cancelFade(e) {
         if (!e.target.className.includes('keySupervision__layer')) {
             $('.keySupervision__layer').hide();
             window.removeEventListener('mouseup', cancelFade);
         }
      })
})

// vue版本
<div class="msgbox" v-show="value">
data () {
    return {
        value: false
    }
},
methods: {
  hideListener (e) {
    // 只要你的弹窗所有元素都准许BEM规范即可。也就是说都带msgbox前缀，就可以轻松区分。
    if (!e.target.className.includes('msgbox')) {
        this.value = false
    }
  },
  // 可以给关闭按钮绑定，如<a class="msgbox__header--close" @click='value = !value'>×</a>
  show () {
    if (!this.value) this.value = true
  }
},
watch: {
    value (newV) {
      newV === true && window.addEventListener('mouseup', this.hideListener)
      newV === false && window.removeEventListener('mouseup', this.hideListener);
    }
},
)
}

code(Var)
return