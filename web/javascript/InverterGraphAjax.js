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
        data: {name: chartElement}
    });

    req.done(function (data) {
        var graphData = JSON.parse(data);
        Plotly.newPlot(chartElement, graphData, {});
    });
}
