$(document).ready(function () {
    setIntervalImmediately(6000);
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
            var deviceId = "";
            if(!isNaN(requestType.substring(requestType.length - 1))) {
                deviceId = requestType.substring(requestType.length - 2);
            }
            
            var deviceName = requestType.substring(0, requestType.indexOf("_"));
            errorAlert("Error could not load one or more values for "+ deviceName + " " + deviceId + ". Contact your local admin");
        }
    }
    );
}