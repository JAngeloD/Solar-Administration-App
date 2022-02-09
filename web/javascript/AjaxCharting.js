$(document).ready(function () {
    setInterval(function () {
        displayData("myDiv")
    }, 6000);

});

//Implement if multiple graphs are on the page
function triggerUpdate() {
}

function displayData(chartElement) {
    req = $.ajax({
        url: "ajaxcharthandler",
        type: "POST",
        data: {name: chartElement},
    });

    req.done(function (data) {
        var graphData = JSON.parse(data);

        Plotly.newPlot(chartElement, graphData, {});
    });
}