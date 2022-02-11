window.onload = runGraphs;

function runGraphs() {
    // buildLineGraph();
    buildBarGraph();
}

// send arrays of data to these graphs
// function buildLineGraph() {
//
//    //get x axis values, the hours in a day
//    var hours = getGraphsX();
//
//    //get fake y mock random data
//    var Ymocks1 = mockGraphY();
//    var Ymocks2 = mockGraphY();
//
//
//    var average_power = {
//        x: hours,
//        y: Ymocks1,
//        type: 'scatter',
//        yaxis: 'y2',
//        name: 'Average Power'
//    };
//
//    var irradiance = {
//        x: hours,
//        y: Ymocks2,
//        type: 'scatter',
//        name: 'Irradiance'
//    };
//
//    var data = [average_power, irradiance];
//
//    var layout = {
//        title: 'Power / Irradiance ' + new Date(),
//        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
//        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
//        yaxis: {
//            title: 'AC Power (kW)', 
//            side: 'left'
//        },
//        yaxis2: {
//            title: 'Irradiance (W / m ^ 2)',
//            titlefont: {color: 'rgb(148, 103, 189)'},
//            tickfont: {color: 'rgb(148, 103, 189)'},
//            overlaying: 'y',
//            side: 'right'
//        },
//        xaxis: {
//            title: 'Hours',
//            domain: [0, 24]
//        },
//        width: 1000,
//        height: 500, 
//
//    };
//
//    //doesnt matter that it has a warning
//    Plotly.newPlot("root", data, layout);
//
// }

function buildBarGraph() {

    var yValues = sungrow();
    var xValues = randoBetween1and5();

    var Energy = {
        x: xValues,
        y: yValues,
        type: 'bar',
        orientation: 'h',
        name: 'Sungrow'
    };

    var data = [Energy];

    const layout = {
        'title_font_family': "Lato, sans-serif",
        'font_family': "Lato, sans-serif",
        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
        title: 'Energy',
        width: '700',
        height: '800',
        xaxis: {title: 'kWh / kWAC'}
    };

    //doesnt matter that it has a warning
    Plotly.newPlot("bar", data, layout);

}

function randoBetween1and5() {
    const x = [];

    for (let i = 1; i < 40; i++) {
        x.push(Math.random() * 5.0);
    }

    return x;
}

function sungrow() {
    const y = [];

    const sun = "Sungrow SG125HV";

    for (let i = 1; i < 40; i++) {
        let temp = sun + " #" + i;
        y.push(temp);
    }
    return y;
}

function getGraphsX() {
    const hours = [];

    for (let i = 0.0; i < 25.00; i++) {
        hours.push(i);
    }

    return hours;
}

function mockGraphY() {
    const mock = [];

    for (let i = 0.0; i < 25.00; i++) {
        let z = Math.random() * 100.00;
        mock.push(z);
    }

    return mock;
}
