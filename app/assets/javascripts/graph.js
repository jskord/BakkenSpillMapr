var years = [];
var count = [];
 
$.getJSON('http://localhost:3000/json/spills_by_year', function(data) {
    data.forEach(function(spill) {
        years.push (spill.year);
        count.push (spill.count);
    });

    // console.log(Object.prototype.toString.call(years));
    console.log(years);
    console.log(count);

    $(function () {
        Highcharts.chart('container', {
            title: {
                text: 'Number Reported Spills in North Dakota by Year',
                x: -20
            },
            subtitle: {
                text: 'Source: ndhealth.gov/EHS/Spills/',
                x: -20
            },
            xAxis: {
                categories: years
            },

            yAxis: {
                title: {
                    text: 'Reported Spills in North Dakota'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: ''
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'Spills',
                data: count
            }]
        });
    });
});

console.log('hello!!!!!');