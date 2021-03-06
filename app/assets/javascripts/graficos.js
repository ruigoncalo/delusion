<%= javascript_include_tag "graficos/highcharts.js" %>
<%= javascript_include_tag "graficos/modules/exporting.js" %>
<script type="text/javascript">
	var chart;
	$(document).ready(function() {
		chart = new Highcharts.Chart({
			chart: {
				renderTo: 'container', 
				defaultSeriesType: 'scatter',
				zoomType: 'xy'
			},
			title: {
				text: 'Nível de perigo dos acessos'
			},
			xAxis: {
				title: {
					enabled: true,
					text: 'Tempo (h)'
				},
				startOnTick: true,
				endOnTick: true,
				showLastLabel: true
			},
			yAxis: {
				title: {
					text: 'Perigo (0-10)'
				}
			},
	
			//Info quando se passa o rato por cima do ponto
			tooltip: {
				formatter: function() {
            		    return ''+
						Math.floor(this.x) + 'h' + Math.round((this.x%1)*60) + 'm' + ' Perigo = ' + this.y;
				}  
			},
			legend: {
				layout: 'vertical',
				align: 'left',
				verticalAlign: 'top',
				x: 100,
				y: 70,
				floating: true,
				backgroundColor: '#FFFFFF',
				borderWidth: 1
			},
			plotOptions: {
				scatter: {
					marker: {
						radius: 5,
						states: {
							hover: {
								enabled: true,
								lineColor: 'rgb(100,100,100)'
							}
						}
					},
					states: {
						hover: {
							marker: {
								enabled: false
							}
						}
					}
				}
			},
			series: [{
				name: '192.168.0.2',
				color: 'rgba(223, 83, 83, .5)',
				data: [[1.2, 6.0], [7.5, 9.0], [9.5, 9.0], [7.0, 3.0], [5.8, 3.0], 
					[17.0, 9.0], [15.1, 7.0], [16.0, 6.0], [17.2, 8.0], [16.2, 7.0], 
					[17.5, 5.0], [22.9, 2.0], [21.9, 5.0], [15.4, 2.0], [16.0, 5.0], 
					]		
			}, {
				name: '192.168.0.3',
				color: 'rgba(119, 152, 191, .5)',
				data: [[4.0, 5.0], [17.3, 1.0], [19.5, 8.0], [18.5, 2.0], [18.2, 8.0], 
					[22.5, 4.0], [14.0, 6.0], [14.5, 0.0], [15.0, 2.0], [18.0, 1.0], 
					]
			}]
		});
	});
</script>
