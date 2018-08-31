
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
	        "type": "Feature", "properties": {"name": "what the fuck"},
	        "geometry": {
	            "type": "Polygon",
	            "coordinates": [
	                []
	            ]
	        }
	    },
	    {
	        "type": "Feature", "properties": {"name": "holy shit"},
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