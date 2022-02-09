$(document).ready(function () {
    setInterval( function () {changeState("dynamicState")}, 2000);
});

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
