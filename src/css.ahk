﻿!s::
    Menu, CssMenu, Add, css.debugger, CssHandler2
    Menu, CssMenu, Add, normalize.css, CssHandler2
    Menu, CssMenu, Add, chrome-yellow, CssHandler2
    Menu, CssMenu, Add, px2rem, CssHandler2
    Menu, CssMenu, Add, css.placeholder, CssHandler2
    Menu, CssMenu, Add, css.animate, CssHandler2
    Menu, CssMenu, Add, function.scss, CssHandler2
    Menu, CssMenu, Add, utils.scss, CssHandler2
    Menu, CssMenu, Add, g.min.css, CssHandler2
    Menu, CssMenu, Add, layout.css, CssHandler2
    
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, cssoptimization, Add, 利用 translateZ(0) 提升速度, CssHandler
    Menu, cssoptimization, Add, will-change 代替 translate3D 优化, CssHandler
    Menu, cssoptimization, Add, background-attachment: fixed 改成了 position: fixed (因为前面这玩意滚动实时计算重绘), CssHandler
    Menu, cssoptimization, Add, 背景图片所在的元素替换为::before伪元素, CssHandler
    
    
    Menu, Csssolution, Add, display: table 自动对齐策略, CssHandler
    Menu, Csssolution, Add, Calc()与background-position数学表达式, CssHandler
    Menu, Csssolution, Add, 三个DVI的Bouncing loader, CssHandler
    Menu, Csssolution, Add, 恒定宽高比, CssHandler
    Menu, Csssolution, Add, display:table垂直居中, CssHandler
    Menu, Csssolution, Add, 高度从0到auto的伸缩特效魔法, CssHandler
    Menu, Csssolution, Add, 文字Hover Shadow Box Animation美化, CssHandler
    Menu, Csssolution, Add, 文字Hover underline animation美化, CssHandler
    Menu, Csssolution, Add, 向overflow溢出元素添加渐变, CssHandler
    Menu, Csssolution, Add, hover Sibling fade, CssHandler
    Menu, Csssolution, Add, 原生实现switch, CssHandler
    Menu, Csssolution, Add, 不断闪闪发光的动画, CssHandler
    Menu, Csssolution, Add, 页面阅读进度条, CssHandler
    
    


    Menu, CssMenu, Add, 上下翻滚：transform: rotateX(180deg), CssHandler
    Menu, CssMenu, Add, 左右翻滚：transform: rotateY(180deg), CssHandler
    Menu, CssMenu, Add, 原地旋转倒立：transform: rotate(180deg), CssHandler
    
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, transform: translate(-50`%`, -50`%), CssHandler
    Menu, CssMenu, Add, transform: translateY(-50`%), CssHandler
    Menu, CssMenu, Add, transform: translateX(-50`%), CssHandler   
        
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, ell, CssHandler2
    Menu, CssMenu, Add, loading..., CssHandler2
    Menu, CssMenu, Add, loading, CssHandler2
    Menu, CssMenu, Add, center, CssHandler2
    Menu, CssMenu, Add, ycenter, CssHandler2
    Menu, CssMenu, Add, xcenter, CssHandler2
    Menu, CssMenu, Add, 舒服的字体样式font, CssHandler
    Menu, CssMenu, Add, 使用系统默认字体：System font stack, CssHandler
    Menu, CssMenu, Add, 挺好玩的代码字体：comic sans ms, CssHandler
    Menu, CssMenu, Add, :root 与 var(--primary-color), CssHandler
    Menu, CssMenu, Add, outline:none, CssHandler3

    
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, css.text-shadown, CssHandler
    Menu, CssMenu, Add, css.box-shadown, CssHandler
    Menu, CssMenu, Add, 框型阴影, CssHandler
    Menu, CssMenu, Add, lit.css极简系列：btn, CssHandler
    
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, 发廊进度条, CssHandler
    Menu, CssMenu, Add, 七喜冒泡进度条, CssHandler
    Menu, CssMenu, Add, 光之波动进度条, CssHandler
    Menu, CssMenu, Add, redbox, CssHandler2
    Menu, CssMenu, Add, cursor:手掌手势, CssHandler
    
    Menu, CssMenu, Add, 
    Menu, CssMenu, Add, 
    
    Menu, CssMenu, Add, css优化, :cssoptimization
    Menu, CssMenu, Add, css解决方案, :Csssolution
    
    

	Menu, CssMenu, Show
	Menu, CssMenu, DeleteAll
return


CssHandler2:
SendLevel 1
Send, %A_ThisMenuItem%{tab}
return

CssHandler3:
v := A_ThisMenuItem
code(v)
return


CssHandler:
v := A_ThisMenuItem
Var :=

if (v == "") {
Var =
(
)
}

if (v == "页面阅读进度条") {
Var =
(
body {
    position: relative;
    padding: 50px;
    font-size: 24px;
    line-height: 30px;
    background-image: linear-gradient(to right top, #ffcc00 50`%, #eee 50`%);
    background-size: 100`% calc(100`% - 100vh + 5px);
    background-repeat: no-repeat;
    z-index: 1;
}

body::after {
    content: "";
    position: fixed;
    top: 5px;
    left: 0;
    bottom: 0;
    right: 0;
    background: #fff;
    z-index: -1;
}
)
}

if (v == "layout.css") {
_send(v, true, true)
}

if (v == "光之波动进度条") {
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

.progress-bar {
    background-color: #1a1a1a;
    height: 25px;
    padding: 5px;
    width: 350px;
    margin: 70px 0 20px 0;
    border-radius: 5px;
    box-shadow: 0 1px 5px #000 inset, 0 1px 0 #444;
}

.span {
    display: inline-block;
    height: 100`%;
    background-color: #777;
    border-radius: 3px;
    box-shadow: 0 1px 0 rgba(255, 255, 255, .5) inset;
    transition: width .4s ease-in-out;     
    position: relative;           
}

.orange {
   background-color: #fecf23;
   background-image: linear-gradient(top, #fecf23, #fd9215);  
}        


.span::after {
    content: '';
    opacity: 0;
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: #fff;
    border-radius: 3px;
    -webkit-animation: animate-shine 2s ease-out infinite;
}

@keyframes animate-shine {
    0`% {
        opacity: 0;
        width: 0;
    }

    50`% {
        opacity: .5;
    }

    100`% {
        opacity: 0;
        width: 95`%;
    }
}
</style>

<body>
    <div class="shine progress-bar">
        <span class='span orange' style="width: 75`%;"></span>
    </div>
</body>
<script>
</script>

</html>
)
}


if (v == "css.animate") {
Var =
(
.banner1__earth--img {
	width: 655px;
	height: 660px;
    animation: Pulse 3.5s infinite ease;
}


@-webkit-keyframes Pulse {
    0`% {
      -webkit-transform: translateY(0px);
              transform: translateY(0px);
    }
    50`% {
      -webkit-transform: translateY(-30px);
              transform: translateY(-30px);
    }
    100`% {
      -webkit-transform: translateY(0px);
              transform: translateY(0px);
    }
}
)
}



if (v == "挺好玩的代码字体：comic sans ms") {
Var =
(
font-family: 'comic sans ms', sans-serif;
)
}


if (v == "不断闪闪发光的动画") {
Var =
(
/* 
color:#fff;
animation: Pulse 2s infinite;

.el-cascader__selected {
  // background-color: #3bc2e9;
  animation: Pulse 2s infinite;

  .el-cascader__label, .el-input__suffix {
      // color: #153f4b;
      color: #fff;
  }
}
 */
@keyframes Pulse {
    0`% {
      background-color: #036075;
      box-shadow: 0 0 9px #333;
      // color: #25b3dc;
    }

    50`% {
      background-color: #2daebf;
      box-shadow: 0 0 27px #2daebf;
      // color: #fff;
    }

    100`% {
      background-color: #036075;
      box-shadow: 0 0 9px #333;
      // color: #25b3dc;
    }
}
)
}

if (v == "原生实现switch") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#toggle-switch
<input type="checkbox" id="toggle" class="offscreen" /> <label for="toggle" class="switch"></label>

.switch {
  position: relative;
  display: inline-block;
  width: 40px;
  height: 20px;
  background-color: rgba(0, 0, 0, 0.25);
  border-radius: 20px;
  transition: all 0.3s;
}
.switch::after {
  content: '';
  position: absolute;
  width: 18px;
  height: 18px;
  border-radius: 18px;
  background-color: white;
  top: 1px;
  left: 1px;
  transition: all 0.3s;
}
input[type='checkbox']:checked + .switch::after {
  transform: translateX(20px);
}
input[type='checkbox']:checked + .switch {
  background-color: #7983ff;
}
.offscreen {
  position: absolute;
  left: -9999px;
}
)
}

if (v == "使用系统默认字体：System font stack") {
Var =
(
<p class="system-font-stack">This text uses the system font.</p>

.system-font-stack {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen-Sans, Ubuntu, Cantarell, 'Helvetica Neue', Helvetica, Arial, sans-serif;
}
)
}

if (v == "hover Sibling fade") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#sibling-fade
<div class="sibling-fade">
  <span>Item 1</span> <span>Item 2</span> <span>Item 3</span> <span>Item 4</span><span>Item 5</span> <span>Item 6</span>
</div>

span {
  padding: 0 1rem;
  transition: opacity 0.2s;
}
.sibling-fade:hover span:not(:hover) {
  opacity: 0.5;
}
)
}


if (v == "向overflow溢出元素添加渐变") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#overflow-scroll-gradient
<div class="overflow-scroll-gradient">
  <div class="overflow-scroll-gradient__scroller">
    Lorem ipsum dolor sit amet consectetur adipisicing elit. <br />
    Iure id exercitationem nulla qui repellat laborum vitae, <br />
    molestias tempora velit natus. Quas, assumenda nisi. <br />
    Quisquam enim qui iure, consequatur velit sit? <br />
    Lorem ipsum dolor sit amet consectetur adipisicing elit.<br />
    Iure id exercitationem nulla qui repellat laborum vitae, <br />
    molestias tempora velit natus. Quas, assumenda nisi. <br />
    Quisquam enim qui iure, consequatur velit sit?
  </div>
</div>

.overflow-scroll-gradient {
  position: relative;
}
.overflow-scroll-gradient::after {
  content: '';
  position: absolute;
  bottom: 0;
  width: 240px;
  height: 25px;
  background: linear-gradient(rgba(255, 255, 255, 0.001), white); 
  pointer-events: none;
}
.overflow-scroll-gradient__scroller {
  overflow-y: scroll;
  background: white;
  width: 240px;
  height: 200px;
  padding: 15px;
  line-height: 1.2;
}
)
}

if (v == "文字Hover underline animation美化") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#hover-underline-animation
<p class="hover-underline-animation">Hover this text to see the effect!</p>

.hover-underline-animation {
    display: inline-block;
    position: relative;

    // 补丁
    &.has-under-text::after {
        top: 99`%;
    }

    // active补丁
    &.is-active::after {
        content: '';
        position: absolute;
        width: 100`%;
        height: 2px;
        left: 0;
        transform: scaleX(1);
        background-color: #fff;
    }
}

.hover-underline-animation::after {
    content: '';
    position: absolute;
    width: 100`%;
    transform: scaleX(0);
    height: 2px;
    bottom: -5px;
    left: 0;
    background-color: #fff;
    transform-origin: bottom right;
    transition: transform 0.25s ease-out;
}

.hover-underline-animation:hover::after {
    transform: scaleX(1);
    transform-origin: bottom left;
}
)
}

if (v == "文字Hover Shadow Box Animation美化") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#hover-shadow-box-animation
<p class="hover-shadow-box-animation">Box it!记得要给我一点高度比如22px</p>

.hover-shadow-box-animation {
  display: inline-block;
  vertical-align: middle;
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px transparent;
  margin: 10px;
  transition-duration: 0.3s;
  transition-property: box-shadow, transform;
}
.hover-shadow-box-animation:hover,
.hover-shadow-box-animation:focus,
.hover-shadow-box-animation:active {
  box-shadow: 1px 10px 10px -10px rgba(0, 0, 24, 0.5);
  transform: scale(1.2);
}
)
}

if (v == "高度从0到auto的伸缩特效魔法") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#height-transition
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    .el {
        transition: max-height 0.5s;
        overflow: hidden;
        max-height: 0;
    }

    .trigger:hover>.el {
        max-height: var(--max-height);
    }
    </style>
</head>

<body>
    <div class="trigger">
        Hover me to see a height transition.
        <div class="el">content</div>
    </div>
</body>
<script>
var el = document.querySelector('.el')
var height = el.scrollHeight
el.style.setProperty('--max-height', height + 'px')
</script>

</html>
)
}

if (v == "display:table垂直居中") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#display-table-centering
<div class="container">
  <div class="center"><span>Centered content</span></div>
</div>

.container {
  border: 1px solid #333;
  height: 250px;
  width: 250px;
}
.center {
  display: table;
  height: 100`%;
  width: 100`%;
}
.center > span {
  display: table-cell;
  text-align: center;
  vertical-align: middle;
}
)
}

if (v == ":root 与 var(--primary-color)") {
_send(":root", true, true)
return
}


if (v == "恒定宽高比") {
Var =
(
<div class="constant-width-to-height-ratio"></div>
.constant-width-to-height-ratio {
  background: #333;
  width: 50`%;
}
.constant-width-to-height-ratio::before {
  content: '';
  padding-top: 100`%;
  float: left;
}
.constant-width-to-height-ratio::after {
  content: '';
  display: block;
  clear: both;
}
)
}

if (v == "三个DVI的Bouncing loader") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/
<div class="bouncing-loader">
  <div></div>
  <div></div>
  <div></div>
</div>

@keyframes bouncing-loader {
  to {
    opacity: 0.1;
    transform: translate3d(0, -1rem, 0);
  }
}
.bouncing-loader {
  display: flex;
  justify-content: center;
}
.bouncing-loader > div {
  width: 1rem;
  height: 1rem;
  margin: 3rem 0.2rem;
  background: #8385aa;
  border-radius: 50`%;
  animation: bouncing-loader 0.6s infinite alternate;
}
.bouncing-loader > div:nth-child(2) {
  animation-delay: 0.2s;
}
.bouncing-loader > div:nth-child(3) {
  animation-delay: 0.4s;
}
)
}

if (v == "Calc()与background-position数学表达式") {
Var =
(
// https://30-seconds.github.io/30-seconds-of-css/#calc
.box-example {
  height: 280px;
  background: #222 url('https://image.ibb.co/fUL9nS/wolf.png') no-repeat;
  background-position: calc(100`% - 20px) calc(100`% - 20px);
}
)
}

if (v == "display: table 自动对齐策略") {
Var =
(
.body__cards {
	display: table;
	/* 第一个参数是水平，第二个参数是垂直，但问题在于这样设置，左右都有间距，但往往是只需要一边，所以还需要结合margin: 0 -16px; */
	border-spacing: 16px 0;
	/* 补丁 */
	margin: 0 -16px;
}

	.body__card {
		width: 45`%;
		padding: 16px;
		display: table-cell;
		text-align: center;
	}
)
}

if (v == "lit.css极简系列：btn") {
SendLevel 1
Send, btn{tab}
return
}


if (v == "舒服的字体样式font") {
SendLevel 1
Send, font{tab}
return
}

if (v == "框型阴影") {
Var =
(
border: 0;
box-shadow: 2px 6px 0 hsla(0, 0`%, 0`%, 0.2);
)
}

if (v == "cursor:手掌手势") {
Var =
(
cursor: grab;
cursor: url('https://webapi.amap.com/theme/v1.3/openhand.cur'),default;
)
}

if (v == "css.box-shadown") {
SendLevel 1
Send, box-shadow{tab}
return
}

if (v == "css.text-shadown") {
Var =
(
text-shadow: #25B3DC 0px 0px 10px, #25B3DC 0px 0px 20px, #25b3dc 0px 0px 30px, #25b3dc 0px 0px 40px, #25b3dc 0px 0px 70px, #25b3dc 0px 0px 80px, #25b3dc 0px 0px 100px;
)
}



if (v == "利用 translateZ(0) 提升速度") {
Var =
(
transform: scale(2) translateZ(0);
)
}


if (v == "背景图片所在的元素替换为::before伪元素") {
Var =
(
.front::before {
    content: '';
    position: fixed; // 代替background-attachment
    width: 100`%;
    height: 100`%;
    top: 0;
    left: 0;
    background-color: white;
    background: url(/img/front/mm.jpg) no-repeat center center;
    background-size: cover;
    will-change: transform; // 创建新的渲染层
    z-index: -1;
}
)
}

if (v == "background-attachment: fixed 改成了 position: fixed (因为前面这玩意滚动实时计算重绘)") {
Var =
(
position: fixed; // background-attachment: fixed;
)
}

if (v == "will-change 代替 translate3D 优化") {
Var =
(
will-change: opacity, transform;
)
}

if (v == "七喜冒泡进度条") {
SendLevel 1
Send, maopaojindutiao{tab}
return
}

if (v == "发廊进度条") {
SendLevel 1
Send, falangjindutiao{tab}
return
}

if (v == "上下翻滚：transform: rotateX(180deg)") {
Var =
(
transform: rotateX(180deg)
)
}
if (v == "左右翻滚：transform: rotateY(180deg)") {
Var =
(
transform: rotateY(180deg)
)
}
if (v == "原地旋转倒立：transform: rotate(180deg)") {
Var =
(
transform: rotate(180deg)
)
}
if (v == "transform: translate(-50%, -50%)") {
Var =
(
transform: translate(-50`%, -50`%)
)
}
if (v == "transform: translateY(-50%)") {
Var =
(
transform: translateY(-50`%)
)
}
if (v == "transform: translateX(-50%)") {
Var =
(
transform: translateX(-50`%)
)
}
code(Var)
return



::animate.updown::
Var =
(
.fadeOutDown {
    animation: fadeOutDown 1.3s infinite;
}

.fadeOutUp {
    animation: fadeOutUp 1.3s infinite;
}

@keyframes fadeOutUp {
    // from {
    //   opacity: 0.1;
    //   transform: translate3d(0, 80`%, 0);
    // }

    // to {
    //   opacity: 1;
    //   transform: translate3d(0, 0`%, 0);
    // }

    25`% {
        transform: translateY(-3px);
    }

    50`%,
    100`% {
        transform: translateY(0);
    }

    75`% {
        transform: translateY(3px);
    }
}

@keyframes fadeOutDown {
    // from {
    //   opacity: 1;
    //   transform: translate3d(0, -20`%, 0);
    // }

    // to {
    //   opacity: 0.1;
    //   transform: translate3d(0, 30`%, 0);
    // }

    25`% {
        transform: translateY(-3px);
    }

    50`%,
    100`% {
        transform: translateY(0);
    }

    75`% {
        transform: translateY(3px);
    }
}
)
code(Var)
return  

::loading::
Var =
(
.loading {
	position: relative;
}

.loading::after {
	content: '';
	display: block;
	position: absolute; top: 0; right: 0; bottom: 0; left: 0;
	background: transparent url('http://wx3.sinaimg.cn/small/006ar8zggy1g0isbtuj2kg300w00wq2p.gif') center center / 32px 32px  no-repeat;
}
)
code(Var)
return

::nth::
    Menu, NthMenu, Add, :first-child, nthHandle
    Menu, NthMenu, Add, :last-child, nthHandle
	Menu, NthMenu, Add, :nth-child(n), nthHandle
	Menu, NthMenu, Add, :nth-child(even), nthHandle
	Menu, NthMenu, Add, :nth-child(odd), nthHandle
	Menu, NthMenu, Add, :last-child, nthHandle
	Menu, NthMenu, Add, :first-child, nthHandle
	Menu, NthMenu, Add, :nth-child(2n), nthHandle
	Menu, NthMenu, Add, :nth-child(2n + 1), nthHandle

	Menu, NthMenu, Show
	Menu, NthMenu, DeleteAll
return

nthHandle:
	code(A_ThisMenuItem)
return


::animatenum::
Var =
(
// 这是js代码
$.fn.extend({
    'animateNums': function(opts){
        function AnimateNums(ele){
            this.opts = $.extend(true, {}, AnimateNums.DEFAULTS, opts);

            this.$ele = $(ele);
            this._init();
        }

        AnimateNums.DEFAULTS = {
            html: '<i><div>0<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>8<br>9<br></div></i>'
        };

        /**
         * 初始化入口
         * @private
         */
        AnimateNums.prototype._init = function(){
            var $ele = this.$ele;
            var amount = $ele.attr('data-num').replace(/\B(?=(?:\d{3})+(?!\d))/g, ',').split(',');
            var amountStr = amount.map(function(val){
                return '<span class="amount-span" data-animatenum="'+ val +'"></span>'
            }).join(',');
            if($ele.find('i').length != $ele.attr('data-num').length){
                $ele.html(amountStr);
            }else{
                var $span = $ele.children('span');
                for(var i = 0,len = $span.length; i < len; i++){
                    $span.eq(i).attr('data-animatenum', amount[i]);
                }
            }

            this.scrollNum($ele.children('.amount-span'), $ele.attr('data-height'));
        };

        AnimateNums.prototype.scrollNum = function(ele, lineHeight){
            var opts = this.opts;

            ele.each(function(){
                var $me = $(this);
                var num = $me.attr('data-animatenum');

                $me.find('div').stop();

                var it = $me.children('i');     //i
                var len = String(num).length;

                for(var i = 0; i < len; i++){
                    if(it.length <= i){
                        $me.append(opts['html']);
                    }

                    var number = String(num).charAt(i);
                    var y;
                    try{
                        y = - parseInt(number) * lineHeight;
                    }catch (err){
                        console.log('"data-height"只能是数字');
                    }

                    $me.children('i').eq(i).children('div').animate({ top: y + 'px'}, 1000);
                }

            });
        };


        return this.each(function(){
            new AnimateNums(this);
        })
    }
})

// 这是html
<div class='overallSituationOfTheProblem__core--num animatenum' data-height="79" :data-num="toThousands(overallSituationOfTheProblemLeft.rows[0].count)"></div>


this.$nextTick(() => {
  // 这是调用的js
  $('.animatenum').animateNums();
})

// 这是基础scss
@mixin animatenum ($w, $h, $f) {
&.animatenum {
    font-family: 'LESLIE-Regular';
    display:inline-block;
    height:$h;
    line-height:$h; 
    font-size: $f;
    color:#FFF;
}

    &.animatenum  span.amount-span{
        display:inline-block;
        vertical-align:middle;
    }

    &.animatenum  i{
        font-style:normal;
        width: $w;
        height: $h;
        float:left;
        position:relative;
        overflow:hidden;
    }

    &.animatenum  div{
        line-height:$h;
        position:absolute;
    }
}


<style lang="scss">
@import "~@/scss/functions.scss";
.overallSituationOfTheProblem__core--num {
  @include animatenum(40px, 79px, 79px);
}
</style>

)
code(Var)
return


::css.scroll::
::css.scrollbar::
Var =
(
.dropUl::-webkit-scrollbar {
    width: 5px;     
    height: 0;
}
.dropUl::-webkit-scrollbar-thumb {
    border-radius: 2px;
    -webkit-box-shadow: inset 0 0 2px rgba(0,0,0,0.2);
    background: #d1d4db;
}
.dropUl::-webkit-scrollbar-track {
    -webkit-box-shadow: none;
    border-radius: 0px;
    background: #EDEDED;
}
)
code(Var)
return

::css.table::
Var =
(
<table class='dgtable' cellspacing = '0'>
  <thead class='dgtable__thead'>
    <tr>
      <th></th>
      <th>诉求标题</th>
      <th>处理部门</th>
      <th>镇街</th>
      <th>事项</th>
      <th>事项二级分类</th>
      <th>红黄牌</th>
      <th>满意度</th>
      <th>诉求类型</th>
      <th>受理时间</th>
    </tr>
  </thead>
  <tbody class='dgtable__tbody'>
      <tr v-for='(item, index) in items' :key='index'>
          <td>{{ index }}</td>
          <td>从事城市生活垃圾经营性</td>
          <td>市环保局</td>
          <td>虎门</td>
          <td>环境保护类</td>
          <td>大气污染 </td>
          <td><div :class="['is-red', 'is-yellow', 'is-warning'][index `% 3]"></div></td>
          <td>非常满意</td>
          <td>投诉</td>
          <td>2018-08-12 14:12:32</td>
      </tr>        
  </tbody>
</table>

.dgtable {
    margin-top: 17px;
    text-align: center;
    width: 100`%;
    border: solid 1px #e4e4e4;
 }

     .dgtable__thead {
        background-image: linear-gradient(0deg, rgba(212, 212, 212, 0.03) 0`%, rgba(238, 238, 238, 0.03) 100`%), linear-gradient(#ededed, #ededed);
        background-blend-mode: normal, normal;
        font-size: 18px;

        tr {
          height: 58px;
        }

        th {
          font-weight: normal;
        }

        th + th {
          border-left: 1px solid #d0d0d0;
        }
     }

     .dgtable__tbody {
        font-size: 16px;

        td {
          border-top: solid 1px #d1d1d1;
        }

        tr {
          height: 40px;
        }

        tr:nth-child(even) {
            background-color: #f1f1f1;
        }

        tr:nth-child(odd) {
            background-color: #ffffff;
        }

        td + td {
          border-left: 1px solid #d0d0d0;
        }
     }
)
code(Var)
return

::oh::
Var =
(
overflow: hidden;
)
code(Var)
return



::border::
Var =
(
border:1px solid #ccc;
)
code(Var)
return

::@import::
::@i::
Var =
(
@import "~@/scss/functions.scss";
)
code(Var)
return

::css.i::
::css.yuan2::
::css.num::
::css.biaoji::
::css.badge::
::css.unread::
::css.kuai::
Var =
(
.unread {
    position: absolute;
    top: 0;
    width: 20px;
    height: 20px;
    line-height: 16px;
    background-color: red;
    border-radius: 50`%;
    text-align: center;
    font-size: 15px;
    font-weight: bold;
    font-style: normal;
}
)
code(Var)
return

::cup::
Var =
(
cursor: pointer;
)
code(Var)
return

::css.fugaiwu::
Var =
(
position: absolute;
top: 0; left: 0;
width: 180px;
height: 60px;
cursor: pointer;
opacity: 0;
z-index: 9999;
)
code(Var)
return

::css.shu::
::css.zhu::
::css.link::
::css.line::
::css.xian::
Var =
(
content: '';
position: absolute;
left: 50`%;
top: 50`%;
transform: translate(-50`%, -50`%);
width: 1px;
height: 60px;
background-color: rgba(255,255,255, .38);
)
code(Var)
return

::flex::

	; try 异常处理
    Menu, A, Add, justify-content: flex-start , flexHandler
    Menu, A, Add, justify-content: center , flexHandler
    Menu, A, Add, justify-content: flex-end, flexHandler
    Menu, A, Add, justify-content: space-around, flexHandler
	Menu, A, Add, justify-content: space-between, flexHandler

    Menu, B, Add, flex-start, flexHandler
    Menu, B, Add, flex-end, flexHandler
    Menu, B, Add, center, flexHandler
    Menu, B, Add, stretch, flexHandler
    Menu, B, Add, baseline, flexHandler
    
    Menu, C, Add, row(默认)：从左到右, flexHandler
    Menu, C, Add, column：从上到下, flexHandler
	

    Menu, flexMenu, Add, justify-content, :A
    Menu, flexMenu, Add, align-items, :B
    Menu, flexMenu, Add, flex-direction, :C
    Menu, flexMenu, Add, flex-wrap, flexHandler

	Menu, flexMenu, Show
	Menu, flexMenu, DeleteAll
return


flexHandler:
; MsgBox You selected  from the menu .
v := A_ThisMenuItem
Var :=


if (v == "justify-content: flex-start") {
Var = 
(
justify-content: flex-start;
)
}

if (v == "justify-content: center") {
Var = 
(
justify-content: center;
)
}

if (v == "justify-content: flex-end") {
Var = 
(
justify-content: flex-end;
)
}

if (v == "justify-content: space-around") {
Var = 
(
justify-content: space-around;
)
}

if (v == "justify-content: space-between") {
Var = 
(
justify-content: space-between;
)
}

if (v == "flex-start") {
Var = 
(
align-items: flex-start;
)
}

if (v == "flex-end") {
Var = 
(
align-items: flex-end;
)
}

if (v == "center") {
Var = 
(
align-items: center;
)
}

if (v == "stretch") {
Var = 
(
align-items: stretch;
)
}

if (v == "baseline") {
Var = 
(
align-items: baseline;
)
}

if (v == "row(默认)：从左到右") {
Var = 
(
flex-direction: row;
)
}

if (v == "column：从上到下") {
Var = 
(
flex-direction: column;
)
}

if (v == "flex-wrap") {
Var = 
(
flex-wrap: wrap;
)
}


code(Var)
Menu, flexMenu, Show
return

::css.pl::
::css.placeholder::
::placeholder::
Var =
(
::-webkit-input-placeholder {color: #c1c1c1; }
:-moz-placeholder {color: #c1c1c1; }
::-moz-placeholder {color: #c1c1c1; }
:-ms-input-placeholder {color: #c1c1c1; }
)
code(Var)
return

::css.search::
Var =
(
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <title>Document</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- jquery -->
    <script src='https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js'></script>
    <style>
      ::-webkit-input-placeholder { 
        color: #41508a; 
      } 
      :-moz-placeholder { 
        color: #41508a; 
      } 
      ::-moz-placeholder { 
        color: #41508a; 
      } 
      :-ms-input-placeholder { 
        color: #41508a; 
      } 

      .search {
          width: 224px;
          height: 41px;
          background-color: #040e35;
          border: solid 1px #0867ab;
          display: inline-block;
          position: relative;
      }
      
        .search__input {
           position: absolute; 
           width: 100`%;
           height: 100`%;
           background: transparent;
           border: 0;
           padding-left: 10px;
        }

        .search__icon {
            position: absolute;
            top: 50`%;
            transform: translateY(-50`%);
            right: 9px;
            width: 27px;
            height: 27px;
            background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABsAAAAbCAYAAACN1PRVAAACv0lEQVRIia3WP4gdVRTH8c97u1FXybguacIU+UNwFQQlkUQ0hYUQEkiTaKe2ShC0iXGwEZRMGi0UtLEQK/+grUVQWBIhXVizYDak2WUnFv4LE9lks6yxOHfg+XzzdveZHzzmzz0z37n3nvM7r7P1rSVDNIZp7MYUxrGMJczhel3mw57/lzotsAkcxXPIWp69g0v4ti7zy6PCHsNrmMSamMEsfsOtdH8P9mJbeuYHfFaX+e3NwA7iBLqYwRf4E1uwAw/hb1zBX3gaL6b78zhTl/nNNli3b0YnxPJ8hE/QwSv4FKewE7/gRor7EW8m+DRez4qqsx5sQixdFx+nlxzA+3gW36fxr3Gt9wV1md/AGSziCRxaD3ZU7MVMD+iNNHYan2Ol7SV1mS/jQ7HHx7OimmiDjYmsW8OXIsVfFcnwjsi4dVWX+VL62K3Y3wabFuk9hz/wPO7DB1jYCKhH59PxQBtsdzr/SRTtM/jOBmfUp3mx3LvaYFPp/FeRbbfx1QggdZmv4XdRCgNh4+l8JQWdFfs1qloLuyu8Dh4UBXu+LXiDmsRqG6yxkD2iOK8NCtyIsqKaSrCqDTYn3GCvsKD/oyfTcWBydXE9AbcJrxtJWVGN4XC6HLgVjYN8k44viaIcRcewHRfrMh9Ynw3ssmgTkziJ+zdDyYrqII6ny3uzojqSFdWW/rjeFnMP3haOsii8bmgbF1Z3LP363f6KaDlNtv+nn00IA35ceOWMWP/5dN1oSiTDYbF0bbqK0w1wUKfuiDbxAh5I91aEMzSFP9kTfzF95CPrAdv+gzSz3I+nhI01FrQq6ugSztVlvpgV1RG8PGSGP+O98SEBN8UyzgyJaXQ2fdTDLeOPYl+3ZXBTqst8VXTrq0PCtt8VWAIui67eBly4a7A+YP//yAuYHbZnIwOzonoX+0RZLGC2LvM7/wCUZ8MA/OFE7QAAAABJRU5ErkJggg==') center / 100`% 100`% no-repeat;
            display: inline-block;
        }
    </style>
    <body>
       <label class="search">
          <input class="search__input" type="text" placeholder="请输入企业名称检索...">
          <i class="search__icon"></i>
       </label>
    </body>
    <script>
      
    </script>
</html>
)
code(Var)
return

::css.yuandian::
::css.radio::
::css.yuan::
Var =
(
position: relative;
padding: rem(10);

&::before {
    content: '';
    @include ycenter;
    border-radius: 50`%;
    width: rem(10);
    height: rem(10);
}
)
code(Var)
return

::wh::
Var =
(
width: px;
height: px;
)
code(Var)
return

::@font::
::css.font::
::fontfamily::
::font.family::
Var =
(
@font-face{
    font-family: 'LESLIE-Regular';
    src : url('../fonts/LESLIEB.TTF');
}
)
code(Var)
return

::opa::
    Send, opacity
return

::reset.css::
::normalize.css::
::normalize::
Var =
(
/*! normalize.css v8.0.0 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-webkit-text-size-adjust:100`%}body{margin:0}h1{font-size:2em;margin:.67em 0}hr{box-sizing:content-box;height:0;overflow:visible}pre{font-family:monospace,monospace;font-size:1em}a{background-color:transparent}abbr[title]{border-bottom:none;text-decoration:underline;text-decoration:underline dotted}b,strong{font-weight:bolder}code,kbd,samp{font-family:monospace,monospace;font-size:1em}small{font-size:80`%}sub,sup{font-size:75`%;line-height:0;position:relative;vertical-align:baseline}sub{bottom:-.25em}sup{top:-.5em}img{border-style:none}button,input,optgroup,select,textarea{font-family:inherit;font-size:100`%;line-height:1.15;margin:0}button,input{overflow:visible}button,select{text-transform:none}[type=button],[type=reset],[type=submit],button{-webkit-appearance:button}[type=button]::-moz-focus-inner,[type=reset]::-moz-focus-inner,[type=submit]::-moz-focus-inner,button::-moz-focus-inner{border-style:none;padding:0}[type=button]:-moz-focusring,[type=reset]:-moz-focusring,[type=submit]:-moz-focusring,button:-moz-focusring{outline:1px dotted ButtonText}fieldset{padding:.35em .75em .625em}legend{box-sizing:border-box;color:inherit;display:table;max-width:100`%;padding:0;white-space:normal}progress{vertical-align:baseline}textarea{overflow:auto}[type=checkbox],[type=radio]{box-sizing:border-box;padding:0}[type=number]::-webkit-inner-spin-button,[type=number]::-webkit-outer-spin-button{height:auto}[type=search]{-webkit-appearance:textfield;outline-offset:-2px}[type=search]::-webkit-search-decoration{-webkit-appearance:none}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}details{display:block}summary{display:list-item}template{display:none}[hidden]{display:none}
)
code(Var)
return

::link.icon::
::link-icon::
::icon::
::ico::
Var =
(
<link rel="icon" href="images/favicon.png" type="image/x-icon">
)
code(Var)
return

::@shanlan::
::@shange::
::@lanshan::
::@wangge::
::shanlan::
::shange::
::lanshan::
::wangge::
Var =
(
xs —— 超小屏幕 手机 (<768px) 
sm —— 小屏幕 平板 (≥768px)
md —— 中等屏幕 桌面显示器 (≥992px)
lg —— 大屏幕 大桌面显示器 (≥1200px)
)
code(Var)
return

::fuckrem::
::fuck-rem::
::myrem::
::my-rem::
::rem.css::
::rem.scss::
Var = 
(
/*
 (function flexible (window, document) {
   var docEl = document.documentElement
   // set 1rem = viewWidth / 10
   function setRemUnit () {
     var rem = docEl.clientWidth / 10
     docEl.style.fontSize = rem + 'px'
   }
   setRemUnit()
   // reset rem unit on page resize
   window.addEventListener('resize', setRemUnit)
   window.addEventListener('pageshow', function (e) {
     if (e.persisted) {
       setRemUnit()
     }
   })
 }(window, document))
*/

// rem 单位换算：定为 75px 只是方便运算，750px-75px、640-64px、1080px-108px，如此类推
$vw_fontsize: 75; // iPhone 6尺寸的根元素大小基准值
@function rem($px) {
    @return ($px / $vw_fontsize ) * 1rem;
}
// 根元素大小使用 vw 单位
$vw_design: 750;
html {
    font-size: ($vw_fontsize / ($vw_design / 2)) * 100vw;
    // 同时，通过Media Queries 限制根元素最大最小值
    @media screen and (max-width: 320px) {
        font-size: 64px;
    }
    @media screen and (min-width: 540px) {
        font-size: 108px;
    }
}
// body 也增加最大最小宽度限制，避免默认100`%宽度的 block 元素跟随 body 而过大过小
body {
    max-width: 540px;
    min-width: 320px;
}
)
code(Var)
return

::full-bg::
::fullbg::
::full.bg::
Var = 
(
html { 
    background: url('images/bg.jpg') no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
)
code(Var)
return

::toum::
::touming::
Var = 
(
.transparent {
    filter: alpha(opacity=50); /* internet explorer */
    -khtml-opacity: 0.5;      /* khtml, old safari */
    -moz-opacity: 0.5;       /* mozilla, netscape */
    opacity: 0.5;           /* fx, safari, opera */
}
)
code(Var)
return

::loading...::
:?:...::
Var = 
(
.loading:after {
    overflow: hidden;
    display: inline-block;
    vertical-align: bottom;
    animation: ellipsis 2s infinite;
    content: "\2026"; /* ascii code for the ellipsis character */
}
@keyframes ellipsis {    from {
        width: 2px;
    }
    to {
        width: 15px;
    }
}
)
code(Var)
return

:?:.clear::
Var = 
(
.clear::after {
    content: '';
    display: table;
    clear: both;
}
)
code(Var)
return

::bbr::
    SendRaw, border-radius: 4px;
return

::cu::
    Send, cursor: pointer;
return

::white::
    Send, white-space: nowrap;
return

::scrollbar::
Var = 
(
/**
 * 滚动条修饰
 */
::-webkit-scrollbar {
  width: 5px;
  height: 5px;
}

::-webkit-scrollbar-track,
::-webkit-scrollbar-corner {
  background-color: #e2e2e2;
}

::-webkit-scrollbar-thumb {
  border-radius: 0;
  background-color: rgba(0, 0, 0, 0.3);
}

::-webkit-scrollbar-track,
::-webkit-scrollbar-corner {
  background-color: #e2e2e2;
}
)
code(Var)
return


::bg-cover::
    SendRaw, background: url(img/tiger.jpg) 0 / cover;
return

::@bg::
Var =
(
width: 44px;
height: 44px;
background: url('https://iph.href.lu/100x100') center / 100`% 100`% no-repeat;
display: inline-block;
)
code(Var)
return

::size::
    SendInput,
(
width: px`;
height: px`;
)
return

::fs::
    SendInput, font-size: 16px`;{left 3}+{left 2}
Return

::bg::
Var =
(
background: transparent url('https://iph.href.lu/100x100') center center / 100`% 100`%  no-repeat content-box; /* 100`% 100`% 可以换成 background-size: cover */
)
SendInput, % Var
Return

::bgc::
    SendInput, background-color: {#}ffffff`;{left}+{left 6}
Return

::bgi::
    SendInput, background: url('') no-repeat`;{left 13}
Return

::margin::
    SendRaw, margin: 0 auto;
return

::arrow.updown::
::arrowupdown::
Var =
(
&::before, &::after {
  content: '';
  display: inline-block;
  position: absolute;
  right: 15px;
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  width: 0;
  height: 0;
}
&:active { background-color:#EBEBEB; }
&::after {top: 12px; border-bottom: 8px solid #333; }
&::before {bottom: 12px; border-top: 8px solid #333; }
&.is-up::after {border-bottom: 8px solid #C4B484; }
&.is-down::before {border-top: 8px solid #C4B484; }
)
code(Var)
return

::arrow::
Var = 
(
.triangle {
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-bottom: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-top::
::arrow-up::
::arrow.top::
::arrow.up::
::arrowtop::
::arrowup::
Var = 
(
.triangle {
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-bottom: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-right::
::arrow.right::
::arrowright::
Var = 
(
.triangle {
    border-top: 50px solid transparent;
    border-bottom: 50px solid transparent;
    border-left: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-bottom::
::arrow.bottom::
::arrowbottom::
::arrow-down::
::arrow.down::
::arrowdown::
Var = 
(
.triangle {
    border-left: 50px solid transparent;
    border-right: 50px solid transparent;
    border-top: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::arrow-left::
::arrow.left::
::arrowleft::
Var = 
(
.triangle {
    border-top: 50px solid transparent;
    border-bottom: 50px solid transparent;
    border-right: 50px solid orange;
    width: 0;
    height: 0;
}
)
code(Var)
return

::curp::
Var =
(
cursor: pointer;
)
code(Var)
return

::ell::
::shengluehao::
Var =
(
overflow: hidden;
text-overflow: ellipsis;
white-space: nowrap;
)
code(Var)
Return

::lh::
    SendInput, 
(
height: px;
line-height: px;^!{up}^{left}
)
Return

::ta::
    SendInput, text-align: center`;
Return

::tc::
    SendInput, text-align: center`;
Return

::tl::
    SendInput, text-align: left`;
Return

::tr::
    SendInput, text-align: right`;
Return

::fl::
    SendInput, float: left`;
Return

::fr::
    SendInput, float: right`;
Return

::bt::
    SendInput, border-top: 1px solid {#}ccc`;
Return

::br::
    SendInput, border-right: 1px solid {#}ccc`;
Return

::bb::
    SendInput, border-bottom: 1px solid {#}ccc`;
Return

::bl::
    SendInput, border-left: 1px solid {#}ccc`;
Return

::mb::
	SendInput, margin-bottom: px`;{left 3}
Return

::mt::
	SendInput, margin-top: px`;{left 3}
Return

::ml::
	SendInput, margin-left: px`;{left 3}
Return

::mr::
	SendInput, margin-right: px`;{left 3}
Return

::pb::
	SendInput, padding-bottom: px`;{left 3}
Return

::pt::
	SendInput, padding-top: px`;{left 3}
Return

::pl::
	SendInput, padding-left: px`;{left 3}
Return

::prr::
	SendInput, padding-right: px`;{left 3}
Return

::db::
    SendRaw, display: block;
return

::posa::
Var = 
(
position: absolute;
top: 0; right: 0; bottom: 0; left: 0;
)
code(Var)
Return

::posr::
Var =
(
position: relative;
)
code(Var)
Return

::posf::
    SendInput, 
(
position: fixed`;
left: 0`;
right: 0`;
top: 0`;
z-index: 199307100337`;
)
Return

::box::
    SendInput,box-sizing: border-box`;
Return

::flexw::
Var = 
(
display: flex;
flex-wrap: wrap;
)
code(Var)
return

::flexc::
    SendInput,
(
display: flex`;
justify-content: center`;
)
Return

::flexa::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
)
Return

::flexs::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
)
Return

::flexe::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
)
Return

::flexcc::
    SendInput, 
(
display: flex`;
justify-content: center`;
align-items: center`;
)
Return

::flexcs::
    SendInput, 
(
display: flex`;
justify-content: center`;
align-items: flex-start`;
)
Return

::flexac::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
align-items: center`;
)
Return

::flexae::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
align-items: flex-end`;
)
Return

::flexce::
    SendInput, 
(
display: flex`;
justify-content: center`;
align-items: flex-end`;
)
Return

::flexse::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
align-items: flex-end`;
)
Return

::flexee::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
align-items: flex-end`;
)
Return

::flexb::
Var = 
(
display: flex;
justify-content: space-between;
align-items: center;
)
code(Var)
return

::flexbs::
Var = 
(
display: flex;
justify-content: space-between;
align-items: flex-start;
)
code(Var)
return

::flexbc::
Var = 
(
display: flex;
justify-content: space-between;
align-items: center;
)
code(Var)
return

::flexbe::
Var = 
(
display: flex;
justify-content: space-between;
align-items: flex-end;
)
code(Var)
return

::flexss::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
align-items: flex-start`;
)
Return

::flexes::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
align-items: flex-start`;
)
Return

::flexas::
    SendInput, 
(
display: flex`;
justify-content: space-around`;
align-items: flex-start`;
)
Return

::flexsc::
    SendInput, 
(
display: flex`;
justify-content: flex-start`;
align-items: center`;
)
Return

::flexee::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
align-items: flex-end`;
)
Return

::flexec::
    SendInput, 
(
display: flex`;
justify-content: flex-end`;
align-items: center`;
)
Return


::center::
Var =
(
position: absolute;
left: 50`%;
top: 50`%;
transform: translate(-50`%, -50`%);
)
code(Var)
Return

::xcenter::
Var =
(
position: absolute;
left: 50`%;
transform: translateX(-50`%);
)
code(Var)
Return

::ycenter::
Var =
(
position: absolute;
top: 50`%;
transform: translateY(-50`%);
)
code(Var)
Return

::@media::
Var = 
(
/* 移动设备断点，视图宽度 <= 768px */
@media (max-width: 768px) {
	body {
		background: red
	}
}

/* 移动设备断点，视图宽度 >= 769px */
@media (min-width: 769px and max-width: 1024) {

}

/* 移动设备断点，视图宽度 >= 1024px */
@media (min-width: 1024px and max-width: 1216px) {

}

/* 移动设备断点，视图宽度 >= 1216 */
@media (min-width: 1216px) {

}
)
code(Var)
Return

::`!imp::
    SendRaw, !important
return

::tran::
    SendRaw, transparent
return

::trans::
Var =
(
transition: .3s all ease;
)
code(Var)
return

::transf::
::tranf::
Var =
(
transition: .3s all;
transform: translateY(0); 
transform: rotate(180deg);
)
code(Var)
return

::link-media::
    SendInput, <link rel="stylesheet" media="(max-width: 640px)" href="app640.css">
Return


::1px::
::1px-border::
::border-1px::
Var = 
(
/* 1 物理像素线（也就是普通屏幕下 1px ，高清屏幕下 0.5px 的情况）采用 transform 属性 scale 实现 */
.mod_grid {
    position: relative;
    &::after {
        /* 实现1物理像素的下边框线 */
        content: '';
        position: absolute;
        z-index: 1;
        pointer-events: none;
        background-color: #ddd;
        height: 1px;
        left: 0;
        right: 0;
        top: 0;
        @media only screen and (-webkit-min-device-pixel-ratio: 2) {
            -webkit-transform: scaleY(0.5);
            -webkit-transform-origin: 50`% 0`%;
        }
    }
}
)
code(Var)
Return

::box-shadow::
::css.shadow::
::shadow::
Var =
(
// box-shadow: 0 4px 4px 0 hsla(0, 0`%, 0`%, 0.1)
// box-shadow: 0 0 0 1px hsla(0, 0`%, 100`%, .3) inset,0 .5em 1em rgba(0, 0, 0, 0.6);
// box-shadow: rgba(255, 255, 255, 1) 0px 0px 54px;
box-shadow: 0 2px 12px 0 rgba(0,0,0,.1);
)
code(Var)
return


::chrome-yellow::
::chrome.yellow::
::input.yellow::
Var = 
(
input:-webkit-autofill {
  -webkit-box-shadow: 0 0 0px 1000px white inset !important;
}
)
code(Var)
return

::px2rem::
Var =
(
$root_fontsize: 192; // 因为效果图是1920 / 10
// $base-font-size: 75px; //design iphone6: 375px * 2 / 10 = 75px; --design
// $base-font-size: 32px; //design iphone3gs: 320px / 10 = 32px
// $base-font-size: 64px; //design iphone4/5: 320px * 2 / 10 = 64px
// $base-font-size: 124.2px; //design iphone6: 414px * 3 / 10 = 124.2px;
@function rem($px) {
    @return ($px / $root_fontsize ) * 1rem;
}
)
code(Var)
return

::maopaojindutiao::
::qishuijindutiao::
Var =
(
background-color: #F7A806;
background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAG4AAABACAMAAADMI7KPAAACZFBMVEX////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////xG13JAAAAzHRSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1OT1BRUlNUVVZXWFlaW1xdXl9gYWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXp7fH1+f4CBgoOEhYaHiImKi4yNjo+QkZKTlJWWl5iZmpucnZ6foKGio6SlpqeoqaqrrK2ur7CxsrO0tba3uLm6u7y9vr/AwcLDxMXGx8jJytLua8SRAAASK0lEQVR42nXWWZMb12H28edsvQJoAINl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");
box-shadow: inset 0 -2px 2px rgba(0, 0, 0, 0.5), inset 0 2px 2px rgba(255, 255, 255, 0.8);
animation: sparkle 1500ms linear infinite;

@keyframes sparkle {
    0`% {
        background-position: 0 0;
    }

    100`% {
        background-position: 0 -64px;
    }
}
)
code(Var)
return

::falangjindutiao::
::jindutiao::
Var =
(
background-color: #219FD6;
box-shadow: 0 0 6px 2px rgba(255, 255, 255, 0.3) inset;
background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0.35) 25`%, rgba(255, 255, 255, 0) 25`%, rgba(255, 255, 255, 0) 50`%, rgba(255, 255, 255, 0.35) 50`%, rgba(255, 255, 255, 0.35) 75`%, rgba(255, 255, 255, 0) 75`%, rgba(255, 255, 255, 0));
background-repeat: repeat-x;
background-size: 20px 20px;
animation: candystripe 1s linear infinite;

@keyframes candystripe {
    100`% {
        background-position: 20px 0;
    }
}
)
code(Var)
return

::btn::
Var =
(
.btn {
    padding: 1em;
    letter-spacing: .1em;
    text-transform: uppercase;
    border: solid;
    font: .7em nunito;

    cursor:pointer;
    color: white;
    background: #fa0;
    border: solid #fa0;
}
)
code(Var)
return

::font::
Var =
(
font: 300 16px/1.8 -apple-system,PingFang SC,Verdana,Helvetica Neue,Microsoft Yahei,Hiragino Sans GB,Microsoft Sans Serif,WenQuanYi Micro Hei,sans-serif;
font-size: 62.5`%;
background: #fafafa;
text-rendering: optimizelegibility;
-webkit-text-size-adjust: 100`%;
-webkit-font-smoothing: antialiased;
)
code(Var)
return

::ell2::
Var =
(
overflow: hidden;
text-overflow: ellipsis;
display: -webkit-box;
-webkit-line-clamp: 2;

/*! autoprefixer: off */
-webkit-box-orient: vertical;
)
code(Var)
return


::`:`:b::
::`:b::
::`:`:before::
::`:before::
::css.before::
::&`:`:before::
Var =
(
position: relative;
padding-left: rem(20);

&::before {
  @include ycenter;
  content: '';
  left: 0;
  width: 5px;
  height: 20px;
  background-color: #1a81a4;
}
)
code(Var)
return

::`:`:a::
::`:a::
::`:`:after::
::`:after::
::css.after::
::&`:`:after::
Var =
(
position: relative;
padding-left: rem(20);

&::after {
  @include ycenter;
  content: '';
  left: 0;
  width: 5px;
  height: 20px;
  background-color: #1a81a4;
}
)
code(Var)
return

::text-shadow::
Var =
(
text-shadow: #25B3DC 0px 0px 10px, #25B3DC 0px 0px 20px, #25b3dc 0px 0px 30px, #25b3dc 0px 0px 40px, #25b3dc 0px 0px 70px, #25b3dc 0px 0px 80px, #25b3dc 0px 0px 100px;
)
code(Var)
return




::@animate::
::@key::
Var =
(
@keyframes fuckyou {
    0`% {
    
    }
    
    100`% {
    
    }
}
)
code(Var)
return


::ib::
Var =
(
display: inline-block;
)
code(Var)
return

::redbox::
::cssbox::
::css.box::
Var =
(
.hello {
    background: red;
    width: 200px;
    height: 200px;
    position: absolute;
    left: 50`%;
    top: 50`%;
    transform: translate(-50`%, -50`%);
}

$('#app').click(e => {
    const x = e.clientX + 'px'
    const y = e.clientY + 'px'
    const div = $(`<div style="position: absolute; left: ${x}; top: ${y}; width: 10px; height: 10px; background:red"></div>`)
    $('body').append(div)
    layer.open({
        offset: [y, x],
        area: ['auto', '305px'],
        title: `新建便签 —— ${moment(new Date()).format('YYYY/MM/DD HH:mm:ss')}`,
        content: '<textarea class="note" placeholder="记笔记..."></textarea>',
    })
})
)
code(Var)
return

::icss::
::insertcss::
::addcss::
::addstyle::
::insertstyle::
Var =
(
// 更推荐这种比较舒服的书写方式
var injectCss = function (css) {
    var style = document.createElement('style')
    style.type = 'text/css'
    if (style.styleSheet) {
        style.styleSheet.cssText = css
    } else {
        style.appendChild(document.createTextNode(css))
    }
    document.getElementsByTagName('head')[0].appendChild(style)
}
injectCss(`
#app {
  background: blue;
}

/* 移动设备断点，视图宽度 <= 768px */
@media (max-width: 768px) {
	body {
		background: red
	}
}

/* 移动设备断点，视图宽度 >= 769px */
@media (min-width: 769px and max-width: 1024) {

}

/* 移动设备断点，视图宽度 >= 1024px */
@media (min-width: 1024px and max-width: 1216px) {

}

/* 移动设备断点，视图宽度 >= 1216 */
@media (min-width: 1216px) {

}
`)
)
code(Var)
return

::css.debug::
::cssdebug::
::cssd::
::css.debugger::
Var =
(
javascript:/* debug.css | MIT License | zaydek.github.com/debug.css */ if (!("is_debugging" in window)) { is_debugging = false; var debug_el = document.createElement("style"); debug_el.append(document.createTextNode(``*:not(path):not(g) { color: hsla(210, 100`%, 100`%, 0.9) !important; background: hsla(210, 100`%,  50`%, 0.5) !important; outline: solid 0.25rem hsla(210, 100`%, 100`%, 0.5) !important; box-shadow: none !important; filter: none !important; }``)); } function enable_debugger() { if (!is_debugging) { document.head.appendChild(debug_el); is_debugging = true; } } function disable_debugger() { if (is_debugging) { document.head.removeChild(debug_el); is_debugging = false; } } !is_debugging ? enable_debugger() : disable_debugger();
)
code(Var)
return

::function.scss::
::functions.scss::
::function.css::
::functions.css::
::@scss::
Var =
(
@mixin ycenter {
    position: absolute;
    top: 50`%;
    transform: translateY(-50`%);
}

@mixin xcenter {
    position: absolute;
    left: 50`%;
    transform: translateX(-50`%);
}

@mixin ell {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

@mixin center {
    position: absolute;
    left: 50`%;
    top: 50`%;
    transform: translate(-50`%, -50`%);
}


@mixin flex ($x: false, $y: false, $direction: false) {
    display: flex;

    @if $x {
        @if $x==s or $x==start {
            justify-content: flex-start;
        }

        @else if $x==c or $x==center {
            justify-content: center;
        }

        @else if $x==e or $x==end {
            justify-content: flex-end;
        }

        @else if $x==a or $x==around {
            justify-content: space-around;
        }

        @else if $x==b or $x==between {
            justify-content: space-between;
        }

        @else {
            justify-content: $x;
        }
    }

    @if $y {
        @if $y==s or $y==start {
            align-items: flex-start;
        }

        @else if $y==c or $y==center {
            align-items: center;
        }

        @else if $y==e or $y==end {
            align-items: flex-end;
        }

        @else if $y==stretch or $y==full or $y==f {
            align-items: stretch;
        }

        @else if $y==baseline or $y==base or $y==b or $y==line or $y==l {
            align-items: baseline;
        }

        @else {
            align-items: $y;
        }
    }

    @if $direction {
        @if $direction==c or $direction==col {
            flex-direction: column;
        }

        @else {
            flex-direction: $direction;
        }
    }
}

@mixin bg ($width, $height, $url) {
    width: $width;
    height: $height;
    background: transparent url($url) center / $width $height no-repeat;
    display: inline-block;
}

@mixin fullbg ($width, $height, $url) {
    width: $width;
    height: $height;
    background: url($url) center / 100`% no-repeat content-box;
}
)
code(Var)
return

::@imp::
Var =
(
<style lang="scss" scoped>
@import '~@/scss/functions.scss';

</style>
)
code(Var)
return

::utils.scss::
::utils.css::
Var =
(
@import './g.scss';
@import './transition.scss';

*,
::before,
::after {
  box-sizing: border-box;
}

html,
body {
  margin: 0;
  padding: 0;

  background: #F0F2F5;
  color: #ffffff;

  font-size: 16px;
  font-family: Microsoft Yahei;
}

ul {
  margin: 0;
  padding: 0;
}

li {
  list-style: none;
}

a {
  color: inherit;
  text-decoration: none;
}

@for $i from 1 through 5 {
   $em: if($i == 1, $i/2, $i - 1) + em;
   .u-m-#{$i}{margin: #{$em}}
   .u-mt-#{$i}{margin-top: #{$em}}
   .u-mr-#{$i}{margin-right: #{$em}}
   .u-mb-#{$i}{margin-bottom: #{$em}}
   .u-ml-#{$i}{margin-left: #{$em}}
   .u-pt#{i}{padding: #{$em}}
   .u-pt-#{$i}{padding-top: #{$em}}
   .u-pr-#{$i}{padding-right: #{$em}}
   .u-pb-#{$i}{padding-bottom: #{$em}}
   .u-pl-#{$i}{padding-left: #{$em}}
}

.u-container {
  width: 1200px;
  margin: auto;
  position: relative;
}

.u-container-full {
  width: 100`%;
  position: relative;
}

.u-flex-bs {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
}

.u-flex-bc {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.u-flex-ac {
  display: flex;
  justify-content: space-around;
  align-items: center;
}

.u-flex-sc {
  display: flex;
  justify-content: flex-start;
  align-items: center;
}

.u-flex-ss {
  display: flex;
  justify-content: flex-start;
  align-items: flex-start;
}

.u-flex-se {
  display: flex;
  justify-content: flex-start;
  align-items: flex-end;
}

.u-flex-cc {
  display: flex;
  justify-content: center;
  align-items: center;
}

.u-tr {
  text-align: right;
}

.u-tl {
  text-align: left;
}

.u-ycenter {
  position: absolute;
  top: 50`%;
  transform: translateY(-50`%);
}

.u-hide {
  display: none;
}

.u-inline {
  display: inline-block;
}

.u-lh-2 {
  line-height: 2.5;
}

.u-radius {
  border-radius: 9999px;
}

.u-posr {
  position: relative;
}

.u-cup {
  cursor: pointer;
}

.u-rotate {
  transform: rotate(180deg);
}
---
.g {
  display: flex;
  flex-flow: row wrap;
  align-content: flex-start;
}

.g-1,
.g-1-1,
.g-1-2,
.g-1-3,
.g-2-3,
.g-1-4,
.g-3-4,
.g-1-5,
.g-2-5,
.g-3-5,
.g-4-5,
.g-5-5,
.g-1-6,
.g-5-6,
.g-1-8,
.g-3-8,
.g-5-8,
.g-7-8,
.g-1-12,
.g-5-12,
.g-7-12,
.g-11-12,
.g-1-24,
.g-2-24,
.g-3-24,
.g-4-24,
.g-5-24,
.g-6-24,
.g-7-24,
.g-8-24,
.g-9-24,
.g-10-24,
.g-11-24,
.g-12-24,
.g-13-24,
.g-14-24,
.g-15-24,
.g-16-24,
.g-17-24,
.g-18-24,
.g-19-24,
.g-20-24,
.g-21-24,
.g-22-24,
.g-23-24,
.g-24-24 {
  display: inline-block;
  white-space: nowrap;


  &.g-c {
    align-self: center;
  }
}

.g-1-24 {
  width: 4.1667`%;
}

.g-1-12,
.g-2-24 {
  width: 8.3333`%;
}

.g-1-8,
.g-3-24 {
  width: 12.5000`%;
}

.g-1-6,
.g-4-24 {
  width: 16.6667`%;
}

.g-1-5 {
  width: 20`%;
}

.g-5-24 {
  width: 20.8333`%;
}

.g-1-4,
.g-6-24 {
  width: 25`%;
}

.g-7-24 {
  width: 29.1667`%;
}

.g-1-3,
.g-8-24 {
  width: 33.3333`%;
}

.g-3-8,
.g-9-24 {
  width: 37.5000`%;
}

.g-2-5 {
  width: 40`%;
}

.g-5-12,
.g-10-24 {
  width: 41.6667`%;
}

.g-11-24 {
  width: 45.8333`%;
}

.g-1-2,
.g-12-24 {
  width: 50`%;
}

.g-13-24 {
  width: 54.1667`%;
}

.g-7-12,
.g-14-24 {
  width: 58.3333`%;
}

.g-3-5 {
  width: 60`%;
}

.g-5-8,
.g-15-24 {
  width: 62.5000`%;
}

.g-2-3,
.g-16-24 {
  width: 66.6667`%;
}

.g-17-24 {
  width: 70.8333`%;
}

.g-3-4,
.g-18-24 {
  width: 75`%;
}

.g-19-24 {
  width: 79.1667`%;
}

.g-4-5 {
  width: 80`%;
}

.g-5-6,
.g-20-24 {
  width: 83.3333`%;
}

.g-7-8,
.g-21-24 {
  width: 87.5000`%;
}

.g-11-12,
.g-22-24 {
  width: 91.6667`%;
}

.g-23-24 {
  width: 95.8333`%;
}

.g-1,
.g-1-1,
.g-5-5,
.g-24-24 {
  width: 100`%;
}
---
.hover-underline-animation {
  display: inline-block;
  position: relative;

  // 补丁
  &.has-under-text::after {
    top: 98`%;
  }

  // active补丁
  &.is-active::after {
    content: '';
    position: absolute;
    width: 100`%;
    height: 2px;
    left: 0;
    transform: scaleX(1);
    background-color: #fff;
  }
}

.hover-underline-animation::after {
  content: '';
  position: absolute;
  width: 100`%;
  transform: scaleX(0);
  height: 2px;
  bottom: -5px;
  left: 0;
  background-color: #fff;
  transform-origin: bottom right;
  transition: transform 0.25s ease-out;
}

.hover-underline-animation:hover::after {
  transform: scaleX(1);
  transform-origin: bottom left;
}

.hover-shadow-box-animation {
  display: inline-block;
  vertical-align: middle;
  transform: perspective(1px) translateZ(0);
  box-shadow: 0 0 1px transparent;
  transition-duration: 0.3s;
  transition-property: box-shadow, transform;
}

.hover-shadow-box-animation:hover,
.hover-shadow-box-animation:focus,
.hover-shadow-box-animation:active {
  box-shadow: 1px 10px 10px -10px rgba(0, 0, 24, 0.5);
  transform: scale(1.2);
}

@keyframes Pulse {
  0`% {
    -webkit-transform: translateY(0px);
    transform: translateY(0px);
  }

  50`% {
    -webkit-transform: translateY(-30px);
    transform: translateY(-30px);
  }

  100`% {
    -webkit-transform: translateY(0px);
    transform: translateY(0px);
  }
}
)
txtit(Var)
return

::g.css::
::g.min.css::
Var =
(
.g {display: flex; flex-flow: row wrap; align-content: flex-start; } .g-1, .g-1-1, .g-1-2, .g-1-3, .g-2-3, .g-1-4, .g-3-4, .g-1-5, .g-2-5, .g-3-5, .g-4-5, .g-5-5, .g-1-6, .g-5-6, .g-1-8, .g-3-8, .g-5-8, .g-7-8, .g-1-12, .g-5-12, .g-7-12, .g-11-12, .g-1-24, .g-2-24, .g-3-24, .g-4-24, .g-5-24, .g-6-24, .g-7-24, .g-8-24, .g-9-24, .g-10-24, .g-11-24, .g-12-24, .g-13-24, .g-14-24, .g-15-24, .g-16-24, .g-17-24, .g-18-24, .g-19-24, .g-20-24, .g-21-24, .g-22-24, .g-23-24, .g-24-24 {display: inline-block; white-space: nowrap; &.g-c {align-self: center; } } .g-1-24 {width: 4.1667`%; } .g-1-12, .g-2-24 {width: 8.3333`%; } .g-1-8, .g-3-24 {width: 12.5000`%; } .g-1-6, .g-4-24 {width: 16.6667`%; } .g-1-5 {width: 20`%; } .g-5-24 {width: 20.8333`%; } .g-1-4, .g-6-24 {width: 25`%; } .g-7-24 {width: 29.1667`%; } .g-1-3, .g-8-24 {width: 33.3333`%; } .g-3-8, .g-9-24 {width: 37.5000`%; } .g-2-5 {width: 40`%; } .g-5-12, .g-10-24 {width: 41.6667`%; } .g-11-24 {width: 45.8333`%; } .g-1-2, .g-12-24 {width: 50`%; } .g-13-24 {width: 54.1667`%; } .g-7-12, .g-14-24 {width: 58.3333`%; } .g-3-5 {width: 60`%; } .g-5-8, .g-15-24 {width: 62.5000`%; } .g-2-3, .g-16-24 {width: 66.6667`%; } .g-17-24 {width: 70.8333`%; } .g-3-4, .g-18-24 {width: 75`%; } .g-19-24 {width: 79.1667`%; } .g-4-5 {width: 80`%; } .g-5-6, .g-20-24 {width: 83.3333`%; } .g-7-8, .g-21-24 {width: 87.5000`%; } .g-11-12, .g-22-24 {width: 91.6667`%; } .g-23-24 {width: 95.8333`%; } .g-1, .g-1-1, .g-5-5, .g-24-24 {width: 100`%; }
)
code(Var)
return

::`:root::
Var =
(
:root {
    --blue: #007bff;
    --indigo: #6610f2;
    --purple: #6f42c1;
    --pink: #e83e8c;
    --red: #dc3545;
    --orange: #fd7e14;
    --yellow: #ffc107;
    --green: #28a745;
    --teal: #20c997;
    --cyan: #17a2b8;
    --white: #fff;
    --gray: #6c757d;
    --gray-dark: #343a40;
    --primary: #007bff;
    --secondary: #6c757d;
    --success: #28a745;
    --info: #17a2b8;
    --warning: #ffc107;
    --danger: #dc3545;
    --light: #f8f9fa;
    --dark: #343a40;
    --breakpoint-xs: 0;
    --breakpoint-sm: 576px;
    --breakpoint-md: 768px;
    --breakpoint-lg: 992px;
    --breakpoint-xl: 1200px;
    --font-family-sans-serif: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
}

.accent {
    color: var(--primary);
}
)
code(Var)
return

::lf::
::l-field::
Var =
(
 <label class='l-field'>
    <label class='l-field__key'>仅显示</label>
    <div class='l-field__value'></div>                    
</label>
)
code(Var)
return

::rotate::
::rote::
Var =
(
transform: rotate(180deg)
)
code(Var)
return

::layout.css::
::layouts.css::
Var =
(
// https://jsrun.net/app/scss
/**
 * @for $i from 1 through 5 {
 *    $em: if($i == 1, $i/2, $i - 1) + em;
 *
 *    .u-m-#{$i}{margin: #{$em}}
 *    .u-mt-#{$i}{margin-top: #{$em}}
 *    .u-mr-#{$i}{margin-right: #{$em}}
 *    .u-mb-#{$i}{margin-bottom: #{$em}}
 *    .u-ml-#{$i}{margin-left: #{$em}}
 *
 *    .u-pt#{i}{padding: #{$em}}
 *    .u-pt-#{$i}{padding-top: #{$em}}
 *    .u-pr-#{$i}{padding-right: #{$em}}
 *    .u-pb-#{$i}{padding-bottom: #{$em}}
 *    .u-pl-#{$i}{padding-left: #{$em}}
 * }
*/
.u-m-1{margin:0.5em;}.u-mt-1{margin-top:0.5em;}.u-mr-1{margin-right:0.5em;}.u-mb-1{margin-bottom:0.5em;}.u-ml-1{margin-left:0.5em;}.u-pti{padding:0.5em;}.u-pt-1{padding-top:0.5em;}.u-pr-1{padding-right:0.5em;}.u-pb-1{padding-bottom:0.5em;}.u-pl-1{padding-left:0.5em;}.u-m-2{margin:1em;}.u-mt-2{margin-top:1em;}.u-mr-2{margin-right:1em;}.u-mb-2{margin-bottom:1em;}.u-ml-2{margin-left:1em;}.u-pti{padding:1em;}.u-pt-2{padding-top:1em;}.u-pr-2{padding-right:1em;}.u-pb-2{padding-bottom:1em;}.u-pl-2{padding-left:1em;}.u-m-3{margin:2em;}.u-mt-3{margin-top:2em;}.u-mr-3{margin-right:2em;}.u-mb-3{margin-bottom:2em;}.u-ml-3{margin-left:2em;}.u-pti{padding:2em;}.u-pt-3{padding-top:2em;}.u-pr-3{padding-right:2em;}.u-pb-3{padding-bottom:2em;}.u-pl-3{padding-left:2em;}.u-m-4{margin:3em;}.u-mt-4{margin-top:3em;}.u-mr-4{margin-right:3em;}.u-mb-4{margin-bottom:3em;}.u-ml-4{margin-left:3em;}.u-pti{padding:3em;}.u-pt-4{padding-top:3em;}.u-pr-4{padding-right:3em;}.u-pb-4{padding-bottom:3em;}.u-pl-4{padding-left:3em;}.u-m-5{margin:4em;}.u-mt-5{margin-top:4em;}.u-mr-5{margin-right:4em;}.u-mb-5{margin-bottom:4em;}.u-ml-5{margin-left:4em;}.u-pti{padding:4em;}.u-pt-5{padding-top:4em;}.u-pr-5{padding-right:4em;}.u-pb-5{padding-bottom:4em;}.u-pl-5{padding-left:4em;}
)
code(Var)
return

::layout.scss::
::layouts.scss::
Var =
(
@for $i from 1 through 5 {
   $em: if($i == 1, $i/2, $i - 1) + em;
   .u-m-#{$i}{margin: #{$em}}
   .u-mt-#{$i}{margin-top: #{$em}}
   .u-mr-#{$i}{margin-right: #{$em}}
   .u-mb-#{$i}{margin-bottom: #{$em}}
   .u-ml-#{$i}{margin-left: #{$em}}
   .u-pt#{i}{padding: #{$em}}
   .u-pt-#{$i}{padding-top: #{$em}}
   .u-pr-#{$i}{padding-right: #{$em}}
   .u-pb-#{$i}{padding-bottom: #{$em}}
   .u-pl-#{$i}{padding-left: #{$em}}
}
)
code(Var)
return

::loading2::
::loading.svg::
::loading-svg::
Var =
(
.loading-spinner {
    top: 50`%;
    margin-top: -21px;
    width: 100`%;
    text-align: center;
    position: absolute;
}

.loading-spinner .circular {
    height: 42px;
    width: 42px;
    animation: loading-rotate 2s linear infinite;
}

@keyframes loading-rotate {
  100`% {
    transform: rotate(1turn);
  }      
}

.loading-spinner .path {
    animation: loading-dash 1.5s ease-in-out infinite;
    stroke-dasharray: 90,150;
    stroke-dashoffset: 0;
    stroke-width: 2;
    stroke: #409eff;
    stroke-linecap: round;
}

@keyframes loading-dash {
     0`% {
         stroke-dasharray: 1,200;
         stroke-dashoffset: 0;
     }
     50`% {
         stroke-dasharray: 90,150;
         stroke-dashoffset: -40px;
     }
     100`% {
         stroke-dasharray: 90,150;
         stroke-dashoffset: -120px;
     }     
}
---
<div class="loading-spinner">
    <svg viewBox="25 25 50 50" class="circular"><circle cx="50" cy="50" r="20" fill="none" class="path"></circle></svg>
</div>
)
txtit(Var)
return