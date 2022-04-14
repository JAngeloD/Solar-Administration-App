function errorAlert(msg) {
    $(".bootstrap-growl").remove();
    $.bootstrapGrowl(msg, {
        type: 'error', // (null, 'info', 'error', 'success')
        align: 'center', // ('left', 'right', or 'center')
        width: 'auto', // (integer, or 'auto')
        delay: 3000,
        allow_dismiss: false,
        stackup_spacing: 0 // spacing between consecutively stacked growls.
    });
}

function successAlert(msg) {
    $(".bootstrap-growl").remove();
    $.bootstrapGrowl(msg, {
        type: 'info', // (null, 'info', 'error', 'success')
        align: 'center', // ('left', 'right', or 'center')
        width: 'auto', // (integer, or 'auto')
        delay: 10000,
        allow_dismiss: false,
        stackup_spacing: 0 // spacing between consecutively stacked growls.
    });
}
