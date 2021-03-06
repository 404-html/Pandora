﻿::echarts.lunbo::
Var =
(
broadcast() {
  // 只允许轮播一次
  this.timer && clearInterval(this.timer)
  // 初始化
  let currentIndex = -1
  // 定时器
  this.timer = setInterval(() => {
      // 数量
      const dataLen = this.getDepartSecondTypePercentage.length;
      // 取消之前高亮的图形
      this.myChart.dispatchAction({ type: 'downplay', seriesIndex: 0, dataIndex: currentIndex })
      // 翻页
      currentIndex = (currentIndex + 1) `% dataLen;
      // 高亮当前图形
      this.myChart.dispatchAction({ type: 'highlight', seriesIndex: 0, dataIndex: currentIndex })
  }, 1500)
}
)
code(Var)
return


::echarts.3dmap::
::echarts.map3d::
::echarts.3d::
Var =
(
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <script src="https://lib.baomitu.com/echarts/4.1.0/echarts.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.9.1/jquery.min.js"></script>
    <script src="http://echarts.baidu.com/resource/echarts-gl-latest/dist/echarts-gl.min.js"></script>
    <script src="http://gallerybox.echartsjs.com/dep/echarts/map/js/china.js"></script>
</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 100`%;;height:100vh;"></div>
    <script type="text/javascript">
    
    // 基于准备好的dom，初始化echarts实例（必须先加载 echarts-gl.min.js ）
    // 基于准备好的dom，初始化echarts实例（必须先加载 echarts-gl.min.js ）
    // 基于准备好的dom，初始化echarts实例（必须先加载 echarts-gl.min.js ）
    var myChart = echarts.init(document.getElementById('main'));

    // https://github.com/dragon8github/Pandora/tree/master/data
    // echarts.registerMap('wangge', `这里写上你的geo.json`); 

     const distance = 100;
        const alpha = 54.49200177574249;
        const beta = -35.565489851313075;
        var option = {
            tooltip: {
                show: true,
                trigger:'item',
                alwaysShowContent:true,
                backgroundColor:'rgba(50,50,50,0.7)',
                hideDelay:100,
                triggerOn:'mousemove',
                enterable:true,
                padding: 15,
                formatter: function (params, ticket, callback) {
                  return '123'
                }
            },
            series: [{
              type: 'map3D',
              map: 'DongGuanGrid',
              top: '-16.8`%',
              left: '-4.8`%',
              viewControl: {
                  // 摄像头的距离 maxDistance: distance, minDistance: distance,
                  distance: distance, 
                  // 上下 minAlpha: alpha, maxAlpha: alpha,
                  alpha: alpha,
                  // 左右 minBeta: beta, maxBeta:beta,
                  beta: beta, 
              },
              itemStyle: {
                  areaColor: '#082974',
                  opacity: 0,
              },
              label: {
                  show: false,
                  textStyle: {
                      color: '#fff', //地图初始化区域字体颜色
                      fontSize: 14,
                      opacity: 1,
                      backgroundColor: 'rgba(0,23,11,0)'
                  },
              },
              emphasis: { //当鼠标放上去  地区区域是否显示名称
                  label: {
                      show: true,
                      textStyle: {
                          color: '#fff',
                          fontSize: 14,
                          backgroundColor: 'rgba(0,23,11,0)'
                      }
                  },
                  itemStyle: {
                      areaColor: '#082974',
                      opacity: 1,
                      borderWidth: 0.4,
                      borderColor: '#000'
                  },
              },
              //shading: 'lambert',
              light: { //光照阴影
                  main: {
                      color: '#fff', //光照颜色
                      intensity: 1.2, //光照强度
                      //shadowQuality: 'high', //阴影亮度
                      shadow: false, //是否显示阴影
                      alpha: 55,
                      beta: 10

                  },
                  ambient: {
                      intensity: 0.3
                  }
              },
            }]
        };
    myChart.setOption(option);
    </script>
</body>

</html>
)
code(Var)
return

::echarts.center::
::maps.center::
Var =
(
var getcenterpoint = function (val) {
    var myarr = val.split(';');
    var lngarr = []
    var latarr = []
    myarr.forEach(function (e, i) {
         var myarr2 = e.split(',');
         lngarr.push(myarr2[0])
         latarr.push(myarr2[1])
    });
    var maxlng = Math.max(...lngarr)
    var minlng = Math.min(...lngarr)
    var maxlat = Math.max(...latarr)
    var minlat = Math.min(...latarr)
    var mylng = (maxlng - minlng) / 2 + minlng
    var mylat = (maxlat - minlat) / 2 + minlat
    var position = new BMap.Point(mylng, mylat);
    return position
}
)
code(Var)
return

::echarts.dian::
::echarts.sandian::
::echarts.effectScatter::
Var =
(
// 创建散点配置项
const createPoints = (name, data) => {
	// 返回的这个配置对象，直接插入到series即可
    return {
    	// 设置名称，这和legend关联
    	name: name,
    	// 散点类型
        type: 'effectScatter',
        // 坐标系（默认上面的geo配置作为坐标系）
        coordinateSystem: 'geo',
        // 图形
        symbol: 'circle', // 'circle', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow', 'none'，'image://url'
        // 层级
        zlevel: 2,
        // 绘制完成后显示特效
        showEffectOn: 'render',
        // 是否开启鼠标 hover 的提示动画效果
        hoverAnimation: true,
        // 散点大小
        symbolSize: 10,
        // 涟漪效果
        // rippleEffect: { period: 15, scale: 6, brushType: 'fill' },
        itemStyle: {
            normal: {            	
            	// 根据不同的 twoconsTypeId 渲染不同的颜色
                color: params => colorMap[params.value[3]], 
                shadowBlur: 10,
                shadowColor: '#333'
            }
        },
        // 散点数据，格式如下:
        // [{name: '不重要随便写点什么都可以', value: [经度, 纬度, 其他值]}, {...}, , {...}, , {...}]
        data: data
    }
}
)
code(Var)
return

::echarts.pin::
::echarts.yuan::
Var =
(
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));
myChart.setOption({
	title: {
		text: '经营占道',
		x: 'center',
		y: 'bottom'
	},
	series: [{
		name: '经营占道类型',
		type: 'pie',
		radius: '55`%',
		center: ['50`%', '60`%'],
		labelLine: {
			normal: {
				// 引导线的长度
				length: 1
			}
		},
		data: [
			{ value: 1210, name: '店外经营占道' },
			{ value: 1030, name: '流动经营占道' }
		],
		itemStyle: {
			emphasis: {
				shadowBlur: 10,
				shadowOffsetX: 0,
				shadowColor: 'rgba(0, 0, 0, 0.5)'
			},
			// normal 是图形在默认状态下的样式；emphasis是图形在高亮状态下的样式，比如在鼠标悬浮或者图例联动高亮时。
			normal: {
				// 饼图图形上的文本标签
				label: { show: true },
				// 标签的视觉引导线样式
				labelLine: { show: true }
			}
		}
	}],
	color: ['#e76660', '#df4547']
});
)
code(Var)
return

::echarts.bar::
::echarts.zhu::
::echarts.zhuzi::
Var =
(
var myChart = echarts.init(document.getElementById('main'));
    myChart.setOption({
        title: {
            text: '占用道路问题结构',
            x: 'center',
            align: 'right'
        },
        xAxis: {
            data: ["经营占道", "垃圾占道", "车辆占道", "霸占车位", "其他占道"],
            axisLine: {
                lineStyle: {
                    color: 'black',
                    width: 0.5
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 18
                }
            }
        },
        yAxis: {
            splitLine: {
                show: true
            },
            type: 'value',
            axisLine: {
                lineStyle: {
                    width: 0
                }
            },
            axisLabel: {
                interval: 0,
                textStyle: {
                    color: 'black',
                    fontSize: 14
                }
            }
        },
        series: [{
            name: '销量',
            type: 'bar',
            data: [2240, 1768, 1547, 600, 31],
            barWidth: 25,
            itemStyle: {
                normal: {
                    color: function(params) {
                        var colorList = ['#00a0e9', '#00a0e9 ', '#00a0e9 ', '#00a0e9 ', '#00a0e9'];
                        return colorList[params.dataIndex]
                    },
                    label: {
                        show: true,
                        position: 'top',
                        color: 'black',
                        fontSize: 14,
                        formatter: '{c}'
                    },
                    opacity: 0.4
                },
            },
        }]
    });
)
code(Var)
return

::echarts.line::
::echarts.xian::
Var =
(
var myChart = echarts.init(document.getElementById('main'));
    var option = {
        grid: { left: '12`%', right: '3`%', bottom: '35px', top: '35px', },
        xAxis: [{
            type: 'category',
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                textStyle: {
                    color: '#444444',
                    fontSize: '16'
                }
            },
            data: ['1月', '2月', '3月', '4月', '5月', '6月']
        }],
        yAxis: [{
            type: 'value',
            splitLine: {
                lineStyle: {
                    color: 'rgba(52,73,94, .23)',
                    type: 'dashed'
                },
            },
            axisTick: { show: false },
            axisLine: { show: false, },
            axisLabel: {
                margin: '10',
                textStyle: {
                    color: '#444444',
                    fontSize: '16',
                    align: 'right',
                    baseline: 'bottom'
                }
            }
        }],
        series: [{
            type: 'line',
            symbol: 'emptyCircle',
            symbolSize: 7,
            itemStyle: {
                normal: {
                    color: '#118cfe',
                    lineStyle: {
                        color: '#118cfe'
                    }
                }
            },
            label: {
                show: true,
                position: 'top',
                distance: 8,
                textStyle: {
                    color: '#444444',
                    fontSize: 18
                }
            },
            data: [1020, 324, 1132, 1389, 1288, 1358],
        }, ]
    };
    myChart.setOption(option);
)
code(Var)
return


::echarts.rose::
::echarts.rosepin::
Var =
(
var myChart = echarts.init(document.getElementById('main'));
var data = [
	{ value: 10, name: '就业保障类' },
	{ value: 5, name: '其他类' },
	{ value: 15, name: '城市建设类' },
	{ value: 25, name: '民政救济类' },
	{ value: 20, name: '市场监管类' },
	{ value: 35, name: '市容城管类' },
	{ value: 30, name: '公共安全类' },
	{ value: 40, name: '公安消防类' }
];
var category = [];
for (var i = 0; i < data.length; i++) {
	category.push(data[i].name);
}
var option = {
	legend: {
		x: 'center',
		y: 'bottom',
		data: category
	},
	series: [{
		type: 'pie',
		radius: [25, 95],
		center: ['50`%', 140],
		roseType: 'area',
		clockWise: false,
		itemStyle: {
			normal: {
				label: {
					formatter: [
						'{b}', '占比{d}`%'
					].join('\n'),
					textStyle: {
						color: '#000000',
						fontSize: 16
					}
				},
			}
		},
		data: data
	}]
};
myChart.setOption(option);
)
code(Var)
return

::echarts.options::
::echarts.option::
::ehcarts.opts::
::echarts.default::
::echarts.defaultopt::
::echarts.defaultopts::
::echarts.defaultoptions::
::echarts.defaultoption::
Var =
(
// 基础配置
const options = {
    // 地图的geo配置(这里选择东城地图作为底层背景图，又可以作为热力图的坐标系)
    geo: { 
        id:'0', 
        silent: true,
        map: 'dongcheng', 
        itemStyle: {
            normal: {
                areaColor: '#0a57f2', 
                opacity: 0.33, 
                borderColor: '#7aa5f3', 
                borderWidth: 3, 
            }
        }
    },
    tooltip: { trigger: 'item', formatter: '{b}' },
    series: [
      // 网格的基本配置
      {
          // silent: true,
          type: 'map', 
          mapType: 'wangge', 
          zlevel: 1, 
          label: {
              show: true,
              color: '#fff',
              fontSize: 20,
          },
          itemStyle: {
              borderColor: '#092A81',
              // areaColor: 'rgba(122, 165, 243, 0.3)',
              areaColor: {
                  type: 'radial',
                  x: 0.5,
                  y: 0.5,
                  r: 0.8,
                  colorStops: [{
                      offset: 0, 
                      color: 'rgba(147, 235, 248, 0)' // 0`% 处的颜色
                  }, {
                      offset: 1, 
                      color: 'rgba(147, 235, 248, .2)' // 100`% 处的颜色
                  }],
                  globalCoord: false // 缺省为 false
              }
          },
          emphasis: {
            label: {
              color: '#fff'
            }
          }
      }
  ]
}
)
code(Var)
return

::echarts.label::
Var =
(
label: {
   show: true,
   color: '#fee002',
   padding: [13, 20],
   fontSize: 20,
   borderColor: '#15c3f5',
   backgroundColor: 'rgba(0, 0, 0, .1)',
   borderWidth: 0,
   borderRadius: 8,
   position: 'bottom',
   formatter: function (params) {
	  // 网格名称 [网格人员/企业数]
	  return `${e.gridName} [${e.gridMan}/${e.gridEnterprise}]`
   }
}
)
code(Var)
return

::echarts.click::
Var =
(
myChart.on('click', params => {
    console.log(20180824012121, params)
});
)
code(Var)
return

::echarts.qipao::
Var =
(
 // 散点气泡图
{
    type: 'scatter',
    // 坐标系（默认上面的geo配置作为坐标系）
    coordinateSystem: 'geo',
    // 图形
    symbol: 'pin', // 'circle', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow', 'none'，'image://url'
    // 动态设置气泡的大小
    symbolSize: val => {
        var a = (this.maxSize4Pin - this.minSize4Pin) / (this.max - this.min);
        var b = this.minSize4Pin - a * this.min;
        b = this.maxSize4Pin - a * this.max;
        return a * val[2] + b;
    },
    label: {
        normal: {
            show: true,
            textStyle: {
                color: '#fff',
                fontSize: 12,
            },
            formatter: function (params) {
                return params.value[2]
            }
        }
    },
    itemStyle: {
        normal: {
            color: '#F62157',
        }
    },
    zlevel: 6,
    data: [],
}
)
code(Var)
return

::echarts.title::
Var =
(
title: {
	 show: true,
	 bottom: 200,
	 right: 20,
	 text: '网格名称 [网格人员/企业数量]',
	 textStyle: {
	   fontSize: 30,
	   color: '#fee002',
	   fontWeight: '100'
	 }
 },
)
code(Var)
return

::echarts.legend::
Var =
(
// 放置在根配置
// 通过data属性来匹配所有的series的name属性，然后自动识别series中的color进行映射，所以你必须要多个series才可以配合legend使用。其中legend的data属性最好是动态的。
legend: {
    orient: 'horizontal',
    selectedMode: 'multiple',
    bottom: '0',
    left: 'center',
    width: 740,
    itemWidth: 20,
    itemHeight: 20,
    // 每项之间的间距，用padding反而没用？
    itemGap: 15,
    textStyle: {
        color: '#000',
        fontSize: 16
    },
    // 这个值最好是动态配置的
    data: ['治安消防', '交通管理', '市场管理'], 
},
)
code(Var)
return

::echarts.vi::
::echarts.visu::
::echarts.visual::
::echarts.visualMap::
Var =
(
visualMap: {
	show: false,
	min: 0,
	max: 5,
	right: '80',
	bottom: '200',
	// splitNumber: new Set(countByGridList).size,
	// itemWidth: 60,
	// itemHeight: 25,
	realtime: false,
	calculable: true,
	seriesIndex: 0,  // 这里需要指定，是映射哪个series配置
	inRange: {
		color: ['#1E81F1', '#1A66F3', '#144CF7', '#1032F9']
	},
	textStyle: {
		 color: '#fff',
		 fontSize: 28,
	}
}
)
code(Var)
return

::echarts.tooltip::
::echarts.tool::
::echarts.tip::
t := A_YYYY . A_MM . A_DD . A_Hour . A_Min . A_Sec
Var =
(
// 根配置，如果formatter返回空则或者干脆不返回，则不会显示，可以用来显示series的数据。也可以通过判断params.componentSubType来进行显示。
tooltip: {
   trigger: 'item',
   padding: [10, 15],
   textStyle: {
	  fontSize: 20
   },
   position: function(point, params, dom, rect, size) {
        return [point[0] + 20, '0`%']
    },
   formatter: function (params) {
	    console.log(%t%, params)
		// 返回空说明不展示tooltip
		return ''
   }
}
)
code(Var)
return

::echarts.init::
Var =
(
var myChart = echarts.init(document.getElementById('eastCityMap'));

// 获取默认配置
var getDeafaultOption = () => {
    return $.extend(true, {}, options)
}

// 不可变动的配置
const options = {
	series: [
		{
			type: 'map',
			label: {
				show: true,
				color: '#fff',
				fontSize: 14,
			},
			itemStyle: {
				normal: {
					borderColor: '#092A81'
				}
			},
			data: []
		}
	]
}

myChart.setOption(options);
)
code(Var)
return

::echarts.load::
::echarts.loading::
Var =
(
this.myChart.showLoading({
     text: '正在加载数据...',
     color: '#c23531',
     textColor: '#000',
     maskColor: 'rgba(255, 255, 255, 0.7)',
     zlevel: 199307100338
});
this.myChart.hideLoading();
)
code(Var)
return

::geo::
::geojson::
::geo.init::
::geojson.init::
::geoinit::
::geojsoninit::
Var =
(
{
    "type": "FeatureCollection",
    "features": [
      {
          "type": "Feature", "properties": {"name": "东莞市"},
          "geometry": {
              "type": "Polygon",
              "coordinates": [
                  [
                    [114.25967371414019,22.91052307097266],
                    // ... Polygon就是一个三维数组，也就是网格（块）
                    // 需要注意的是，第一个坐标和最后一个坐标必须一致才可以围起来嘛。
                    // 注意删掉这段注释，json是不支持注释的。
                    // 最好到http://geojson.io/中测试一下。刷新的时候选择false可以重置。
                    // 黏贴到【Json】栏目去正常就可以显示，如果没显示就要看错误提示了
                    [114.21042989104119,22.80255398178911]
                  ]
              ]
          }
      },
      {
            "type": "Feature", "properties": {"name": "这是其他网格"},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": [
                        []
                    ]
                }
            },
            {
                "type": "Feature", "properties": {"name": "这是其他网格"},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": [
                        []
                    ]
                }
            },
    ]
}
)
code(Var)
return

::geofn::
::geojsonfn::
::geo.json.fn::
::geo.fn::
::geo.class::
::createPolygon::
Var =
(
/**
 * 新建Polygon
 * @param {string} name 覆盖物的名字
 * @param {array} coordinates 这是一个三维数组
 * 参考格式：http://echarts.baidu.com/examples/data/asset/geo/HK.json
 * 注意，Polygon 和 MultiPolygon是不一样的，前者是三维数组，后者是四维数组。
 */
const createPolygon = (name, coordinates) => {
   	return {
        "type": "Feature",
        "properties": {"name": name},
        "geometry": {
            "type": "Polygon",
            "coordinates": coordinates
        }
	}
}
)
code(Var)
return