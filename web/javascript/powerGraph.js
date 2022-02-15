window.onload = runGraphs;

function runGraphs() {
    // buildLineGraph();
    buildBarGraph();
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
        title: 'Power / Irradiance ' + new Date(),
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
        width: 1000,
        height: 500

    };

    //doesnt matter that it has a warning
    Plotly.newPlot("root", data, layout);

}


