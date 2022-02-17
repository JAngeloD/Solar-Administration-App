$(document).ready(function () {
    setIntervalImmediately(3000);
});

function setIntervalImmediately(interval) {
    changeState("dynamicState1")
    changeState("dynamicState2")
    return setInterval(function () {
        changeState("dynamicState1")
        changeState("dynamicState2")
    }, interval);
}

function changeState(className) {
    req = $.ajax({
        url: "ajaxdiagramhandler",
        data: {style: $('.' + className).attr("style")},
        type: 'POST',
        cache: false,
        success: function (data) {
            $('.' + className).attr("style", data);
        },
        error: function () {
            alert('error');
        }
    });
}
