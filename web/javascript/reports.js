function toggleDisplay(id) {
    var x = document.getElementById(id);

    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        if (x.style.display === "") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
}

function toggleDisplayCSV() {
    if (document.getElementById('csvReport').checked) {
        document.getElementById("pcc").style.display = "block";
        document.getElementById("feeders").style.display = "block";
        document.getElementById("inverters").style.display = "block";
        document.getElementById("weather").style.display = "block";
    } else {
        document.getElementById("pcc").style.display = "none";
        document.getElementById("feeders").style.display = "none";
        document.getElementById("inverters").style.display = "none";
        document.getElementById("weather").style.display = "none";

        document.getElementById("pccBlock").style.display = "none";
        document.getElementById("fdrs").style.display = "none";
        document.getElementById("invtrs").style.display = "none";
        document.getElementById("wthr").style.display = "none";

        var uncheck = document.getElementsByTagName('input');
        for (var i = 0; i < uncheck.length; i++)
        {
            if (uncheck[i].type === 'checkbox')
            {
                uncheck[i].checked = false;
            }
        }
    }
}
