<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF/css/reportOutput.css"%></style>
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <title>Report Output</title>
    </head>
    <body>
        <h1 id='mainHeader'>
            <c:if test="${reportChoice == '1'}">PCC Output for ${start} to ${end}.</c:if>
            <c:if test="${reportChoice == '2'}">PCC year to year comparison.</c:if>
            <c:if test="${reportChoice == '3'}">${year} PCC Output to date.</c:if>
            <c:if test="${reportChoice == '4'}">Month comparison in the last 5 years.</c:if>
            </h1>
            <h2 id='secondHeader'>MFN Solar Facility Report Output</h2>

            <div id='reportDiv'>
                <div id='graphBox'>
                    <div id='reportOutput'></div>
                </div>
                <div id='tableBox'>
                <c:if test="${reportChoice == '1' || reportChoice == '3'}">
                    <p> | - means the start of a new year </p>
                    <table id="table" class="table table-hover table-bordered ">
                        <thead>
                        <tr>
                            <th scope="col"colspan='3'>${start} to ${end}</th>
                        </tr>
                        <tr>
                            <th scope="col">Month</th>
                            <th scope="col">Energy (MWhrs)</th>
                            <th scope="col">Cumulative Energy</th>
                        </tr>
                        </thead>
                        <tbody> 
                        <c:forEach var="out" items="${output}">
                           
                            <tr>
                                <td>
                                    ${out.xString}
                                </td>
                                <td>
                                    ${out.y1}
                                </td>
                                <td>
                                    ${out.y2}
                                </td>
                            </tr>
                           
                        </c:forEach>
                             </tbody>
                    </table>
                </c:if>
                <c:if test="${reportChoice == '2'}">
                    <table id="table" class="table table-hover table-bordered ">
                        <thead>
                        <tr>
                            <th scope="col" colspan='2'>PCC Yearly Energy last 5 years.</th>
                        </tr>
                        <tr>
                            <th scope="col"><b>Year</th>
                            <th scope="col"><b>Energy (MWhrs)</th>
                        </tr>
                        </thead>
                         <tbody>
                        <c:forEach var="out" items="${output}">
                           
                            <tr>
                                <td>
                                    ${out.x}
                                </td>
                                <td>
                                    ${out.y1}
                                </td>
                            </tr>
                           
                        </c:forEach>
                             </tbody>
                    </table>
                </c:if>
                <c:if test="${reportChoice == '4'}">
                    <table id="table" class="table table-hover table-bordered ">
                         <thead>
                        <tr>
                            <th scope="col"colspan='2'>Monthly Energy Comparison over the last 5 years</th>
                        </tr>
                        <tr>
                            <th scope="col">Year</th>
                            <th scope="col">Energy (MWhrs)</th>
                        </tr>
                         </thead>
                          <tbody>
                        <c:forEach var="out" items="${output}">
                           
                            <tr>
                                <td>
                                    ${out.x}
                                </td>
                                <td>
                                    ${out.y1}
                                </td>
                            </tr>
                           
                        </c:forEach>
                             </tbody>
                    </table>
                </c:if>

            </div>

        </div>



        <!-- Need somewhere to hold the report type value -->
        <input type='hidden' name='reportChoice' id='reportChoice' value='${reportChoice}'/>

        <!-- Need somewhere to hold the current year value -->
        <input type='hidden' name='year' id='year' value='${year}'/>

        <!-- Need somewhere to hold the x values -->
        <c:forEach var="x1" items="${x}">
            <input type="hidden" name="x[]" value="${x1}">
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
