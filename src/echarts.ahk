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