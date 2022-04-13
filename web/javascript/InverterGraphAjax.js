$(document).ready(function () {
    setIntervalImmediately(6000);
});

function setIntervalImmediately(interval) {
    displayData("bar");
    return setInterval(function () {
        displayData("bar");
    }, interval);
}

function displayData(chartElement) {
    req = $.ajax({
        url: "ajaxcharthandler",
        type: "POST",
        data: {name: chartElement},
    });

    req.done(function (data) {
        try {
            var graphData = JSON.parse(data);
            Plotly.newPlot(chartElement, graphData, {});
        } catch (err) {
            errorAlert("Graph could not load, could not retrieve at least one inverter from the database. Check server logs for more info");
        }
        
    });
}
