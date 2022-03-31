let choiceValue = document.querySelector('#reportChoice').value;
let startDate = document.getElementById('startDate').value;
let endDate = document.getElementById('endDate').value;

if (choiceValue === "Anual Energy at PCC") {
    choiceValue = 1;
} else if (choiceValue === "PCC year to year comparison") {
    choiceValue = 2;
} else if (choiceValue === "Year to date") {
    choiceValue = 3;
} else if (choiceValue === "Month comparison in the last 5 years") {
    choiceValue = 4;
}

var myWindow = window.open("http://localhost:8084/solar/reportOutput?reportType="+choiceValue+"&startDate="+startDate+"&endDate="+endDate, "ReportWindow");
