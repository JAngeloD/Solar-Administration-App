$(document).ready(function () {
    setIntervalImmediately(6000);
});

function setIntervalImmediately(interval) {
    displayData("windGraph");
    displayData("root");
    triggerUpdate();
    return setInterval(function () {
        displayData("windGraph");
        displayData("root");
        triggerUpdate();
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

    var minVal = "";
    var maxVal = "";
    try {
        minVal = document.getElementById(requestType + "Min").textContent;
        maxVal = document.getElementById(requestType + "Max").textContent;
    }
    catch(err) {
    }
    
    $.ajax({
        url: 'ajaxhandler',
        data: {name: requestType,
               max: maxVal,
               min: minVal},
        type: 'POST',
        cache: false,
        success: function (data) {
            if ($('#' + requestType).prop("tagName") == "TD") {
                //If the contained string in the data has a max and a min attached to it
                if(data.includes(",")) {
                    const dataset = data.split(',');
                    $('#' + requestType).html(dataset[0]);
                    $('#' + requestType + "Max").html(dataset[1]);
                    $('#' + requestType + "Min").html(dataset[2]);
                }
                else {
                    $('#' + requestType).html(data);
                }
                
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


