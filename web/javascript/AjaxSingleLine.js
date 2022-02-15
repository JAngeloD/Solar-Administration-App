$(document).ready(function () {
    setInterval(triggerUpdate, 3000);
});

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
            $('#' + requestType).attr("value", data);
        },
        error: function (xhr, status, error) {
            alert(xhr.responseText);
        }
    }
    );
}
;

