$(document).ready(function () {
    setIntervalImmediately(2000);
});

function setIntervalImmediately(interval) {
    displayData("windGraph");
    displayData("root");
//    triggerUpdate();
    return setInterval(function () {
        displayData("windGraph");
        displayData("root");
//        triggerUpdate();
    }, interval);
}

function displayData(chartElement) {
    var gd = document.getElementById(chartElement);
    req = $.ajax({
        url: "ajaxcharthandler",
        type: "POST",
        data: {name: chartElement,
                  graphData: JSON.stringify(gd.data)}
    });

    req.done(function (data) {
        var graphData = JSON.parse(data);

        Plotly.newPlot(chartElement, graphData, {});
    });
}

function triggerUpdate() {
    var elements = document.getElementsByClassName("realtime"); //Change parameter into whatever class name single line data are 
    for (var i = 0; i < elements.length; i++) {
        load(elements[i].id);
    }
}

function load(requestType) {
    alert(JSON.stringify(gd.data));
    $.ajax({
        url: 'ajaxhandler',
        data: {name: requestType},
        type: 'POST',
        cache: false,
        success: function (data) {
            if ($('#' + requestType).prop("tagName") == "TD") {
                $('#' + requestType).html(data);
            } else {
                $('#' + requestType).attr("value", data);
            }
        },
        error: function (xhr, status, error) {

        }
    }
    );
}

;


