$(document).ready(function () {
    setInterval(triggerUpdate, 3000);
});

function triggerUpdate() {
    var elements = document.getElementsByClassName("realtime");
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
            $('#' + requestType).text(data);
        },
        error: function () {
            alert('error');
        }
    }
    );
}
;

