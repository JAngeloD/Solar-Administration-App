window.onload = runGraphs;

function runGraphs() {
    buildLineGraph();
    buildWindGraph();
}

// send arrays of data to these graphs
function buildLineGraph() {

    //get x axis values, the hours in a day
    var hours = getGraphsX();

    //get fake y mock random data
    var Ymocks1 = mockGraphY();
    var Ymocks2 = mockGraphY();


    var average_power = {
        x: hours,
        y: Ymocks1,
        type: 'scatter',
        yaxis: 'y2',
        name: 'Average Power'
    };

    var irradiance = {
        x: hours,
        y: Ymocks2,
        type: 'scatter',
        name: 'Irradiance'
    };

    var data = [average_power, irradiance];

    var layout = {
        title: 'Power / Irradiance ',
        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
        yaxis: {
            title: 'AC Power (kW)',
            side: 'left'
        },
        yaxis2: {
            title: 'Irradiance (W / m ^ 2)',
            titlefont: {color: 'rgb(148, 103, 189)'},
            tickfont: {color: 'rgb(148, 103, 189)'},
            overlaying: 'y',
            side: 'right'
        },
        xaxis: {
            title: 'Hours',
            domain: [0, 24]
        },
        width: 650,
        height: 500,
        automargin: true

    };

    //doesnt matter that it has a warning
    Plotly.newPlot("root", data, layout);

}

function buildWindGraph() {

    //get x axis values, the hours in a day
    var hours = getGraphsX();

    //get fake y mock random data
    var Ymocks1 = mockGraphY();
    var Ymocks2 = mockGraphY();


    var temp = {
        x: hours,
        y: Ymocks1,
        type: 'scatter',
        name: 'Temperature ( C )'
    };

    var wind = {
        x: hours,
        y: Ymocks2,
        type: 'scatter',
        name: 'Wind Speed ( km / hr )'
    };

    var data = [temp, wind];

    var layout = {
        title: 'Temperature / Wind ',
        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
        yaxis: {
            title: 'Temperature ( C )',
            side: 'left'
        },
    
        xaxis: {
            title: 'Wind Speed ( km / hr )',
            domain: [0, 24]
        },
        width: 650,
        height: 500,
        automargin: true

    };

    //doesnt matter that it has a warning
    Plotly.newPlot("windGraph", data, layout);

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


