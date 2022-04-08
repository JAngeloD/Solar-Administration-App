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
    }
    else {
        document.getElementById("pcc").style.display = "none";
        document.getElementById("feeders").style.display = "none";
        document.getElementById("inverters").style.display = "none";
        document.getElementById("weather").style.display = "none";
    }
}