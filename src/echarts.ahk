::echarts.pin::
::echarts::yuan::
Var =
(
// ����׼���õ�dom����ʼ��echartsʵ��
var myChart = echarts.init(document.getElementById('main'));
myChart.setOption({
	title: {
		text: '��Ӫռ��',
		x: 'center',
		y: 'bottom'
	},
	series: [{
		name: '��Ӫռ������',
		type: 'pie',
		radius: '55`%',
		center: ['50`%', '60`%'],
		labelLine: {
			normal: {
				// �����ߵĳ���
				length: 1
			}
		},
		data: [
			{ value: 1210, name: '���⾭Ӫռ��' },
			{ value: 1030, name: '������Ӫռ��' }
		],
		itemStyle: {
			emphasis: {
				shadowBlur: 10,
				shadowOffsetX: 0,
				shadowColor: 'rgba(0, 0, 0, 0.5)'
			},
			// normal ��ͼ����Ĭ��״̬�µ���ʽ��emphasis��ͼ���ڸ���״̬�µ���ʽ�������������������ͼ����������ʱ��
			normal: {
				// ��ͼͼ���ϵ��ı���ǩ
				label: { show: true },
				// ��ǩ���Ӿ���������ʽ
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
            text: 'ռ�õ�·����ṹ',
            x: 'center',
            align: 'right'
        },
        xAxis: {
            data: ["��Ӫռ��", "����ռ��", "����ռ��", "��ռ��λ", "����ռ��"],
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
            name: '����',
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
            data: ['1��', '2��', '3��', '4��', '5��', '6��']
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
	{ value: 10, name: '��ҵ������' },
	{ value: 5, name: '������' },
	{ value: 15, name: '���н�����' },
	{ value: 25, name: '�����ȼ���' },
	{ value: 20, name: '�г������' },
	{ value: 35, name: '���ݳǹ���' },
	{ value: 30, name: '������ȫ��' },
	{ value: 40, name: '����������' }
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
						'{b}', 'ռ��{d}`%'
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
// ��������
const options = {
    // ��ͼ��geo����(����ѡ�񶫳ǵ�ͼ��Ϊ�ײ㱳��ͼ���ֿ�����Ϊ����ͼ������ϵ)
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
      // ����Ļ�������
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
                      color: 'rgba(147, 235, 248, 0)' // 0`% ������ɫ
                  }, {
                      offset: 1, 
                      color: 'rgba(147, 235, 248, .2)' // 100`% ������ɫ
                  }],
                  globalCoord: false // ȱʡΪ false
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
	  // �������� [������Ա/��ҵ��]
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
	 text: '�������� [������Ա/��ҵ����]',
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
	data: ['A��ѧУ', 'B��ѧУ', 'C��ѧУ'],
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
	seriesIndex: 0,  // ������Ҫָ������ӳ���ĸ�series����
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
		// ���û��data˵���ǵ�ͼ���񣬲�Ҫ��ʾ
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

// ��ȡĬ������
var getDeafaultOption = () => {
    return $.extend(true, {}, options)
}

// ���ɱ䶯������
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
          "type": "Feature", "properties": {"name": "��ݸ��"},
          "geometry": {
              "type": "Polygon",
              "coordinates": [
                  [
                    [114.25967371414019,22.91052307097266],
                    // ... Polygon����һ����ά���飬Ҳ�������񣨿飩
                    // ��Ҫע����ǣ���һ����������һ���������һ�²ſ���Χ�����
                    // ע��ɾ�����ע�ͣ�json�ǲ�֧��ע�͵ġ�
                    // ��õ�http://geojson.io/�в���һ�¡�ˢ�µ�ʱ��ѡ��false�������á�
                    // �������Json����Ŀȥ�����Ϳ�����ʾ�����û��ʾ��Ҫ��������ʾ��
                    [114.21042989104119,22.80255398178911]
                  ]
              ]
          }
      },
      {
            "type": "Feature", "properties": {"name": "������������"},
                "geometry": {
                    "type": "Polygon",
                    "coordinates": [
                        []
                    ]
                }
            },
            {
                "type": "Feature", "properties": {"name": "������������"},
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
 * �½�Polygon
 * @param {string} name �����������
 * @param {array} coordinates ����һ����ά����
 * �ο���ʽ��http://echarts.baidu.com/examples/data/asset/geo/HK.json
 * ע�⣬Polygon �� MultiPolygon�ǲ�һ���ģ�ǰ������ά���飬��������ά���顣
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