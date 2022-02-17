$(document).ready(function () {
    setIntervalImmediately(3000);
});

function setIntervalImmediately(interval) {
  displayData("windGraph");
  displayData("root");
  return setInterval(function() {
        displayData("windGraph");
        displayData("root");
  } , interval);
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