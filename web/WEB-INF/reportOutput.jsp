<%-- 
    Document   : reportOutput
    Created on : Mar 29, 2022, 8:51:35 PM
    Author     : 821320
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <title>Report Output</title>
    </head>
    <body>
        <h1>Report Output</h1>
        
        <div id='reportOutput'></div>
        
        <!-- Need somewhere to hold the report type value -->
        <input type='hidden' name='reportChoice' id='reportChoice' value='${reportChoice}'/>
        
        <!-- Need somewhere to hold the current year value -->
        <input type='hidden' name='year' id='year' value='${year}'/>
         
        <!-- Need somewhere to hold the x values -->
        <c:forEach var="x1" items="${x}">
            <input type="hidden" name="x[]" value="${x1}">
            ${x1}
        </c:forEach>

        <!-- Need somewhere to hold the y1 values -->
        <c:forEach var="y1a" items="${y1}">
            <input type="hidden" name="y1[]" value="${y1a}">
        </c:forEach> 

        <!-- Need somewhere to hold the y2 values -->
        <c:forEach var="y2a" items="${y2}">
            <input type="hidden" name="y2[]" value="${y2a}">
        </c:forEach> 

        <script src="javascript/ReportPlotlyPart2.js"></script>
    </body>
</html>
