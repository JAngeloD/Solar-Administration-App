$(document).ready(function () {
        setIntervalImmediately(6000);
});

function setIntervalImmediately(interval) {
    changeState("dynamicState01");
    changeState("dynamicState02");
    triggerUpdate();
    return setInterval(function () {
        changeState("dynamicState01");
        changeState("dynamicState02");
        triggerUpdate();
    }, interval);
}

function changeState(className) {
    req = $.ajax({
        url: "ajaxdiagramhandler",
        data: {style: $('.' + className).attr("style"),
                  deviceID: className.substring(className.length, className.length - 2)},
        type: 'POST',
        cache: false,
        success: function (data) {
            $('.' + className).attr("style", data);
        },
        error: function () {
            
        }
    });
}

function triggerUpdate() {
    var elements = document.getElementsByClassName("realtime"); //Change parameter into whatever class name single line data are 
    for (var i = 0; i < elements.length; i++) {
        load(elements[i].id);
    }
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
            
        }
    }
    );
}

