window.onload = handleGraph();

function handleGraph() {
    let choice = document.getElementById('reportChoice').value;

    if (choice === "1") {
        buildReport1();
    } else if (choice === "2") {
        buildReport2();
    } else if (choice === "3") {
        buildReport3();
    } else if (choice === "4") {
        buildReport4();
    }

}
;


function buildReport1() {

    //x values
    const x = document.getElementsByName("x[]");
    let xValues = parseHTMLArray(x);

    //y1 values
    const y1 = document.getElementsByName("y1[]");
    let y1Values = parseHTMLArray(y1);

    //y2 values
    const y2 = document.getElementsByName("y2[]");
    let y2Values = parseHTMLArray(y2);

    var cumulativeEnergy = {
        x: xValues,
        y: y2Values,
        type: 'scatter',
        yaxis: 'y2',
        name: 'Cumulative Energy'
    };

    var monthlyEnergy = {
        x: xValues,
        y: y1Values,
        type: 'bar',
        name: 'Monthly Energy'
    };

    var data = [cumulativeEnergy, monthlyEnergy];

    var layout = {
        title: 'Monthly Energy @ PCC',
        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
        yaxis: {
            title: 'Monthly Energy',
            side: 'left'
        },
        yaxis2: {
            title: 'Cumulative Energy',
            titlefont: {color: 'rgb(148, 103, 189)'},
            tickfont: {color: 'rgb(148, 103, 189)'},
            overlaying: 'y',
            side: 'right'
        },
        xaxis: {
            title: 'Month',
            domain: [0, 12]
        },
        width: 500,
        height: 350,
        automargin: true

    };

    //doesnt matter that it has a warning
    Plotly.newPlot("reportOutput", data, layout);

}
;

function buildReport2() {

    //x values
    const x = document.getElementsByName("x[]");
    let xValues = parseHTMLArray(x);

    //y1 values
    const y1 = document.getElementsByName("y1[]");
    let y1Values = parseHTMLArray(y1);

    var YearlyPCC = {
        x: xValues,
        y: y1Values,
        type: 'bar',
        name: 'YearlyPCCxx'
    };


    var data = [YearlyPCC];

    var layout = {
        title: 'Annual Yearly Energy @ PCC',
        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
        yaxis: {
            title: 'Annual Energy',
            side: 'left'
        },
        xaxis: {
            title: 'Year',
            domain: [0, 6]
        },
        width: 500,
        height: 350,
        automargin: true

    };

    //doesnt matter that it has a warning
    Plotly.newPlot("reportOutput", data, layout);

}
;

function buildReport3() {
    let yearValue = document.getElementById('year').value;

    //x values
    const x = document.getElementsByName("x[]");
    let xValues = parseHTMLArray(x);

    //y1 values
    const y1 = document.getElementsByName("y1[]");
    let y1Values = parseHTMLArray(y1);

    //y2 values
    const y2 = document.getElementsByName("y2[]");
    let y2Values = parseHTMLArray(y2);

    var cumulativeEnergy = {
        x: xValues,
        y: y2Values,
        type: 'scatter',
        yaxis: 'y2',
        name: 'Cumulative Energy'
    };

    var monthlyEnergy = {
        x: xValues,
        y: y1Values,
        type: 'bar',
        name: 'Monthly Energy'
    };

    var data = [cumulativeEnergy, monthlyEnergy];

    yearValue = 2022;

    var layout = {
        title: 'Calender Year ' + yearValue + ' Energy @ PCC',
        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
        yaxis: {
            title: 'Monthly Energy',
            side: 'left'
        },
        yaxis2: {
            title: 'Cumulative Energy',
            titlefont: {color: 'rgb(148, 103, 189)'},
            tickfont: {color: 'rgb(148, 103, 189)'},
            overlaying: 'y',
            side: 'right'
        },
        xaxis: {
            title: 'Month',
            domain: [0, 12]
        },
        width: 500,
        height: 350,
        automargin: true

    };

    //doesnt matter that it has a warning
    Plotly.newPlot("reportOutput", data, layout);

}
;

function buildReport4() {

    //x values
    const x = document.getElementsByName("x[]");
    let xValues = parseHTMLArray(x);

    //y1 values
    const y1 = document.getElementsByName("y1[]");
    let y1Values = parseHTMLArray(y1);

    var YearlyPCC = {
        x: xValues,
        y: y1Values,
        type: 'bar',
        name: 'YearlyPCC'
    };


    var data = [YearlyPCC];

    //get the month
    const month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    const d = new Date();
    let name = month[d.getMonth() - 1];

    var layout = {
        title: 'Month Comparison for ' + name,
        'plot_bgcolor': 'rgba(242, 241, 239, 1)',
        'paper_bgcolor': 'rgba(236, 236, 236, 1)',
        yaxis: {
            title: 'Monthly Energy',
            side: 'left'
        },
        xaxis: {
            title: 'Year',
            domain: [0, 6]
        },
        width: 500,
        height: 350,
        automargin: true

    };

    //doesnt matter that it has a warning
    Plotly.newPlot("reportOutput", data, layout);

}
;

//This function turns it into a normal non crazy HTML array
function parseHTMLArray(array) {
    let newArray = [];

    for (i = 0; i < array.length; i++) {
        newArray[i] = array[i].value;
    }

    return newArray;
}


