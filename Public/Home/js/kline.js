 /* $(function() {
      kline("1h",$("#currency_mark").html()+"2"+$("#currency_trade_mark").html());
		
        $("#chart-control > button").click(function(){
            $(this).addClass("btn-success").siblings().removeClass("btn-success");
            var time = $(this).attr('data-time');
            kline(time,$("#currency_mark").html()+"2"+$("#currency_trade_mark").html());
        })
*/
        function kline(coinname,data){

            var chart;
			 arr = coinname.split("2");
			 if(arr.length > 1){
				 var coin_to = arr[1].toUpperCase( );
				 var coin_from = arr[0].toUpperCase( );
			 }else{
				 var coin_from = 'YBC';
				 var coin_to = coin.name;
		     }

             Highcharts.setOptions({

                /***/
                colors: ['#F01717', '#416C9E', '#DDDF0D', '#7798BF', '#55BF3B', '#DF5353', '#aaeeee', '#ff0066', '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
                lang: {
                    loading: 'Loading...',
                    months: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                    shortMonths: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
                    weekdays: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
                    decimalPoint: '.',
                    numericSymbols: ['k', 'M', 'G', 'T', 'P', 'E'],
                    resetZoom: 'Reset zoom',
                    resetZoomTitle: 'Reset zoom level 1:1',
                    thousandsSep: ','
                },
                credits: {
                    enabled: false,
                }

            });

           /* if(m == '5m'){
                chart = chart_5m;
            }else if(m == '15m'){
                chart = chart_15m;
            }else if(m == '30m'){
                chart = chart_30m;
            }else if(m == '1h'){
                chart = chart_1h;
            }else if(m == '8h'){
                chart = chart_8h;
            }else if(m == '1d'){
                chart = chart_1d;
            }*/
			//alert(chart_5m.time_line)
         //   var data = chart_5m.time_line;
            // split the data set into ohlc and volume
            var ohlc = [],
                volume = [],
                dataLength = data.length;

            var ma5 = [];
            var ma20 = [];


            for (i = 19; i < dataLength; i++) {
                ohlc.push([
                    data[i][0], // the date
                    data[i][2], // open
                    data[i][3], // high
                    data[i][4], // low
                    data[i][5] // close
                ]);

                volume.push([
                    data[i][0], // the date
                    data[i][1] // the volume
                ]);

                var temp5 = ((parseFloat(data[i][4]) + parseFloat(data[i - 1][4]) + parseFloat(data[i - 2][4]) + parseFloat(data[i - 3][4]) + parseFloat(data[i - 4][4])) + (parseFloat(data[i][3]) + parseFloat(data[i - 1][3]) + parseFloat(data[i - 2][3]) + parseFloat(data[i - 3][3]) + parseFloat(data[i - 4][3]))) / 10;
                ma5.push([data[i][0], temp5]);

                var temp20 = ((parseFloat(data[i][4]) + parseFloat(data[i - 1][4]) + parseFloat(data[i - 2][4]) + parseFloat(data[i - 3][4]) + parseFloat(data[i - 4][4]) + parseFloat(data[i - 5][4]) + parseFloat(data[i - 6][4]) + parseFloat(data[i - 7][4]) + parseFloat(data[i - 8][4]) + parseFloat(data[i - 9][4]) + parseFloat(data[i - 10][4]) + parseFloat(data[i - 11][4]) + parseFloat(data[i - 12][4]) + parseFloat(data[i - 13][4]) + parseFloat(data[i - 14][4]) + parseFloat(data[i - 15][4]) + parseFloat(data[i - 16][4]) + parseFloat(data[i - 17][4]) + parseFloat(data[i - 18][4]) + parseFloat(data[i - 19][4])) + (parseFloat(data[i][3]) + parseFloat(data[i - 1][3]) + parseFloat(data[i - 2][3]) + parseFloat(data[i - 3][3]) + parseFloat(data[i - 4][3]) + parseFloat(data[i - 5][3]) + parseFloat(data[i - 6][3]) + parseFloat(data[i - 7][3]) + parseFloat(data[i - 8][3]) + parseFloat(data[i - 9][3]) + parseFloat(data[i - 10][3]) + parseFloat(data[i - 11][3]) + parseFloat(data[i - 12][3]) + parseFloat(data[i - 13][3]) + parseFloat(data[i - 14][3]) + parseFloat(data[i - 15][3]) + parseFloat(data[i - 16][3]) + parseFloat(data[i - 17][3]) + parseFloat(data[i - 18][3]) + parseFloat(data[i - 19][3]))) / 40;
                ma20.push([data[i][0], temp20]);

            }

            // set the allowed units for data grouping
            var groupingUnits = [[
                'week',                         // unit name
                [1]                             // allowed multiples
            ], [
                'month',
                [1, 2, 3, 4, 6]
            ]];

            // create the chart
            $('#container').highcharts('StockChart', {

                xAxis: { type: 'datetime' },
                plotOptions: { candlestick: {color: '#f01717', upColor: '#0ab92b'} },
                tooltip: { xDateFormat: '%Y-%m-%d %H:%M %A', color: '#f0f', changeDecimals: 8, borderColor: '#058dc7' },
                rangeSelector: {
                     buttons: [
                        {type: 'minute', count: 60, text: '1h'},
                        {type: 'minute', count: 120,text: '2h'},
                        {type: 'minute', count: 360,text: '6h'},
                        {type: 'minute', count: 720,text: '12h'},
                        {type: 'day',    count: 1,  text: '1d'},
                        {type: 'week',    count: 1,  text: '1w'},
                        {type: 'all', text: '所有'}
                    ],
                    selected: 6,
                    inputEnabled: false
                },
                exporting:{enabled:false,buttons:{exportButton:{enabled:false},printButton:{enabled:true}}},

                credits: {
                    text: 'com'
                },



                yAxis: [{
                    title: {
                        text: '价格['+coin_to+']',
                        style: { color: '#CC3300' }
                    },
                    height: 230,
                    lineWidth: 2
                }, {
                    title: {
                        text: '成交量['+coin_from+']',
                        style: { color: '#4572A7' }
                    },
                    top: 275,
                    height: 40,
                    offset: 0,
                    lineWidth: 2
                }],

                series: [
                    {name: '5均线', data: ma5, type: 'spline', threshold: null, tooltip: {valueDecimals: parseInt($('#price_float').attr('data'))}, color: '#FF00FF', lineWidth: 1},
                    {name: '20均线', data: ma20, type: 'spline', threshold: null, tooltip: {valueDecimals: parseInt($('#price_float').attr('data'))}, color: '#4572A7', lineWidth: 1},
                    {animation: false, type: 'candlestick',name: '价格['+coin_to+']',data: ohlc,dataGrouping: {units: groupingUnits}},
                    {animation: false, type: 'column',color: '#4572A7',name: '成交量['+coin_from+']',data: volume,yAxis: 1,dataGrouping: {units: groupingUnits}
                }]
            });
        }
    // });
//});

