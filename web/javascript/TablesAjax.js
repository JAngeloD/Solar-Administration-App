$(document).ready(function () {
    setIntervalImmediately(3000);
});

function setIntervalImmediately(interval) {
    triggerUpdate();
    return setInterval(function () {
        triggerUpdate();
    }, interval);
}

function triggerUpdate() {
    var elements = document.getElementsByClassName("realtime"); //Change parameter into whatever class name single line data are 
    for (var i = 0; i < elements.length; i++) {
        load(elements[i].id);
    }
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

function load(requestType) {
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
            alert(xhr.responseText);
        }
    }
    );
}