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
Var =
(
const createPoints = (data, name) => {
   // 散点基本配置
   const config = {
      type: 'effectScatter',
      coordinateSystem: 'geo',
      // symbol: 'diamond',
      zlevel: 2, 
      showEffectOn: 'render',
      hoverAnimation: true,
      symbolSize: 8,
      // rippleEffect: {
      //   period: 15, scale: 6, brushType: 'fill'
      // },
      itemStyle: {
          normal: {
              color: function(params){
                  return levelColorMap[params.value && params.value.length >= 3 && params.value[3] || 'C'];
              },
              shadowBlur: 10,
              shadowColor: '#333'
          }
      },
      data: data
  }
  if (name) {
      config.name = name
  }
  // 返回配置
  return config;
}
)
code(Var)
return

::echarts.pin::
::echarts::yuan::
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
legend: {
	orient: 'vertical',
	right: '80',
	bottom: '200',
	itemWidth: 50,
	itemHeight: 28,
	data: ['A级学校', 'B级学校', 'C级学校'],
	textStyle: {
		color: '#fff',
		fontSize: 20
	},
	selectedMode: 'multiple',
}
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
Var =
(
tooltip: {
   trigger: 'item',
   padding: [10, 15],
   textStyle: {
	  fontSize: 20
   },
   formatter: function (params) {
	   if (params.data) {
		  return `${params.seriesName} <br /> ${params.name}`
		}
		// 如果没有data说明是地图网格，不要显示
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
mapChart.showLoading();
mapChart.hideLoading();
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