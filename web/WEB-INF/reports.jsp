<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
        <link rel="stylesheet" href="repStyle.css">
        <script src="reports.js"></script>
   </head>
   <body>
    <div>
        <ul>
          <li class="menuButton"><a href="login">Logout</a></li>
          <li class="menuButton"><a href="">Account</a></li>
          <li class="menuButton"><a href="home">Home</a></li>
          <h1 class="left">REPORTS</h1>
        </ul>
    </div>
    <div>
        <form method="POST" action="createReport">
            <h3>Please select the dates</h3>
            <label>From: </label>
            <input type="datetime-local" id="fromDT">
            <label>To: </label>
            <input type="datetime-local" id="toDT">
            <br>
            <div>
                <input type="radio" id="graphReport" name="reportType" required>
                <label>Report type: </label>
                <select name="reportChoice" id="reportChoice">
                    <option name="anual1" id="anual1">Anual Energy at PCC</option>
                    <option name="ytoytPCC" id="ytoyatPCC">PCC year to year comparison</option>
                    <option name="yeartodatePCC" id="yeartodatePCC">Year to date</option>
                    <option name="monthComparisonOverYears" id="monthComparisonOverYears">Month comparison in the last 5 years</option>
                </select>
            </div>
            <div>
                <input type="radio" id="csvReport" name="reportType">
                <label>Export raw data as csv file. Choose variables:</label>
                <br>
                <div class="csvOptions">
                    <input type="checkbox" id="pcc" name="pcc" onclick="displayPCC()">
                    <label>PCC</label>
                    <div id="pccBlock">
                        <h2>PCC Parameters</h2>
                        <input type="checkbox" id="pccOutputLifetime" name="pccOutputLifetime">
                        <label>AC Output Lifetime</label><br>
                        <input type="checkbox" id="pccOutputYTD" name="pccOutputYTD">
                        <label>AC Output YTD</label><br>
                        <input type="checkbox" id="pccOutputMTD" name="pccOutputMTD">
                        <label>AC Output MTD</label><br>
                        <input type="checkbox" id="pccOutputDay" name="pccOutputDay">
                        <label>AC Output Daily</label><br>
                        <input type="checkbox" id="pccOutputRealPower" name="pccOutputRealPower">
                        <label>AC Output Real Power</label><br>
                        <input type="checkbox" id="pccApparentPower" name="pccApparentPower">
                        <label>Apparent Power</label><br>
                        <input type="checkbox" id="pccReactivePower" name="pccReactivePower">
                        <label>Reactive Power</label><br>
                        <input type="checkbox" id="pccPowerFactor" name="pccPowerFactor">
                        <label>Power Factor</label><br>
                        <input type="checkbox" id="pccPhaseACurrent" name="pccPhaseACurrent">
                        <label>Phase A Current</label><br>
                        <input type="checkbox" id="pccPhaseBCurrent" name="pccPhaseBCurrent">
                        <label>Phase B Current</label><br>
                        <input type="checkbox" id="pccPhaseCCurrent" name="pccPhaseCCurrent">
                        <label>Phase C Current</label><br>
                        <input type="checkbox" id="pccPhaseABVoltage" name="pccPhaseABVoltage">
                        <label>Phase AB Voltage</label><br>
                        <input type="checkbox" id="pccPhaseBCVoltage" name="pccPhaseBCVoltage">
                        <label>Phase BC Voltage</label><br>
                        <input type="checkbox" id="pccPhaseCAVoltage" name="pccPhaseCAVoltage">
                        <label>Phase CA Voltage</label><br><br>
                        <button type="button" onclick="closePCC()">Done selecting PCC Parameters</button>
                    </div>
                </div>
                <div class="csvOptions">
                    <input type="checkbox" id="feeders" name="feeders" onclick="displayFeeders()">
                    <label>Feeders</label>
                    <div id="fdrs">
                        <div>
                            <div>
                                <input type="checkbox" id="feeder1" name="feeder1" onclick="displayFeeder1()">
                                <label>Feeder 1</label>
                            </div>
                            <div id="fdr1">
                                <h2>Feeder 1 Parameters</h2>
                                <input type="checkbox" id="f1ACOutputRealPower" name="f1ACOutputRealPower">
                                <label>Feeder 1 Output Real Power</label><br>
                                <input type="checkbox" id="f1ApparentPower" name="f1ApparentPower">
                                <label>Feeder 1 Apparent Power</label><br>
                                <input type="checkbox" id="f1ReactivePower" name="f1ReactivePower">
                                <label>Feeder 1 Reactive Power</label><br>
                                <input type="checkbox" id="f1PowerFactor" name="f1PowerFactor">
                                <label>Feeder 1 Power Factor</label><br>
                                <input type="checkbox" id="f1PhaseACurrent" name="f1PhaseACurrent">
                                <label>Feeder 1 Phase A Current</label><br>
                                <input type="checkbox" id="f1PhaseBCurrent" name="f1PhaseBCurrent">
                                <label>Feeder 1 Phase B Current</label><br>
                                <input type="checkbox" id="f1PhaseCCurrent" name="f1PhaseCCurrent">
                                <label>Feeder 1 Phase C Current</label><br>
                                <input type="checkbox" id="f1PhaseABVoltage" name="f1PhaseABVoltage">
                                <label>Feeder 1 Phase AB Voltage</label><br>
                                <input type="checkbox" id="f1PhaseBCVoltage" name="f1PhaseBCVoltage">
                                <label>Feeder 1 Phase BC Voltage</label><br>
                                <input type="checkbox" id="f1PhaseCAVoltage" name="f1PhaseCAVoltage">
                                <label>Feeder 1 Phase CA Voltage</label><br><br>
                                <button type="button" onclick="closeFeeder1()">Done selecting feeder 1 parameters</button>
                            </div>
                        </div>
                        <div>
                            <div>
                                <input type="checkbox" id="feeder2" name="feeder2" onclick="displayFeeder2()">
                                <label>Feeder 2</label>
                            </div>
                            <div id="fdr2">
                                <h2>Feeder 2 Parameters</h2>
                                <input type="checkbox" id="f2ACOutputRealPower" name="f2ACOutputRealPower">
                                <label>Feeder 2 Output Real Power</label><br>
                                <input type="checkbox" id="f2ApparentPower" name="f2ApparentPower">
                                <label>Feeder 2 Apparent Power</label><br>
                                <input type="checkbox" id="f2ReactivePower" name="f2ReactivePower">
                                <label>Feeder 2 Reactive Power</label><br>
                                <input type="checkbox" id="f2PowerFactor" name="f2PowerFactor">
                                <label>Feeder 2 Power Factor</label><br>
                                <input type="checkbox" id="f2PhaseACurrent" name="f2PhaseACurrent">
                                <label>Feeder 2 Phase A Current</label><br>
                                <input type="checkbox" id="f2PhaseBCurrent" name="f2PhaseBCurrent">
                                <label>Feeder 2 Phase B Current</label><br>
                                <input type="checkbox" id="f2PhaseCCurrent" name="f2PhaseCCurrent">
                                <label>Feeder 2 Phase C Current</label><br>
                                <input type="checkbox" id="f2PhaseABVoltage" name="f2PhaseABVoltage">
                                <label>Feeder 2 Phase AB Voltage</label><br>
                                <input type="checkbox" id="f2PhaseBCVoltage" name="f2PhaseBCVoltage">
                                <label>Feeder 2 Phase BC Voltage</label><br>
                                <input type="checkbox" id="f2PhaseCAVoltage" name="f2PhaseCAVoltage">
                                <label>Feeder 2 Phase CA Voltage</label><br><br>
                                <button type="button" onclick="closeFeeder2()">Done selecting feeder 2 parameters</button>
                            </div>
                        </div> 
                        <button type="button" onclick="closeFeeders()">Done selecting feeders</button>                       
                    </div>
                </div>
                <div class="csvOptions">
                    <input type="checkbox" id="inverters" name="inverters" onclick="displayInverters()">
                    <label>Inverters</label>
                    <div id="invtrs">
                        <h2>Inverters List</h2>
                        <div>
                            <input type="checkbox" id="inverter1" name="inverter1" onclick="displayInverter1()">
                            <label>Inverter 1</label><br>
                            <div id="inv1">
                                <h2>Inverter 1 Parameters</h2>
                                <input type="checkbox" id="i1ACOutputLifetime" name="i1ACOutputLifetime">
                                <label>Inverter 1 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i1ACOutputYTD" name="i1ACOutputYTD">
                                <label>Inverter 1 AC Output YTD</label><br>
                                <input type="checkbox" id="i1ACOutputMTD" name="i1ACOutputMTD">
                                <label>Inverter 1 AC MTD</label><br>
                                <input type="checkbox" id="i1ACOutputDay" name="i1ACOutputDay">
                                <label>Inverter 1 AC Output Daily</label><br>
                                <input type="checkbox" id="i1ACOutputRealPower" name="i1ACOutputRealPower">
                                <label>Inverter 1 AC Output Real Power</label><br>
                                <input type="checkbox" id="i1ApparentPower" name="i1ApparentPower">
                                <label>Inverter 1 Apparent Power</label><br>
                                <input type="checkbox" id="i1ReactivePower" name="i1ReactivePower">
                                <label>Inverter 1 Reactive Power</label><br>
                                <input type="checkbox" id="i1PowerFactor" name="i1PowerFactor">
                                <label>Inverter 1 Power Factor</label><br>
                                <input type="checkbox" id="i1PhaseACurrent" name="i1PhaseACurrent">
                                <label>Inverter 1 Phase A Current</label><br>
                                <input type="checkbox" id="i1PhaseBCurrent" name="i1PhaseBCurrent">
                                <label>Inverter 1 Phase B Current</label><br>
                                <input type="checkbox" id="i1PhaseCCurrent" name="i1PhaseCCurrent">
                                <label>Inverter 1 Phase C Current</label><br>
                                <input type="checkbox" id="i1PhaseABVoltage" name="i1PhaseABVoltage">
                                <label>Inverter 1 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i1PhaseBCVoltage" name="i1PhaseBCVoltage">
                                <label>Inverter 1 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i1PhaseCAVoltage" name="i1PhaseCAVoltage">
                                <label>Inverter 1 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i1DCRealPower" name="i1DCRealPower">
                                <label>Inverter 1 DC Real Power</label><br>
                                <input type="checkbox" id="i1DCVolts" name="i1DCVolts">
                                <label>Inverter 1 DC Volts</label><br>
                                <input type="checkbox" id="i1DCCurrent" name="i1DCCurrent">
                                <label>Inverter 1 DC Current</label><br>
                                <input type="checkbox" id="i1Efficiency" name="i1Efficiency">
                                <label>Inverter 1 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter1()">Done selecting Inverter 1 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter2" name="inverter2" onclick="displayInverter2()">
                            <label>Inverter 2</label><br>
                            <div id="inv2">
                                <h2>Inverter 2 Parameters</h2>
                                <input type="checkbox" id="i2ACOutputLifetime" name="i2ACOutputLifetime">
                                <label>Inverter 2 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i2ACOutputYTD" name="i2ACOutputYTD">
                                <label>Inverter 2 AC Output YTD</label><br>
                                <input type="checkbox" id="i2ACOutputMTD" name="i2ACOutputMTD">
                                <label>Inverter 2 AC MTD</label><br>
                                <input type="checkbox" id="i2ACOutputDay" name="i2ACOutputDay">
                                <label>Inverter 2 AC Output Daily</label><br>
                                <input type="checkbox" id="i2ACOutputRealPower" name="i2ACOutputRealPower">
                                <label>Inverter 2 AC Output Real Power</label><br>
                                <input type="checkbox" id="i2ApparentPower" name="i2ApparentPower">
                                <label>Inverter 2 Apparent Power</label><br>
                                <input type="checkbox" id="i2ReactivePower" name="i2ReactivePower">
                                <label>Inverter 2 Reactive Power</label><br>
                                <input type="checkbox" id="i2PowerFactor" name="i2PowerFactor">
                                <label>Inverter 2 Power Factor</label><br>
                                <input type="checkbox" id="i2PhaseACurrent" name="i2PhaseACurrent">
                                <label>Inverter 2 Phase A Current</label><br>
                                <input type="checkbox" id="i2PhaseBCurrent" name="i2PhaseBCurrent">
                                <label>Inverter 2 Phase B Current</label><br>
                                <input type="checkbox" id="i2PhaseCCurrent" name="i2PhaseCCurrent">
                                <label>Inverter 2 Phase C Current</label><br>
                                <input type="checkbox" id="i2PhaseABVoltage" name="i2PhaseABVoltage">
                                <label>Inverter 2 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i2PhaseBCVoltage" name="i2PhaseBCVoltage">
                                <label>Inverter 2 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i2PhaseCAVoltage" name="i2PhaseCAVoltage">
                                <label>Inverter 2 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i2DCRealPower" name="i2DCRealPower">
                                <label>Inverter 2 DC Real Power</label><br>
                                <input type="checkbox" id="i2DCVolts" name="i2DCVolts">
                                <label>Inverter 2 DC Volts</label><br>
                                <input type="checkbox" id="i2DCCurrent" name="i2DCCurrent">
                                <label>Inverter 2 DC Current</label><br>
                                <input type="checkbox" id="i2Efficiency" name="i2Efficiency">
                                <label>Inverter 2 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter2()">Done selecting Inverter 2 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter3" name="inverter3" onclick="displayInverter3()">
                            <label>Inverter 3</label><br>
                            <div id="inv3">
                                <h2>Inverter 3 Parameters</h2>
                                <input type="checkbox" id="i3ACOutputLifetime" name="i3ACOutputLifetime">
                                <label>Inverter 3 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i3ACOutputYTD" name="i3ACOutputYTD">
                                <label>Inverter 3 AC Output YTD</label><br>
                                <input type="checkbox" id="i3ACOutputMTD" name="i3ACOutputMTD">
                                <label>Inverter 3 AC MTD</label><br>
                                <input type="checkbox" id="i3ACOutputDay" name="i3ACOutputDay">
                                <label>Inverter 3 AC Output Daily</label><br>
                                <input type="checkbox" id="i3ACOutputRealPower" name="i3ACOutputRealPower">
                                <label>Inverter 3 AC Output Real Power</label><br>
                                <input type="checkbox" id="i3ApparentPower" name="i3ApparentPower">
                                <label>Inverter 3 Apparent Power</label><br>
                                <input type="checkbox" id="i3ReactivePower" name="i3ReactivePower">
                                <label>Inverter 3 Reactive Power</label><br>
                                <input type="checkbox" id="i3PowerFactor" name="i3PowerFactor">
                                <label>Inverter 3 Power Factor</label><br>
                                <input type="checkbox" id="i3PhaseACurrent" name="i3PhaseACurrent">
                                <label>Inverter 3 Phase A Current</label><br>
                                <input type="checkbox" id="i3PhaseBCurrent" name="i3PhaseBCurrent">
                                <label>Inverter 3 Phase B Current</label><br>
                                <input type="checkbox" id="i3PhaseCCurrent" name="i3PhaseCCurrent">
                                <label>Inverter 3 Phase C Current</label><br>
                                <input type="checkbox" id="i3PhaseABVoltage" name="i3PhaseABVoltage">
                                <label>Inverter 3 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i3PhaseBCVoltage" name="i3PhaseBCVoltage">
                                <label>Inverter 3 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i3PhaseCAVoltage" name="i3PhaseCAVoltage">
                                <label>Inverter 3 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i3DCRealPower" name="i3DCRealPower">
                                <label>Inverter 3 DC Real Power</label><br>
                                <input type="checkbox" id="i3DCVolts" name="i3DCVolts">
                                <label>Inverter 3 DC Volts</label><br>
                                <input type="checkbox" id="i3DCCurrent" name="i3DCCurrent">
                                <label>Inverter 3 DC Current</label><br>
                                <input type="checkbox" id="i3Efficiency" name="i3Efficiency">
                                <label>Inverter 3 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter3()">Done selecting Inverter 3 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter4" name="inverter4" onclick="displayInverter4()">
                            <label>Inverter 4</label><br>
                            <div id="inv4">
                                <h2>Inverter 4 Parameters</h2>
                                <input type="checkbox" id="i4ACOutputLifetime" name="i4ACOutputLifetime">
                                <label>Inverter 4 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i4ACOutputYTD" name="i4ACOutputYTD">
                                <label>Inverter 4 AC Output YTD</label><br>
                                <input type="checkbox" id="i4ACOutputMTD" name="i4ACOutputMTD">
                                <label>Inverter 4 AC MTD</label><br>
                                <input type="checkbox" id="i4ACOutputDay" name="i4ACOutputDay">
                                <label>Inverter 4 AC Output Daily</label><br>
                                <input type="checkbox" id="i4ACOutputRealPower" name="i4ACOutputRealPower">
                                <label>Inverter 4 AC Output Real Power</label><br>
                                <input type="checkbox" id="i4ApparentPower" name="i4ApparentPower">
                                <label>Inverter 4 Apparent Power</label><br>
                                <input type="checkbox" id="i4ReactivePower" name="i4ReactivePower">
                                <label>Inverter 4 Reactive Power</label><br>
                                <input type="checkbox" id="i4PowerFactor" name="i4PowerFactor">
                                <label>Inverter 4 Power Factor</label><br>
                                <input type="checkbox" id="i4PhaseACurrent" name="i4PhaseACurrent">
                                <label>Inverter 4 Phase A Current</label><br>
                                <input type="checkbox" id="i4PhaseBCurrent" name="i4PhaseBCurrent">
                                <label>Inverter 4 Phase B Current</label><br>
                                <input type="checkbox" id="i4PhaseCCurrent" name="i4PhaseCCurrent">
                                <label>Inverter 4 Phase C Current</label><br>
                                <input type="checkbox" id="i4PhaseABVoltage" name="i4PhaseABVoltage">
                                <label>Inverter 4 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i4PhaseBCVoltage" name="i4PhaseBCVoltage">
                                <label>Inverter 4 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i4PhaseCAVoltage" name="i4PhaseCAVoltage">
                                <label>Inverter 4 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i4DCRealPower" name="i4DCRealPower">
                                <label>Inverter 4 DC Real Power</label><br>
                                <input type="checkbox" id="i4DCVolts" name="i4DCVolts">
                                <label>Inverter 4 DC Volts</label><br>
                                <input type="checkbox" id="i4DCCurrent" name="i4DCCurrent">
                                <label>Inverter 4 DC Current</label><br>
                                <input type="checkbox" id="i4Efficiency" name="i4Efficiency">
                                <label>Inverter 4 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter4()">Done selecting Inverter 4 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter5" name="inverter5" onclick="displayInverter5()">
                            <label>Inverter 5</label><br>
                            <div id="inv5">
                                <h2>Inverter 5 Parameters</h2>
                                <input type="checkbox" id="i5ACOutputLifetime" name="i5ACOutputLifetime">
                                <label>Inverter 5 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i5ACOutputYTD" name="i5ACOutputYTD">
                                <label>Inverter 5 AC Output YTD</label><br>
                                <input type="checkbox" id="i5ACOutputMTD" name="i5ACOutputMTD">
                                <label>Inverter 5 AC MTD</label><br>
                                <input type="checkbox" id="i5ACOutputDay" name="i5ACOutputDay">
                                <label>Inverter 5 AC Output Daily</label><br>
                                <input type="checkbox" id="i5ACOutputRealPower" name="i5ACOutputRealPower">
                                <label>Inverter 5 AC Output Real Power</label><br>
                                <input type="checkbox" id="i5ApparentPower" name="i5ApparentPower">
                                <label>Inverter 5 Apparent Power</label><br>
                                <input type="checkbox" id="i5ReactivePower" name="i5ReactivePower">
                                <label>Inverter 5 Reactive Power</label><br>
                                <input type="checkbox" id="i5PowerFactor" name="i5PowerFactor">
                                <label>Inverter 5 Power Factor</label><br>
                                <input type="checkbox" id="i5PhaseACurrent" name="i5PhaseACurrent">
                                <label>Inverter 5 Phase A Current</label><br>
                                <input type="checkbox" id="i5PhaseBCurrent" name="i5PhaseBCurrent">
                                <label>Inverter 5 Phase B Current</label><br>
                                <input type="checkbox" id="i5PhaseCCurrent" name="i5PhaseCCurrent">
                                <label>Inverter 5 Phase C Current</label><br>
                                <input type="checkbox" id="i5PhaseABVoltage" name="i5PhaseABVoltage">
                                <label>Inverter 5 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i5PhaseBCVoltage" name="i5PhaseBCVoltage">
                                <label>Inverter 5 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i5PhaseCAVoltage" name="i5PhaseCAVoltage">
                                <label>Inverter 5 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i5DCRealPower" name="i5DCRealPower">
                                <label>Inverter 5 DC Real Power</label><br>
                                <input type="checkbox" id="i5DCVolts" name="i5DCVolts">
                                <label>Inverter 5 DC Volts</label><br>
                                <input type="checkbox" id="i5DCCurrent" name="i5DCCurrent">
                                <label>Inverter 5 DC Current</label><br>
                                <input type="checkbox" id="i5Efficiency" name="i5Efficiency">
                                <label>Inverter 5 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter5()">Done selecting Inverter 5 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter6" name="inverter6" onclick="displayInverter6()">
                            <label>Inverter 6</label><br>
                            <div id="inv6">
                                <h2>Inverter 6 Parameters</h2>
                                <input type="checkbox" id="i6ACOutputLifetime" name="i6ACOutputLifetime">
                                <label>Inverter 6 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i6ACOutputYTD" name="i6ACOutputYTD">
                                <label>Inverter 6 AC Output YTD</label><br>
                                <input type="checkbox" id="i6ACOutputMTD" name="i6ACOutputMTD">
                                <label>Inverter 6 AC MTD</label><br>
                                <input type="checkbox" id="i6ACOutputDay" name="i6ACOutputDay">
                                <label>Inverter 6 AC Output Daily</label><br>
                                <input type="checkbox" id="i6ACOutputRealPower" name="i6ACOutputRealPower">
                                <label>Inverter 6 AC Output Real Power</label><br>
                                <input type="checkbox" id="i6ApparentPower" name="i6ApparentPower">
                                <label>Inverter 6 Apparent Power</label><br>
                                <input type="checkbox" id="i6ReactivePower" name="i6ReactivePower">
                                <label>Inverter 6 Reactive Power</label><br>
                                <input type="checkbox" id="i6PowerFactor" name="i6PowerFactor">
                                <label>Inverter 6 Power Factor</label><br>
                                <input type="checkbox" id="i6PhaseACurrent" name="i6PhaseACurrent">
                                <label>Inverter 6 Phase A Current</label><br>
                                <input type="checkbox" id="i6PhaseBCurrent" name="i6PhaseBCurrent">
                                <label>Inverter 6 Phase B Current</label><br>
                                <input type="checkbox" id="i6PhaseCCurrent" name="i6PhaseCCurrent">
                                <label>Inverter 6 Phase C Current</label><br>
                                <input type="checkbox" id="i6PhaseABVoltage" name="i6PhaseABVoltage">
                                <label>Inverter 6 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i6PhaseBCVoltage" name="i6PhaseBCVoltage">
                                <label>Inverter 6 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i6PhaseCAVoltage" name="i6PhaseCAVoltage">
                                <label>Inverter 6 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i6DCRealPower" name="i6DCRealPower">
                                <label>Inverter 6 DC Real Power</label><br>
                                <input type="checkbox" id="i6DCVolts" name="i6DCVolts">
                                <label>Inverter 6 DC Volts</label><br>
                                <input type="checkbox" id="i6DCCurrent" name="i6DCCurrent">
                                <label>Inverter 6 DC Current</label><br>
                                <input type="checkbox" id="i6Efficiency" name="i6Efficiency">
                                <label>Inverter 6 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter6()">Done selecting Inverter 6 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter7" name="inverter7" onclick="displayInverter7()">
                            <label>Inverter 7</label><br>
                            <div id="inv7">
                                <h2>Inverter 7 Parameters</h2>
                                <input type="checkbox" id="i7ACOutputLifetime" name="i7ACOutputLifetime">
                                <label>Inverter 7 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i7ACOutputYTD" name="i7ACOutputYTD">
                                <label>Inverter 7 AC Output YTD</label><br>
                                <input type="checkbox" id="i7ACOutputMTD" name="i7ACOutputMTD">
                                <label>Inverter 7 AC MTD</label><br>
                                <input type="checkbox" id="i7ACOutputDay" name="i7ACOutputDay">
                                <label>Inverter 7 AC Output Daily</label><br>
                                <input type="checkbox" id="i7ACOutputRealPower" name="i7ACOutputRealPower">
                                <label>Inverter 7 AC Output Real Power</label><br>
                                <input type="checkbox" id="i7ApparentPower" name="i7ApparentPower">
                                <label>Inverter 7 Apparent Power</label><br>
                                <input type="checkbox" id="i7ReactivePower" name="i7ReactivePower">
                                <label>Inverter 7 Reactive Power</label><br>
                                <input type="checkbox" id="i7PowerFactor" name="i7PowerFactor">
                                <label>Inverter 7 Power Factor</label><br>
                                <input type="checkbox" id="i7PhaseACurrent" name="i7PhaseACurrent">
                                <label>Inverter 7 Phase A Current</label><br>
                                <input type="checkbox" id="i7PhaseBCurrent" name="i7PhaseBCurrent">
                                <label>Inverter 7 Phase B Current</label><br>
                                <input type="checkbox" id="i7PhaseCCurrent" name="i7PhaseCCurrent">
                                <label>Inverter 7 Phase C Current</label><br>
                                <input type="checkbox" id="i7PhaseABVoltage" name="i7PhaseABVoltage">
                                <label>Inverter 7 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i7PhaseBCVoltage" name="i7PhaseBCVoltage">
                                <label>Inverter 7 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i7PhaseCAVoltage" name="i7PhaseCAVoltage">
                                <label>Inverter 7 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i7DCRealPower" name="i7DCRealPower">
                                <label>Inverter 7 DC Real Power</label><br>
                                <input type="checkbox" id="i7DCVolts" name="i7DCVolts">
                                <label>Inverter 7 DC Volts</label><br>
                                <input type="checkbox" id="i7DCCurrent" name="i7DCCurrent">
                                <label>Inverter 7 DC Current</label><br>
                                <input type="checkbox" id="i7Efficiency" name="i7Efficiency">
                                <label>Inverter 7 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter7()">Done selecting Inverter 7 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter8" name="inverter8" onclick="displayInverter8()">
                            <label>Inverter 8</label><br>
                            <div id="inv8">
                                <h2>Inverter 8 Parameters</h2>
                                <input type="checkbox" id="i8ACOutputLifetime" name="i8ACOutputLifetime">
                                <label>Inverter 8 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i8ACOutputYTD" name="i8ACOutputYTD">
                                <label>Inverter 8 AC Output YTD</label><br>
                                <input type="checkbox" id="i8ACOutputMTD" name="i8ACOutputMTD">
                                <label>Inverter 8 AC MTD</label><br>
                                <input type="checkbox" id="i8ACOutputDay" name="i8ACOutputDay">
                                <label>Inverter 8 AC Output Daily</label><br>
                                <input type="checkbox" id="i8ACOutputRealPower" name="i8ACOutputRealPower">
                                <label>Inverter 8 AC Output Real Power</label><br>
                                <input type="checkbox" id="i8ApparentPower" name="i8ApparentPower">
                                <label>Inverter 8 Apparent Power</label><br>
                                <input type="checkbox" id="i8ReactivePower" name="i8ReactivePower">
                                <label>Inverter 8 Reactive Power</label><br>
                                <input type="checkbox" id="i8PowerFactor" name="i8PowerFactor">
                                <label>Inverter 8 Power Factor</label><br>
                                <input type="checkbox" id="i8PhaseACurrent" name="i8PhaseACurrent">
                                <label>Inverter 8 Phase A Current</label><br>
                                <input type="checkbox" id="i8PhaseBCurrent" name="i8PhaseBCurrent">
                                <label>Inverter 8 Phase B Current</label><br>
                                <input type="checkbox" id="i8PhaseCCurrent" name="i8PhaseCCurrent">
                                <label>Inverter 8 Phase C Current</label><br>
                                <input type="checkbox" id="i8PhaseABVoltage" name="i8PhaseABVoltage">
                                <label>Inverter 8 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i8PhaseBCVoltage" name="i8PhaseBCVoltage">
                                <label>Inverter 8 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i8PhaseCAVoltage" name="i8PhaseCAVoltage">
                                <label>Inverter 8 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i8DCRealPower" name="i8DCRealPower">
                                <label>Inverter 8 DC Real Power</label><br>
                                <input type="checkbox" id="i8DCVolts" name="i8DCVolts">
                                <label>Inverter 8 DC Volts</label><br>
                                <input type="checkbox" id="i8DCCurrent" name="i8DCCurrent">
                                <label>Inverter 8 DC Current</label><br>
                                <input type="checkbox" id="i8Efficiency" name="i8Efficiency">
                                <label>Inverter 8 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter8()">Done selecting Inverter 8 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter9" name="inverter9" onclick="displayInverter9()">
                            <label>Inverter 9</label><br>
                            <div id="inv9">
                                <h2>Inverter 9 Parameters</h2>
                                <input type="checkbox" id="i9ACOutputLifetime" name="i9ACOutputLifetime">
                                <label>Inverter 9 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i9ACOutputYTD" name="i9ACOutputYTD">
                                <label>Inverter 9 AC Output YTD</label><br>
                                <input type="checkbox" id="i9ACOutputMTD" name="i9ACOutputMTD">
                                <label>Inverter 9 AC MTD</label><br>
                                <input type="checkbox" id="i9ACOutputDay" name="i9ACOutputDay">
                                <label>Inverter 9 AC Output Daily</label><br>
                                <input type="checkbox" id="i9ACOutputRealPower" name="i9ACOutputRealPower">
                                <label>Inverter 9 AC Output Real Power</label><br>
                                <input type="checkbox" id="i9ApparentPower" name="i9ApparentPower">
                                <label>Inverter 9 Apparent Power</label><br>
                                <input type="checkbox" id="i9ReactivePower" name="i9ReactivePower">
                                <label>Inverter 9 Reactive Power</label><br>
                                <input type="checkbox" id="i9PowerFactor" name="i9PowerFactor">
                                <label>Inverter 9 Power Factor</label><br>
                                <input type="checkbox" id="i9PhaseACurrent" name="i9PhaseACurrent">
                                <label>Inverter 9 Phase A Current</label><br>
                                <input type="checkbox" id="i9PhaseBCurrent" name="i9PhaseBCurrent">
                                <label>Inverter 9 Phase B Current</label><br>
                                <input type="checkbox" id="i9PhaseCCurrent" name="i9PhaseCCurrent">
                                <label>Inverter 9 Phase C Current</label><br>
                                <input type="checkbox" id="i9PhaseABVoltage" name="i9PhaseABVoltage">
                                <label>Inverter 9 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i9PhaseBCVoltage" name="i9PhaseBCVoltage">
                                <label>Inverter 9 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i9PhaseCAVoltage" name="i9PhaseCAVoltage">
                                <label>Inverter 9 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i9DCRealPower" name="i9DCRealPower">
                                <label>Inverter 9 DC Real Power</label><br>
                                <input type="checkbox" id="i9DCVolts" name="i9DCVolts">
                                <label>Inverter 9 DC Volts</label><br>
                                <input type="checkbox" id="i9DCCurrent" name="i9DCCurrent">
                                <label>Inverter 9 DC Current</label><br>
                                <input type="checkbox" id="i9Efficiency" name="i9Efficiency">
                                <label>Inverter 9 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter9()">Done selecting Inverter 9 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter10" name="inverter10" onclick="displayInverter10()">
                            <label>Inverter 10</label><br>
                            <div id="inv10">
                                <h2>Inverter 10 Parameters</h2>
                                <input type="checkbox" id="i10ACOutputLifetime" name="i10ACOutputLifetime">
                                <label>Inverter 10 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i10ACOutputYTD" name="i10ACOutputYTD">
                                <label>Inverter 10 AC Output YTD</label><br>
                                <input type="checkbox" id="i10ACOutputMTD" name="i10ACOutputMTD">
                                <label>Inverter 10 AC MTD</label><br>
                                <input type="checkbox" id="i10ACOutputDay" name="i10ACOutputDay">
                                <label>Inverter 10 AC Output Daily</label><br>
                                <input type="checkbox" id="i10ACOutputRealPower" name="i10ACOutputRealPower">
                                <label>Inverter 10 AC Output Real Power</label><br>
                                <input type="checkbox" id="i10ApparentPower" name="i10ApparentPower">
                                <label>Inverter 10 Apparent Power</label><br>
                                <input type="checkbox" id="i10ReactivePower" name="i10ReactivePower">
                                <label>Inverter 10 Reactive Power</label><br>
                                <input type="checkbox" id="i10PowerFactor" name="i10PowerFactor">
                                <label>Inverter 10 Power Factor</label><br>
                                <input type="checkbox" id="i10PhaseACurrent" name="i10PhaseACurrent">
                                <label>Inverter 10 Phase A Current</label><br>
                                <input type="checkbox" id="i10PhaseBCurrent" name="i10PhaseBCurrent">
                                <label>Inverter 10 Phase B Current</label><br>
                                <input type="checkbox" id="i10PhaseCCurrent" name="i10PhaseCCurrent">
                                <label>Inverter 10 Phase C Current</label><br>
                                <input type="checkbox" id="i10PhaseABVoltage" name="i10PhaseABVoltage">
                                <label>Inverter 10 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i10PhaseBCVoltage" name="i10PhaseBCVoltage">
                                <label>Inverter 10 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i10PhaseCAVoltage" name="i10PhaseCAVoltage">
                                <label>Inverter 10 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i10DCRealPower" name="i10DCRealPower">
                                <label>Inverter 10 DC Real Power</label><br>
                                <input type="checkbox" id="i10DCVolts" name="i10DCVolts">
                                <label>Inverter 10 DC Volts</label><br>
                                <input type="checkbox" id="i10DCCurrent" name="i10DCCurrent">
                                <label>Inverter 10 DC Current</label><br>
                                <input type="checkbox" id="i10Efficiency" name="i10Efficiency">
                                <label>Inverter 10 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter10()">Done selecting Inverter 10 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter11" name="inverter11" onclick="displayInverter11()">
                            <label>Inverter 11</label><br>
                            <div id="inv11">
                                <h2>Inverter 11 Parameters</h2>
                                <input type="checkbox" id="i11ACOutputLifetime" name="i11ACOutputLifetime">
                                <label>Inverter 11 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i11ACOutputYTD" name="i11ACOutputYTD">
                                <label>Inverter 11 AC Output YTD</label><br>
                                <input type="checkbox" id="i11ACOutputMTD" name="i11ACOutputMTD">
                                <label>Inverter 11 AC MTD</label><br>
                                <input type="checkbox" id="i11ACOutputDay" name="i11ACOutputDay">
                                <label>Inverter 11 AC Output Daily</label><br>
                                <input type="checkbox" id="i11ACOutputRealPower" name="i11ACOutputRealPower">
                                <label>Inverter 11 AC Output Real Power</label><br>
                                <input type="checkbox" id="i11ApparentPower" name="i11ApparentPower">
                                <label>Inverter 11 Apparent Power</label><br>
                                <input type="checkbox" id="i11ReactivePower" name="i11ReactivePower">
                                <label>Inverter 11 Reactive Power</label><br>
                                <input type="checkbox" id="i11PowerFactor" name="i11PowerFactor">
                                <label>Inverter 11 Power Factor</label><br>
                                <input type="checkbox" id="i11PhaseACurrent" name="i11PhaseACurrent">
                                <label>Inverter 11 Phase A Current</label><br>
                                <input type="checkbox" id="i11PhaseBCurrent" name="i11PhaseBCurrent">
                                <label>Inverter 11 Phase B Current</label><br>
                                <input type="checkbox" id="i11PhaseCCurrent" name="i11PhaseCCurrent">
                                <label>Inverter 11 Phase C Current</label><br>
                                <input type="checkbox" id="i11PhaseABVoltage" name="i11PhaseABVoltage">
                                <label>Inverter 11 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i11PhaseBCVoltage" name="i11PhaseBCVoltage">
                                <label>Inverter 11 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i11PhaseCAVoltage" name="i11PhaseCAVoltage">
                                <label>Inverter 11 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i11DCRealPower" name="i11DCRealPower">
                                <label>Inverter 11 DC Real Power</label><br>
                                <input type="checkbox" id="i11DCVolts" name="i11DCVolts">
                                <label>Inverter 11 DC Volts</label><br>
                                <input type="checkbox" id="i11DCCurrent" name="i11DCCurrent">
                                <label>Inverter 11 DC Current</label><br>
                                <input type="checkbox" id="i11Efficiency" name="i11Efficiency">
                                <label>Inverter 11 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter11()">Done selecting Inverter 11 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter12" name="inverter12" onclick="displayInverter12()">
                            <label>Inverter 12</label><br>
                            <div id="inv12">
                                <h2>Inverter 12 Parameters</h2>
                                <input type="checkbox" id="i12ACOutputLifetime" name="i12ACOutputLifetime">
                                <label>Inverter 12 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i12ACOutputYTD" name="i12ACOutputYTD">
                                <label>Inverter 12 AC Output YTD</label><br>
                                <input type="checkbox" id="i12ACOutputMTD" name="i12ACOutputMTD">
                                <label>Inverter 12 AC MTD</label><br>
                                <input type="checkbox" id="i12ACOutputDay" name="i12ACOutputDay">
                                <label>Inverter 12 AC Output Daily</label><br>
                                <input type="checkbox" id="i12ACOutputRealPower" name="i12ACOutputRealPower">
                                <label>Inverter 12 AC Output Real Power</label><br>
                                <input type="checkbox" id="i12ApparentPower" name="i12ApparentPower">
                                <label>Inverter 12 Apparent Power</label><br>
                                <input type="checkbox" id="i12ReactivePower" name="i12ReactivePower">
                                <label>Inverter 12 Reactive Power</label><br>
                                <input type="checkbox" id="i12PowerFactor" name="i12PowerFactor">
                                <label>Inverter 12 Power Factor</label><br>
                                <input type="checkbox" id="i12PhaseACurrent" name="i12PhaseACurrent">
                                <label>Inverter 12 Phase A Current</label><br>
                                <input type="checkbox" id="i12PhaseBCurrent" name="i12PhaseBCurrent">
                                <label>Inverter 12 Phase B Current</label><br>
                                <input type="checkbox" id="i12PhaseCCurrent" name="i12PhaseCCurrent">
                                <label>Inverter 12 Phase C Current</label><br>
                                <input type="checkbox" id="i12PhaseABVoltage" name="i12PhaseABVoltage">
                                <label>Inverter 12 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i12PhaseBCVoltage" name="i12PhaseBCVoltage">
                                <label>Inverter 12 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i12PhaseCAVoltage" name="i12PhaseCAVoltage">
                                <label>Inverter 12 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i12DCRealPower" name="i12DCRealPower">
                                <label>Inverter 12 DC Real Power</label><br>
                                <input type="checkbox" id="i12DCVolts" name="i12DCVolts">
                                <label>Inverter 12 DC Volts</label><br>
                                <input type="checkbox" id="i12DCCurrent" name="i12DCCurrent">
                                <label>Inverter 12 DC Current</label><br>
                                <input type="checkbox" id="i12Efficiency" name="i12Efficiency">
                                <label>Inverter 12 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter12()">Done selecting Inverter 12 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter13" name="inverter13" onclick="displayInverter13()">
                            <label>Inverter 13</label><br>
                            <div id="inv13">
                                <h2>Inverter 13 Parameters</h2>
                                <input type="checkbox" id="i13ACOutputLifetime" name="i13ACOutputLifetime">
                                <label>Inverter 13 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i13ACOutputYTD" name="i13ACOutputYTD">
                                <label>Inverter 13 AC Output YTD</label><br>
                                <input type="checkbox" id="i13ACOutputMTD" name="i13ACOutputMTD">
                                <label>Inverter 13 AC MTD</label><br>
                                <input type="checkbox" id="i13ACOutputDay" name="i13ACOutputDay">
                                <label>Inverter 13 AC Output Daily</label><br>
                                <input type="checkbox" id="i13ACOutputRealPower" name="i13ACOutputRealPower">
                                <label>Inverter 13 AC Output Real Power</label><br>
                                <input type="checkbox" id="i13ApparentPower" name="i13ApparentPower">
                                <label>Inverter 13 Apparent Power</label><br>
                                <input type="checkbox" id="i13ReactivePower" name="i13ReactivePower">
                                <label>Inverter 13 Reactive Power</label><br>
                                <input type="checkbox" id="i13PowerFactor" name="i13PowerFactor">
                                <label>Inverter 13 Power Factor</label><br>
                                <input type="checkbox" id="i13PhaseACurrent" name="i13PhaseACurrent">
                                <label>Inverter 13 Phase A Current</label><br>
                                <input type="checkbox" id="i13PhaseBCurrent" name="i13PhaseBCurrent">
                                <label>Inverter 13 Phase B Current</label><br>
                                <input type="checkbox" id="i13PhaseCCurrent" name="i13PhaseCCurrent">
                                <label>Inverter 13 Phase C Current</label><br>
                                <input type="checkbox" id="i13PhaseABVoltage" name="i13PhaseABVoltage">
                                <label>Inverter 13 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i13PhaseBCVoltage" name="i13PhaseBCVoltage">
                                <label>Inverter 13 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i13PhaseCAVoltage" name="i13PhaseCAVoltage">
                                <label>Inverter 13 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i13DCRealPower" name="i13DCRealPower">
                                <label>Inverter 13 DC Real Power</label><br>
                                <input type="checkbox" id="i13DCVolts" name="i13DCVolts">
                                <label>Inverter 13 DC Volts</label><br>
                                <input type="checkbox" id="i13DCCurrent" name="i13DCCurrent">
                                <label>Inverter 13 DC Current</label><br>
                                <input type="checkbox" id="i13Efficiency" name="i13Efficiency">
                                <label>Inverter 13 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter13()">Done selecting Inverter 13 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter14" name="inverter14" onclick="displayInverter14()">
                            <label>Inverter 14</label><br>
                            <div id="inv14">
                                <h2>Inverter 14 Parameters</h2>
                                <input type="checkbox" id="i14ACOutputLifetime" name="i14ACOutputLifetime">
                                <label>Inverter 14 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i14ACOutputYTD" name="i14ACOutputYTD">
                                <label>Inverter 14 AC Output YTD</label><br>
                                <input type="checkbox" id="i14ACOutputMTD" name="i14ACOutputMTD">
                                <label>Inverter 14 AC MTD</label><br>
                                <input type="checkbox" id="i14ACOutputDay" name="i14ACOutputDay">
                                <label>Inverter 14 AC Output Daily</label><br>
                                <input type="checkbox" id="i14ACOutputRealPower" name="i14ACOutputRealPower">
                                <label>Inverter 14 AC Output Real Power</label><br>
                                <input type="checkbox" id="i14ApparentPower" name="i14ApparentPower">
                                <label>Inverter 14 Apparent Power</label><br>
                                <input type="checkbox" id="i14ReactivePower" name="i14ReactivePower">
                                <label>Inverter 14 Reactive Power</label><br>
                                <input type="checkbox" id="i14PowerFactor" name="i14PowerFactor">
                                <label>Inverter 14 Power Factor</label><br>
                                <input type="checkbox" id="i14PhaseACurrent" name="i14PhaseACurrent">
                                <label>Inverter 14 Phase A Current</label><br>
                                <input type="checkbox" id="i14PhaseBCurrent" name="i14PhaseBCurrent">
                                <label>Inverter 14 Phase B Current</label><br>
                                <input type="checkbox" id="i14PhaseCCurrent" name="i14PhaseCCurrent">
                                <label>Inverter 14 Phase C Current</label><br>
                                <input type="checkbox" id="i14PhaseABVoltage" name="i14PhaseABVoltage">
                                <label>Inverter 14 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i14PhaseBCVoltage" name="i14PhaseBCVoltage">
                                <label>Inverter 14 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i14PhaseCAVoltage" name="i14PhaseCAVoltage">
                                <label>Inverter 14 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i14DCRealPower" name="i14DCRealPower">
                                <label>Inverter 14 DC Real Power</label><br>
                                <input type="checkbox" id="i14DCVolts" name="i14DCVolts">
                                <label>Inverter 14 DC Volts</label><br>
                                <input type="checkbox" id="i14DCCurrent" name="i14DCCurrent">
                                <label>Inverter 14 DC Current</label><br>
                                <input type="checkbox" id="i14Efficiency" name="i14Efficiency">
                                <label>Inverter 14 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter14()">Done selecting Inverter 14 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter15" name="inverter15" onclick="displayInverter15()">
                            <label>Inverter 15</label><br>
                            <div id="inv15">
                                <h2>Inverter 15 Parameters</h2>
                                <input type="checkbox" id="i15ACOutputLifetime" name="i15ACOutputLifetime">
                                <label>Inverter 15 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i15ACOutputYTD" name="i15ACOutputYTD">
                                <label>Inverter 15 AC Output YTD</label><br>
                                <input type="checkbox" id="i15ACOutputMTD" name="i15ACOutputMTD">
                                <label>Inverter 15 AC MTD</label><br>
                                <input type="checkbox" id="i15ACOutputDay" name="i15ACOutputDay">
                                <label>Inverter 15 AC Output Daily</label><br>
                                <input type="checkbox" id="i15ACOutputRealPower" name="i15ACOutputRealPower">
                                <label>Inverter 15 AC Output Real Power</label><br>
                                <input type="checkbox" id="i15ApparentPower" name="i15ApparentPower">
                                <label>Inverter 15 Apparent Power</label><br>
                                <input type="checkbox" id="i15ReactivePower" name="i15ReactivePower">
                                <label>Inverter 15 Reactive Power</label><br>
                                <input type="checkbox" id="i15PowerFactor" name="i15PowerFactor">
                                <label>Inverter 15 Power Factor</label><br>
                                <input type="checkbox" id="i15PhaseACurrent" name="i15PhaseACurrent">
                                <label>Inverter 15 Phase A Current</label><br>
                                <input type="checkbox" id="i15PhaseBCurrent" name="i15PhaseBCurrent">
                                <label>Inverter 15 Phase B Current</label><br>
                                <input type="checkbox" id="i15PhaseCCurrent" name="i15PhaseCCurrent">
                                <label>Inverter 15 Phase C Current</label><br>
                                <input type="checkbox" id="i15PhaseABVoltage" name="i15PhaseABVoltage">
                                <label>Inverter 15 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i15PhaseBCVoltage" name="i15PhaseBCVoltage">
                                <label>Inverter 15 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i15PhaseCAVoltage" name="i15PhaseCAVoltage">
                                <label>Inverter 15 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i15DCRealPower" name="i15DCRealPower">
                                <label>Inverter 15 DC Real Power</label><br>
                                <input type="checkbox" id="i15DCVolts" name="i15DCVolts">
                                <label>Inverter 15 DC Volts</label><br>
                                <input type="checkbox" id="i15DCCurrent" name="i15DCCurrent">
                                <label>Inverter 15 DC Current</label><br>
                                <input type="checkbox" id="i15Efficiency" name="i15Efficiency">
                                <label>Inverter 15 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter15()">Done selecting Inverter 15 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter16" name="inverter16" onclick="displayInverter16()">
                            <label>Inverter 16</label><br>
                            <div id="inv16">
                                <h2>Inverter 16 Parameters</h2>
                                <input type="checkbox" id="i16ACOutputLifetime" name="i16ACOutputLifetime">
                                <label>Inverter 16 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i16ACOutputYTD" name="i16ACOutputYTD">
                                <label>Inverter 16 AC Output YTD</label><br>
                                <input type="checkbox" id="i16ACOutputMTD" name="i16ACOutputMTD">
                                <label>Inverter 16 AC MTD</label><br>
                                <input type="checkbox" id="i16ACOutputDay" name="i16ACOutputDay">
                                <label>Inverter 16 AC Output Daily</label><br>
                                <input type="checkbox" id="i16ACOutputRealPower" name="i16ACOutputRealPower">
                                <label>Inverter 16 AC Output Real Power</label><br>
                                <input type="checkbox" id="i16ApparentPower" name="i16ApparentPower">
                                <label>Inverter 16 Apparent Power</label><br>
                                <input type="checkbox" id="i16ReactivePower" name="i16ReactivePower">
                                <label>Inverter 16 Reactive Power</label><br>
                                <input type="checkbox" id="i16PowerFactor" name="i16PowerFactor">
                                <label>Inverter 16 Power Factor</label><br>
                                <input type="checkbox" id="i16PhaseACurrent" name="i16PhaseACurrent">
                                <label>Inverter 16 Phase A Current</label><br>
                                <input type="checkbox" id="i16PhaseBCurrent" name="i16PhaseBCurrent">
                                <label>Inverter 16 Phase B Current</label><br>
                                <input type="checkbox" id="i16PhaseCCurrent" name="i16PhaseCCurrent">
                                <label>Inverter 16 Phase C Current</label><br>
                                <input type="checkbox" id="i16PhaseABVoltage" name="i16PhaseABVoltage">
                                <label>Inverter 16 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i16PhaseBCVoltage" name="i16PhaseBCVoltage">
                                <label>Inverter 16 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i16PhaseCAVoltage" name="i16PhaseCAVoltage">
                                <label>Inverter 16 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i16DCRealPower" name="i16DCRealPower">
                                <label>Inverter 16 DC Real Power</label><br>
                                <input type="checkbox" id="i16DCVolts" name="i16DCVolts">
                                <label>Inverter 16 DC Volts</label><br>
                                <input type="checkbox" id="i16DCCurrent" name="i16DCCurrent">
                                <label>Inverter 16 DC Current</label><br>
                                <input type="checkbox" id="i16Efficiency" name="i16Efficiency">
                                <label>Inverter 16 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter16()">Done selecting Inverter 16 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter17" name="inverter17" onclick="displayInverter17()">
                            <label>Inverter 17</label><br>
                            <div id="inv17">
                                <h2>Inverter 17 Parameters</h2>
                                <input type="checkbox" id="i17ACOutputLifetime" name="i17ACOutputLifetime">
                                <label>Inverter 17 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i17ACOutputYTD" name="i17ACOutputYTD">
                                <label>Inverter 17 AC Output YTD</label><br>
                                <input type="checkbox" id="i17ACOutputMTD" name="i17ACOutputMTD">
                                <label>Inverter 17 AC MTD</label><br>
                                <input type="checkbox" id="i17ACOutputDay" name="i17ACOutputDay">
                                <label>Inverter 17 AC Output Daily</label><br>
                                <input type="checkbox" id="i17ACOutputRealPower" name="i17ACOutputRealPower">
                                <label>Inverter 17 AC Output Real Power</label><br>
                                <input type="checkbox" id="i17ApparentPower" name="i17ApparentPower">
                                <label>Inverter 17 Apparent Power</label><br>
                                <input type="checkbox" id="i17ReactivePower" name="i17ReactivePower">
                                <label>Inverter 17 Reactive Power</label><br>
                                <input type="checkbox" id="i17PowerFactor" name="i17PowerFactor">
                                <label>Inverter 17 Power Factor</label><br>
                                <input type="checkbox" id="i17PhaseACurrent" name="i17PhaseACurrent">
                                <label>Inverter 17 Phase A Current</label><br>
                                <input type="checkbox" id="i17PhaseBCurrent" name="i17PhaseBCurrent">
                                <label>Inverter 17 Phase B Current</label><br>
                                <input type="checkbox" id="i17PhaseCCurrent" name="i17PhaseCCurrent">
                                <label>Inverter 17 Phase C Current</label><br>
                                <input type="checkbox" id="i17PhaseABVoltage" name="i17PhaseABVoltage">
                                <label>Inverter 17 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i17PhaseBCVoltage" name="i17PhaseBCVoltage">
                                <label>Inverter 17 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i17PhaseCAVoltage" name="i17PhaseCAVoltage">
                                <label>Inverter 17 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i17DCRealPower" name="i17DCRealPower">
                                <label>Inverter 17 DC Real Power</label><br>
                                <input type="checkbox" id="i17DCVolts" name="i17DCVolts">
                                <label>Inverter 17 DC Volts</label><br>
                                <input type="checkbox" id="i17DCCurrent" name="i17DCCurrent">
                                <label>Inverter 17 DC Current</label><br>
                                <input type="checkbox" id="i17Efficiency" name="i17Efficiency">
                                <label>Inverter 17 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter17()">Done selecting Inverter 17 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter18" name="inverter18" onclick="displayInverter18()">
                            <label>Inverter 18</label><br>
                            <div id="inv18">
                                <h2>Inverter 18 Parameters</h2>
                                <input type="checkbox" id="i18ACOutputLifetime" name="i18ACOutputLifetime">
                                <label>Inverter 18 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i18ACOutputYTD" name="i18ACOutputYTD">
                                <label>Inverter 18 AC Output YTD</label><br>
                                <input type="checkbox" id="i18ACOutputMTD" name="i18ACOutputMTD">
                                <label>Inverter 18 AC MTD</label><br>
                                <input type="checkbox" id="i18ACOutputDay" name="i18ACOutputDay">
                                <label>Inverter 18 AC Output Daily</label><br>
                                <input type="checkbox" id="i18ACOutputRealPower" name="i18ACOutputRealPower">
                                <label>Inverter 18 AC Output Real Power</label><br>
                                <input type="checkbox" id="i18ApparentPower" name="i18ApparentPower">
                                <label>Inverter 18 Apparent Power</label><br>
                                <input type="checkbox" id="i18ReactivePower" name="i18ReactivePower">
                                <label>Inverter 18 Reactive Power</label><br>
                                <input type="checkbox" id="i18PowerFactor" name="i18PowerFactor">
                                <label>Inverter 18 Power Factor</label><br>
                                <input type="checkbox" id="i18PhaseACurrent" name="i18PhaseACurrent">
                                <label>Inverter 18 Phase A Current</label><br>
                                <input type="checkbox" id="i18PhaseBCurrent" name="i18PhaseBCurrent">
                                <label>Inverter 18 Phase B Current</label><br>
                                <input type="checkbox" id="i18PhaseCCurrent" name="i18PhaseCCurrent">
                                <label>Inverter 18 Phase C Current</label><br>
                                <input type="checkbox" id="i18PhaseABVoltage" name="i18PhaseABVoltage">
                                <label>Inverter 18 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i18PhaseBCVoltage" name="i18PhaseBCVoltage">
                                <label>Inverter 18 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i18PhaseCAVoltage" name="i18PhaseCAVoltage">
                                <label>Inverter 18 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i18DCRealPower" name="i18DCRealPower">
                                <label>Inverter 18 DC Real Power</label><br>
                                <input type="checkbox" id="i18DCVolts" name="i18DCVolts">
                                <label>Inverter 18 DC Volts</label><br>
                                <input type="checkbox" id="i18DCCurrent" name="i18DCCurrent">
                                <label>Inverter 18 DC Current</label><br>
                                <input type="checkbox" id="i18Efficiency" name="i18Efficiency">
                                <label>Inverter 18 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter18()">Done selecting Inverter 18 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter19" name="inverter19" onclick="displayInverter19()">
                            <label>Inverter 19</label><br>
                            <div id="inv19">
                                <h2>Inverter 19 Parameters</h2>
                                <input type="checkbox" id="i19ACOutputLifetime" name="i19ACOutputLifetime">
                                <label>Inverter 19 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i19ACOutputYTD" name="i19ACOutputYTD">
                                <label>Inverter 19 AC Output YTD</label><br>
                                <input type="checkbox" id="i19ACOutputMTD" name="i19ACOutputMTD">
                                <label>Inverter 19 AC MTD</label><br>
                                <input type="checkbox" id="i19ACOutputDay" name="i19ACOutputDay">
                                <label>Inverter 19 AC Output Daily</label><br>
                                <input type="checkbox" id="i19ACOutputRealPower" name="i19ACOutputRealPower">
                                <label>Inverter 19 AC Output Real Power</label><br>
                                <input type="checkbox" id="i19ApparentPower" name="i19ApparentPower">
                                <label>Inverter 19 Apparent Power</label><br>
                                <input type="checkbox" id="i19ReactivePower" name="i19ReactivePower">
                                <label>Inverter 19 Reactive Power</label><br>
                                <input type="checkbox" id="i19PowerFactor" name="i19PowerFactor">
                                <label>Inverter 19 Power Factor</label><br>
                                <input type="checkbox" id="i19PhaseACurrent" name="i19PhaseACurrent">
                                <label>Inverter 19 Phase A Current</label><br>
                                <input type="checkbox" id="i19PhaseBCurrent" name="i19PhaseBCurrent">
                                <label>Inverter 19 Phase B Current</label><br>
                                <input type="checkbox" id="i19PhaseCCurrent" name="i19PhaseCCurrent">
                                <label>Inverter 19 Phase C Current</label><br>
                                <input type="checkbox" id="i19PhaseABVoltage" name="i19PhaseABVoltage">
                                <label>Inverter 19 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i19PhaseBCVoltage" name="i19PhaseBCVoltage">
                                <label>Inverter 19 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i19PhaseCAVoltage" name="i19PhaseCAVoltage">
                                <label>Inverter 19 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i19DCRealPower" name="i19DCRealPower">
                                <label>Inverter 19 DC Real Power</label><br>
                                <input type="checkbox" id="i19DCVolts" name="i19DCVolts">
                                <label>Inverter 19 DC Volts</label><br>
                                <input type="checkbox" id="i19DCCurrent" name="i19DCCurrent">
                                <label>Inverter 19 DC Current</label><br>
                                <input type="checkbox" id="i19Efficiency" name="i19Efficiency">
                                <label>Inverter 19 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter19()">Done selecting Inverter 19 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter20" name="inverter20" onclick="displayInverter20()">
                            <label>Inverter 20</label><br>
                            <div id="inv20">
                                <h2>Inverter 20 Parameters</h2>
                                <input type="checkbox" id="i20ACOutputLifetime" name="i20ACOutputLifetime">
                                <label>Inverter 20 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i20ACOutputYTD" name="i20ACOutputYTD">
                                <label>Inverter 20 AC Output YTD</label><br>
                                <input type="checkbox" id="i20ACOutputMTD" name="i20ACOutputMTD">
                                <label>Inverter 20 AC MTD</label><br>
                                <input type="checkbox" id="i20ACOutputDay" name="i20ACOutputDay">
                                <label>Inverter 20 AC Output Daily</label><br>
                                <input type="checkbox" id="i20ACOutputRealPower" name="i20ACOutputRealPower">
                                <label>Inverter 20 AC Output Real Power</label><br>
                                <input type="checkbox" id="i20ApparentPower" name="i20ApparentPower">
                                <label>Inverter 20 Apparent Power</label><br>
                                <input type="checkbox" id="i20ReactivePower" name="i20ReactivePower">
                                <label>Inverter 20 Reactive Power</label><br>
                                <input type="checkbox" id="i20PowerFactor" name="i20PowerFactor">
                                <label>Inverter 20 Power Factor</label><br>
                                <input type="checkbox" id="i20PhaseACurrent" name="i20PhaseACurrent">
                                <label>Inverter 20 Phase A Current</label><br>
                                <input type="checkbox" id="i20PhaseBCurrent" name="i20PhaseBCurrent">
                                <label>Inverter 20 Phase B Current</label><br>
                                <input type="checkbox" id="i20PhaseCCurrent" name="i20PhaseCCurrent">
                                <label>Inverter 20 Phase C Current</label><br>
                                <input type="checkbox" id="i20PhaseABVoltage" name="i20PhaseABVoltage">
                                <label>Inverter 20 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i20PhaseBCVoltage" name="i20PhaseBCVoltage">
                                <label>Inverter 20 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i20PhaseCAVoltage" name="i20PhaseCAVoltage">
                                <label>Inverter 20 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i20DCRealPower" name="i20DCRealPower">
                                <label>Inverter 20 DC Real Power</label><br>
                                <input type="checkbox" id="i20DCVolts" name="i20DCVolts">
                                <label>Inverter 20 DC Volts</label><br>
                                <input type="checkbox" id="i20DCCurrent" name="i20DCCurrent">
                                <label>Inverter 20 DC Current</label><br>
                                <input type="checkbox" id="i20Efficiency" name="i20Efficiency">
                                <label>Inverter 20 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter20()">Done selecting Inverter 20 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter21" name="inverter21" onclick="displayInverter21()">
                            <label>Inverter 21</label><br>
                            <div id="inv21">
                                <h2>Inverter 21 Parameters</h2>
                                <input type="checkbox" id="i21ACOutputLifetime" name="i21ACOutputLifetime">
                                <label>Inverter 21 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i21ACOutputYTD" name="i21ACOutputYTD">
                                <label>Inverter 21 AC Output YTD</label><br>
                                <input type="checkbox" id="i21ACOutputMTD" name="i21ACOutputMTD">
                                <label>Inverter 21 AC MTD</label><br>
                                <input type="checkbox" id="i21ACOutputDay" name="i21ACOutputDay">
                                <label>Inverter 21 AC Output Daily</label><br>
                                <input type="checkbox" id="i21ACOutputRealPower" name="i21ACOutputRealPower">
                                <label>Inverter 21 AC Output Real Power</label><br>
                                <input type="checkbox" id="i21ApparentPower" name="i21ApparentPower">
                                <label>Inverter 21 Apparent Power</label><br>
                                <input type="checkbox" id="i21ReactivePower" name="i21ReactivePower">
                                <label>Inverter 21 Reactive Power</label><br>
                                <input type="checkbox" id="i21PowerFactor" name="i21PowerFactor">
                                <label>Inverter 21 Power Factor</label><br>
                                <input type="checkbox" id="i21PhaseACurrent" name="i21PhaseACurrent">
                                <label>Inverter 21 Phase A Current</label><br>
                                <input type="checkbox" id="i21PhaseBCurrent" name="i21PhaseBCurrent">
                                <label>Inverter 21 Phase B Current</label><br>
                                <input type="checkbox" id="i21PhaseCCurrent" name="i21PhaseCCurrent">
                                <label>Inverter 21 Phase C Current</label><br>
                                <input type="checkbox" id="i21PhaseABVoltage" name="i21PhaseABVoltage">
                                <label>Inverter 21 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i21PhaseBCVoltage" name="i21PhaseBCVoltage">
                                <label>Inverter 21 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i21PhaseCAVoltage" name="i21PhaseCAVoltage">
                                <label>Inverter 21 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i21DCRealPower" name="i21DCRealPower">
                                <label>Inverter 21 DC Real Power</label><br>
                                <input type="checkbox" id="i21DCVolts" name="i21DCVolts">
                                <label>Inverter 21 DC Volts</label><br>
                                <input type="checkbox" id="i21DCCurrent" name="i21DCCurrent">
                                <label>Inverter 21 DC Current</label><br>
                                <input type="checkbox" id="i21Efficiency" name="i21Efficiency">
                                <label>Inverter 21 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter21()">Done selecting Inverter 21 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter22" name="inverter22" onclick="displayInverter22()">
                            <label>Inverter 22</label><br>
                            <div id="inv22">
                                <h2>Inverter 22 Parameters</h2>
                                <input type="checkbox" id="i22ACOutputLifetime" name="i22ACOutputLifetime">
                                <label>Inverter 22 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i22ACOutputYTD" name="i22ACOutputYTD">
                                <label>Inverter 22 AC Output YTD</label><br>
                                <input type="checkbox" id="i22ACOutputMTD" name="i22ACOutputMTD">
                                <label>Inverter 22 AC MTD</label><br>
                                <input type="checkbox" id="i22ACOutputDay" name="i22ACOutputDay">
                                <label>Inverter 22 AC Output Daily</label><br>
                                <input type="checkbox" id="i22ACOutputRealPower" name="i22ACOutputRealPower">
                                <label>Inverter 22 AC Output Real Power</label><br>
                                <input type="checkbox" id="i22ApparentPower" name="i22ApparentPower">
                                <label>Inverter 22 Apparent Power</label><br>
                                <input type="checkbox" id="i22ReactivePower" name="i22ReactivePower">
                                <label>Inverter 22 Reactive Power</label><br>
                                <input type="checkbox" id="i22PowerFactor" name="i22PowerFactor">
                                <label>Inverter 22 Power Factor</label><br>
                                <input type="checkbox" id="i22PhaseACurrent" name="i22PhaseACurrent">
                                <label>Inverter 22 Phase A Current</label><br>
                                <input type="checkbox" id="i22PhaseBCurrent" name="i22PhaseBCurrent">
                                <label>Inverter 22 Phase B Current</label><br>
                                <input type="checkbox" id="i22PhaseCCurrent" name="i22PhaseCCurrent">
                                <label>Inverter 22 Phase C Current</label><br>
                                <input type="checkbox" id="i22PhaseABVoltage" name="i22PhaseABVoltage">
                                <label>Inverter 22 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i22PhaseBCVoltage" name="i22PhaseBCVoltage">
                                <label>Inverter 22 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i22PhaseCAVoltage" name="i22PhaseCAVoltage">
                                <label>Inverter 22 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i22DCRealPower" name="i22DCRealPower">
                                <label>Inverter 22 DC Real Power</label><br>
                                <input type="checkbox" id="i22DCVolts" name="i22DCVolts">
                                <label>Inverter 22 DC Volts</label><br>
                                <input type="checkbox" id="i22DCCurrent" name="i22DCCurrent">
                                <label>Inverter 22 DC Current</label><br>
                                <input type="checkbox" id="i22Efficiency" name="i22Efficiency">
                                <label>Inverter 22 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter22()">Done selecting Inverter 22 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter23" name="inverter23" onclick="displayInverter23()">
                            <label>Inverter 23</label><br>
                            <div id="inv23">
                                <h2>Inverter 23 Parameters</h2>
                                <input type="checkbox" id="i23ACOutputLifetime" name="i23ACOutputLifetime">
                                <label>Inverter 23 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i23ACOutputYTD" name="i23ACOutputYTD">
                                <label>Inverter 23 AC Output YTD</label><br>
                                <input type="checkbox" id="i23ACOutputMTD" name="i23ACOutputMTD">
                                <label>Inverter 23 AC MTD</label><br>
                                <input type="checkbox" id="i23ACOutputDay" name="i23ACOutputDay">
                                <label>Inverter 23 AC Output Daily</label><br>
                                <input type="checkbox" id="i23ACOutputRealPower" name="i23ACOutputRealPower">
                                <label>Inverter 23 AC Output Real Power</label><br>
                                <input type="checkbox" id="i23ApparentPower" name="i23ApparentPower">
                                <label>Inverter 23 Apparent Power</label><br>
                                <input type="checkbox" id="i23ReactivePower" name="i23ReactivePower">
                                <label>Inverter 23 Reactive Power</label><br>
                                <input type="checkbox" id="i23PowerFactor" name="i23PowerFactor">
                                <label>Inverter 23 Power Factor</label><br>
                                <input type="checkbox" id="i23PhaseACurrent" name="i23PhaseACurrent">
                                <label>Inverter 23 Phase A Current</label><br>
                                <input type="checkbox" id="i23PhaseBCurrent" name="i23PhaseBCurrent">
                                <label>Inverter 23 Phase B Current</label><br>
                                <input type="checkbox" id="i23PhaseCCurrent" name="i23PhaseCCurrent">
                                <label>Inverter 23 Phase C Current</label><br>
                                <input type="checkbox" id="i23PhaseABVoltage" name="i23PhaseABVoltage">
                                <label>Inverter 23 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i23PhaseBCVoltage" name="i23PhaseBCVoltage">
                                <label>Inverter 23 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i23PhaseCAVoltage" name="i23PhaseCAVoltage">
                                <label>Inverter 23 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i23DCRealPower" name="i23DCRealPower">
                                <label>Inverter 23 DC Real Power</label><br>
                                <input type="checkbox" id="i23DCVolts" name="i23DCVolts">
                                <label>Inverter 23 DC Volts</label><br>
                                <input type="checkbox" id="i23DCCurrent" name="i23DCCurrent">
                                <label>Inverter 23 DC Current</label><br>
                                <input type="checkbox" id="i23Efficiency" name="i23Efficiency">
                                <label>Inverter 23 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter23()">Done selecting Inverter 23 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter24" name="inverter24" onclick="displayInverter24()">
                            <label>Inverter 24</label><br>
                            <div id="inv24">
                                <h2>Inverter 24 Parameters</h2>
                                <input type="checkbox" id="i24ACOutputLifetime" name="i24ACOutputLifetime">
                                <label>Inverter 24 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i24ACOutputYTD" name="i24ACOutputYTD">
                                <label>Inverter 24 AC Output YTD</label><br>
                                <input type="checkbox" id="i24ACOutputMTD" name="i24ACOutputMTD">
                                <label>Inverter 24 AC MTD</label><br>
                                <input type="checkbox" id="i24ACOutputDay" name="i24ACOutputDay">
                                <label>Inverter 24 AC Output Daily</label><br>
                                <input type="checkbox" id="i24ACOutputRealPower" name="i24ACOutputRealPower">
                                <label>Inverter 24 AC Output Real Power</label><br>
                                <input type="checkbox" id="i24ApparentPower" name="i24ApparentPower">
                                <label>Inverter 24 Apparent Power</label><br>
                                <input type="checkbox" id="i24ReactivePower" name="i24ReactivePower">
                                <label>Inverter 24 Reactive Power</label><br>
                                <input type="checkbox" id="i24PowerFactor" name="i24PowerFactor">
                                <label>Inverter 24 Power Factor</label><br>
                                <input type="checkbox" id="i24PhaseACurrent" name="i24PhaseACurrent">
                                <label>Inverter 24 Phase A Current</label><br>
                                <input type="checkbox" id="i24PhaseBCurrent" name="i24PhaseBCurrent">
                                <label>Inverter 24 Phase B Current</label><br>
                                <input type="checkbox" id="i24PhaseCCurrent" name="i24PhaseCCurrent">
                                <label>Inverter 24 Phase C Current</label><br>
                                <input type="checkbox" id="i24PhaseABVoltage" name="i24PhaseABVoltage">
                                <label>Inverter 24 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i24PhaseBCVoltage" name="i24PhaseBCVoltage">
                                <label>Inverter 24 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i24PhaseCAVoltage" name="i24PhaseCAVoltage">
                                <label>Inverter 24 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i24DCRealPower" name="i24DCRealPower">
                                <label>Inverter 24 DC Real Power</label><br>
                                <input type="checkbox" id="i24DCVolts" name="i24DCVolts">
                                <label>Inverter 24 DC Volts</label><br>
                                <input type="checkbox" id="i24DCCurrent" name="i24DCCurrent">
                                <label>Inverter 24 DC Current</label><br>
                                <input type="checkbox" id="i24Efficiency" name="i24Efficiency">
                                <label>Inverter 24 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter24()">Done selecting Inverter 24 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter25" name="inverter25" onclick="displayInverter25()">
                            <label>Inverter 25</label><br>
                            <div id="inv25">
                                <h2>Inverter 25 Parameters</h2>
                                <input type="checkbox" id="i25ACOutputLifetime" name="i25ACOutputLifetime">
                                <label>Inverter 25 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i25ACOutputYTD" name="i25ACOutputYTD">
                                <label>Inverter 25 AC Output YTD</label><br>
                                <input type="checkbox" id="i25ACOutputMTD" name="i25ACOutputMTD">
                                <label>Inverter 25 AC MTD</label><br>
                                <input type="checkbox" id="i25ACOutputDay" name="i25ACOutputDay">
                                <label>Inverter 25 AC Output Daily</label><br>
                                <input type="checkbox" id="i25ACOutputRealPower" name="i25ACOutputRealPower">
                                <label>Inverter 25 AC Output Real Power</label><br>
                                <input type="checkbox" id="i25ApparentPower" name="i25ApparentPower">
                                <label>Inverter 25 Apparent Power</label><br>
                                <input type="checkbox" id="i25ReactivePower" name="i25ReactivePower">
                                <label>Inverter 25 Reactive Power</label><br>
                                <input type="checkbox" id="i25PowerFactor" name="i25PowerFactor">
                                <label>Inverter 25 Power Factor</label><br>
                                <input type="checkbox" id="i25PhaseACurrent" name="i25PhaseACurrent">
                                <label>Inverter 25 Phase A Current</label><br>
                                <input type="checkbox" id="i25PhaseBCurrent" name="i25PhaseBCurrent">
                                <label>Inverter 25 Phase B Current</label><br>
                                <input type="checkbox" id="i25PhaseCCurrent" name="i25PhaseCCurrent">
                                <label>Inverter 25 Phase C Current</label><br>
                                <input type="checkbox" id="i25PhaseABVoltage" name="i25PhaseABVoltage">
                                <label>Inverter 25 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i25PhaseBCVoltage" name="i25PhaseBCVoltage">
                                <label>Inverter 25 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i25PhaseCAVoltage" name="i25PhaseCAVoltage">
                                <label>Inverter 25 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i25DCRealPower" name="i25DCRealPower">
                                <label>Inverter 25 DC Real Power</label><br>
                                <input type="checkbox" id="i25DCVolts" name="i25DCVolts">
                                <label>Inverter 25 DC Volts</label><br>
                                <input type="checkbox" id="i25DCCurrent" name="i25DCCurrent">
                                <label>Inverter 25 DC Current</label><br>
                                <input type="checkbox" id="i25Efficiency" name="i25Efficiency">
                                <label>Inverter 25 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter25()">Done selecting Inverter 25 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter26" name="inverter26" onclick="displayInverter26()">
                            <label>Inverter 26</label><br>
                            <div id="inv26">
                                <h2>Inverter 26 Parameters</h2>
                                <input type="checkbox" id="i26ACOutputLifetime" name="i26ACOutputLifetime">
                                <label>Inverter 26 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i26ACOutputYTD" name="i26ACOutputYTD">
                                <label>Inverter 26 AC Output YTD</label><br>
                                <input type="checkbox" id="i26ACOutputMTD" name="i26ACOutputMTD">
                                <label>Inverter 26 AC MTD</label><br>
                                <input type="checkbox" id="i26ACOutputDay" name="i26ACOutputDay">
                                <label>Inverter 26 AC Output Daily</label><br>
                                <input type="checkbox" id="i26ACOutputRealPower" name="i26ACOutputRealPower">
                                <label>Inverter 26 AC Output Real Power</label><br>
                                <input type="checkbox" id="i26ApparentPower" name="i26ApparentPower">
                                <label>Inverter 26 Apparent Power</label><br>
                                <input type="checkbox" id="i26ReactivePower" name="i26ReactivePower">
                                <label>Inverter 26 Reactive Power</label><br>
                                <input type="checkbox" id="i26PowerFactor" name="i26PowerFactor">
                                <label>Inverter 26 Power Factor</label><br>
                                <input type="checkbox" id="i26PhaseACurrent" name="i26PhaseACurrent">
                                <label>Inverter 26 Phase A Current</label><br>
                                <input type="checkbox" id="i26PhaseBCurrent" name="i26PhaseBCurrent">
                                <label>Inverter 26 Phase B Current</label><br>
                                <input type="checkbox" id="i26PhaseCCurrent" name="i26PhaseCCurrent">
                                <label>Inverter 26 Phase C Current</label><br>
                                <input type="checkbox" id="i26PhaseABVoltage" name="i26PhaseABVoltage">
                                <label>Inverter 26 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i26PhaseBCVoltage" name="i26PhaseBCVoltage">
                                <label>Inverter 26 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i26PhaseCAVoltage" name="i26PhaseCAVoltage">
                                <label>Inverter 26 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i26DCRealPower" name="i26DCRealPower">
                                <label>Inverter 26 DC Real Power</label><br>
                                <input type="checkbox" id="i26DCVolts" name="i26DCVolts">
                                <label>Inverter 26 DC Volts</label><br>
                                <input type="checkbox" id="i26DCCurrent" name="i26DCCurrent">
                                <label>Inverter 26 DC Current</label><br>
                                <input type="checkbox" id="i26Efficiency" name="i26Efficiency">
                                <label>Inverter 26 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter26()">Done selecting Inverter 26 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter27" name="inverter27" onclick="displayInverter27()">
                            <label>Inverter 27</label><br>
                            <div id="inv27">
                                <h2>Inverter 27 Parameters</h2>
                                <input type="checkbox" id="i27ACOutputLifetime" name="i27ACOutputLifetime">
                                <label>Inverter 27 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i27ACOutputYTD" name="i27ACOutputYTD">
                                <label>Inverter 27 AC Output YTD</label><br>
                                <input type="checkbox" id="i27ACOutputMTD" name="i27ACOutputMTD">
                                <label>Inverter 27 AC MTD</label><br>
                                <input type="checkbox" id="i27ACOutputDay" name="i27ACOutputDay">
                                <label>Inverter 27 AC Output Daily</label><br>
                                <input type="checkbox" id="i27ACOutputRealPower" name="i27ACOutputRealPower">
                                <label>Inverter 27 AC Output Real Power</label><br>
                                <input type="checkbox" id="i27ApparentPower" name="i27ApparentPower">
                                <label>Inverter 27 Apparent Power</label><br>
                                <input type="checkbox" id="i27ReactivePower" name="i27ReactivePower">
                                <label>Inverter 27 Reactive Power</label><br>
                                <input type="checkbox" id="i27PowerFactor" name="i27PowerFactor">
                                <label>Inverter 27 Power Factor</label><br>
                                <input type="checkbox" id="i27PhaseACurrent" name="i27PhaseACurrent">
                                <label>Inverter 27 Phase A Current</label><br>
                                <input type="checkbox" id="i27PhaseBCurrent" name="i27PhaseBCurrent">
                                <label>Inverter 27 Phase B Current</label><br>
                                <input type="checkbox" id="i27PhaseCCurrent" name="i27PhaseCCurrent">
                                <label>Inverter 27 Phase C Current</label><br>
                                <input type="checkbox" id="i27PhaseABVoltage" name="i27PhaseABVoltage">
                                <label>Inverter 27 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i27PhaseBCVoltage" name="i27PhaseBCVoltage">
                                <label>Inverter 27 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i27PhaseCAVoltage" name="i27PhaseCAVoltage">
                                <label>Inverter 27 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i27DCRealPower" name="i27DCRealPower">
                                <label>Inverter 27 DC Real Power</label><br>
                                <input type="checkbox" id="i27DCVolts" name="i27DCVolts">
                                <label>Inverter 27 DC Volts</label><br>
                                <input type="checkbox" id="i27DCCurrent" name="i27DCCurrent">
                                <label>Inverter 27 DC Current</label><br>
                                <input type="checkbox" id="i27Efficiency" name="i27Efficiency">
                                <label>Inverter 27 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter27()">Done selecting Inverter 27 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter28" name="inverter28" onclick="displayInverter28()">
                            <label>Inverter 28</label><br>
                            <div id="inv28">
                                <h2>Inverter 28 Parameters</h2>
                                <input type="checkbox" id="i28ACOutputLifetime" name="i28ACOutputLifetime">
                                <label>Inverter 28 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i28ACOutputYTD" name="i28ACOutputYTD">
                                <label>Inverter 28 AC Output YTD</label><br>
                                <input type="checkbox" id="i28ACOutputMTD" name="i28ACOutputMTD">
                                <label>Inverter 28 AC MTD</label><br>
                                <input type="checkbox" id="i28ACOutputDay" name="i28ACOutputDay">
                                <label>Inverter 28 AC Output Daily</label><br>
                                <input type="checkbox" id="i28ACOutputRealPower" name="i28ACOutputRealPower">
                                <label>Inverter 28 AC Output Real Power</label><br>
                                <input type="checkbox" id="i28ApparentPower" name="i28ApparentPower">
                                <label>Inverter 28 Apparent Power</label><br>
                                <input type="checkbox" id="i28ReactivePower" name="i28ReactivePower">
                                <label>Inverter 28 Reactive Power</label><br>
                                <input type="checkbox" id="i28PowerFactor" name="i28PowerFactor">
                                <label>Inverter 28 Power Factor</label><br>
                                <input type="checkbox" id="i28PhaseACurrent" name="i28PhaseACurrent">
                                <label>Inverter 28 Phase A Current</label><br>
                                <input type="checkbox" id="i28PhaseBCurrent" name="i28PhaseBCurrent">
                                <label>Inverter 28 Phase B Current</label><br>
                                <input type="checkbox" id="i28PhaseCCurrent" name="i28PhaseCCurrent">
                                <label>Inverter 28 Phase C Current</label><br>
                                <input type="checkbox" id="i28PhaseABVoltage" name="i28PhaseABVoltage">
                                <label>Inverter 28 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i28PhaseBCVoltage" name="i28PhaseBCVoltage">
                                <label>Inverter 28 Phase BC Voltage</label><br>                                
                                <input type="checkbox" id="i28PhaseCAVoltage" name="i28PhaseCAVoltage">
                                <label>Inverter 28 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i28DCRealPower" name="i28DCRealPower">
                                <label>Inverter 28 DC Real Power</label><br>
                                <input type="checkbox" id="i28DCVolts" name="i28DCVolts">
                                <label>Inverter 28 DC Volts</label><br>
                                <input type="checkbox" id="i28DCCurrent" name="i28DCCurrent">
                                <label>Inverter 28 DC Current</label><br>
                                <input type="checkbox" id="i28Efficiency" name="i28Efficiency">
                                <label>Inverter 28 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter28()">Done selecting Inverter 28 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter29" name="inverter29" onclick="displayInverter29()">
                            <label>Inverter 29</label><br>
                            <div id="inv29">
                                <h2>Inverter 29 Parameters</h2>
                                <input type="checkbox" id="i29ACOutputLifetime" name="i29ACOutputLifetime">
                                <label>Inverter 29 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i29ACOutputYTD" name="i29ACOutputYTD">
                                <label>Inverter 29 AC Output YTD</label><br>
                                <input type="checkbox" id="i29ACOutputMTD" name="i29ACOutputMTD">
                                <label>Inverter 29 AC MTD</label><br>
                                <input type="checkbox" id="i29ACOutputDay" name="i29ACOutputDay">
                                <label>Inverter 29 AC Output Daily</label><br>
                                <input type="checkbox" id="i29ACOutputRealPower" name="i29ACOutputRealPower">
                                <label>Inverter 29 AC Output Real Power</label><br>
                                <input type="checkbox" id="i29ApparentPower" name="i29ApparentPower">
                                <label>Inverter 29 Apparent Power</label><br>
                                <input type="checkbox" id="i29ReactivePower" name="i29ReactivePower">
                                <label>Inverter 29 Reactive Power</label><br>
                                <input type="checkbox" id="i29PowerFactor" name="i29PowerFactor">
                                <label>Inverter 29 Power Factor</label><br>
                                <input type="checkbox" id="i29PhaseACurrent" name="i29PhaseACurrent">
                                <label>Inverter 29 Phase A Current</label><br>
                                <input type="checkbox" id="i29PhaseBCurrent" name="i29PhaseBCurrent">
                                <label>Inverter 29 Phase B Current</label><br>
                                <input type="checkbox" id="i29PhaseCCurrent" name="i29PhaseCCurrent">
                                <label>Inverter 29 Phase C Current</label><br>
                                <input type="checkbox" id="i29PhaseABVoltage" name="i29PhaseABVoltage">
                                <label>Inverter 29 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i29PhaseBCVoltage" name="i29PhaseBCVoltage">
                                <label>Inverter 29 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i29PhaseCAVoltage" name="i29PhaseCAVoltage">
                                <label>Inverter 29 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i29DCRealPower" name="i29DCRealPower">
                                <label>Inverter 29 DC Real Power</label><br>
                                <input type="checkbox" id="i29DCVolts" name="i29DCVolts">
                                <label>Inverter 29 DC Volts</label><br>
                                <input type="checkbox" id="i29DCCurrent" name="i29DCCurrent">
                                <label>Inverter 29 DC Current</label><br>
                                <input type="checkbox" id="i29Efficiency" name="i29Efficiency">
                                <label>Inverter 29 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter29()">Done selecting Inverter 29 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter30" name="inverter30" onclick="displayInverter30()">
                            <label>Inverter 30</label><br>
                            <div id="inv30">
                                <h2>Inverter 30 Parameters</h2>
                                <input type="checkbox" id="i30ACOutputLifetime" name="i30ACOutputLifetime">
                                <label>Inverter 30 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i30ACOutputYTD" name="i30ACOutputYTD">
                                <label>Inverter 30 AC Output YTD</label><br>
                                <input type="checkbox" id="i30ACOutputMTD" name="i30ACOutputMTD">
                                <label>Inverter 30 AC MTD</label><br>
                                <input type="checkbox" id="i30ACOutputDay" name="i30ACOutputDay">
                                <label>Inverter 30 AC Output Daily</label><br>
                                <input type="checkbox" id="i30ACOutputRealPower" name="i30ACOutputRealPower">
                                <label>Inverter 30 AC Output Real Power</label><br>
                                <input type="checkbox" id="i30ApparentPower" name="i30ApparentPower">
                                <label>Inverter 30 Apparent Power</label><br>
                                <input type="checkbox" id="i30ReactivePower" name="i30ReactivePower">
                                <label>Inverter 30 Reactive Power</label><br>
                                <input type="checkbox" id="i30PowerFactor" name="i30PowerFactor">
                                <label>Inverter 30 Power Factor</label><br>
                                <input type="checkbox" id="i30PhaseACurrent" name="i30PhaseACurrent">
                                <label>Inverter 30 Phase A Current</label><br>
                                <input type="checkbox" id="i30PhaseBCurrent" name="i30PhaseBCurrent">
                                <label>Inverter 30 Phase B Current</label><br>
                                <input type="checkbox" id="i30PhaseCCurrent" name="i30PhaseCCurrent">
                                <label>Inverter 30 Phase C Current</label><br>
                                <input type="checkbox" id="i30PhaseABVoltage" name="i30PhaseABVoltage">
                                <label>Inverter 30 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i30PhaseBCVoltage" name="i30PhaseBCVoltage">
                                <label>Inverter 30 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i30PhaseCAVoltage" name="i30PhaseCAVoltage">
                                <label>Inverter 30 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i30DCRealPower" name="i30DCRealPower">
                                <label>Inverter 30 DC Real Power</label><br>
                                <input type="checkbox" id="i30DCVolts" name="i30DCVolts">
                                <label>Inverter 30 DC Volts</label><br>
                                <input type="checkbox" id="i30DCCurrent" name="i30DCCurrent">
                                <label>Inverter 30 DC Current</label><br>
                                <input type="checkbox" id="i30Efficiency" name="i30Efficiency">
                                <label>Inverter 30 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter30()">Done selecting Inverter 30 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter31" name="inverter31" onclick="displayInverter31()">
                            <label>Inverter 31</label><br>
                            <div id="inv31">
                                <h2>Inverter 31 Parameters</h2>
                                <input type="checkbox" id="i31ACOutputLifetime" name="i31ACOutputLifetime">
                                <label>Inverter 31 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i31ACOutputYTD" name="i31ACOutputYTD">
                                <label>Inverter 31 AC Output YTD</label><br>
                                <input type="checkbox" id="i31ACOutputMTD" name="i31ACOutputMTD">
                                <label>Inverter 31 AC MTD</label><br>
                                <input type="checkbox" id="i31ACOutputDay" name="i31ACOutputDay">
                                <label>Inverter 31 AC Output Daily</label><br>
                                <input type="checkbox" id="i31ACOutputRealPower" name="i31ACOutputRealPower">
                                <label>Inverter 31 AC Output Real Power</label><br>
                                <input type="checkbox" id="i31ApparentPower" name="i31ApparentPower">
                                <label>Inverter 31 Apparent Power</label><br>
                                <input type="checkbox" id="i31ReactivePower" name="i31ReactivePower">
                                <label>Inverter 31 Reactive Power</label><br>
                                <input type="checkbox" id="i31PowerFactor" name="i31PowerFactor">
                                <label>Inverter 31 Power Factor</label><br>
                                <input type="checkbox" id="i31PhaseACurrent" name="i31PhaseACurrent">
                                <label>Inverter 31 Phase A Current</label><br>
                                <input type="checkbox" id="i31PhaseBCurrent" name="i31PhaseBCurrent">
                                <label>Inverter 31 Phase B Current</label><br>
                                <input type="checkbox" id="i31PhaseCCurrent" name="i31PhaseCCurrent">
                                <label>Inverter 31 Phase C Current</label><br>
                                <input type="checkbox" id="i31PhaseABVoltage" name="i31PhaseABVoltage">
                                <label>Inverter 31 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i31PhaseBCVoltage" name="i31PhaseBCVoltage">
                                <label>Inverter 31 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i31PhaseCAVoltage" name="i31PhaseCAVoltage">
                                <label>Inverter 31 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i31DCRealPower" name="i31DCRealPower">
                                <label>Inverter 31 DC Real Power</label><br>
                                <input type="checkbox" id="i31DCVolts" name="i31DCVolts">
                                <label>Inverter 31 DC Volts</label><br>
                                <input type="checkbox" id="i31DCCurrent" name="i31DCCurrent">
                                <label>Inverter 31 DC Current</label><br>
                                <input type="checkbox" id="i31Efficiency" name="i31Efficiency">
                                <label>Inverter 31 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter31()">Done selecting Inverter 31 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter32" name="inverter32" onclick="displayInverter32()">
                            <label>Inverter 32</label><br>
                            <div id="inv32">
                                <h2>Inverter 32 Parameters</h2>
                                <input type="checkbox" id="i32ACOutputLifetime" name="i32ACOutputLifetime">
                                <label>Inverter 32 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i32ACOutputYTD" name="i32ACOutputYTD">
                                <label>Inverter 32 AC Output YTD</label><br>
                                <input type="checkbox" id="i32ACOutputMTD" name="i32ACOutputMTD">
                                <label>Inverter 32 AC MTD</label><br>
                                <input type="checkbox" id="i32ACOutputDay" name="i32ACOutputDay">
                                <label>Inverter 32 AC Output Daily</label><br>
                                <input type="checkbox" id="i32ACOutputRealPower" name="i32ACOutputRealPower">
                                <label>Inverter 32 AC Output Real Power</label><br>
                                <input type="checkbox" id="i32ApparentPower" name="i32ApparentPower">
                                <label>Inverter 32 Apparent Power</label><br>
                                <input type="checkbox" id="i32ReactivePower" name="i32ReactivePower">
                                <label>Inverter 32 Reactive Power</label><br>
                                <input type="checkbox" id="i32PowerFactor" name="i32PowerFactor">
                                <label>Inverter 32 Power Factor</label><br>
                                <input type="checkbox" id="i32PhaseACurrent" name="i32PhaseACurrent">
                                <label>Inverter 32 Phase A Current</label><br>
                                <input type="checkbox" id="i32PhaseBCurrent" name="i32PhaseBCurrent">
                                <label>Inverter 32 Phase B Current</label><br>
                                <input type="checkbox" id="i32PhaseCCurrent" name="i32PhaseCCurrent">
                                <label>Inverter 32 Phase C Current</label><br>
                                <input type="checkbox" id="i32PhaseABVoltage" name="i32PhaseABVoltage">
                                <label>Inverter 32 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i32PhaseBCVoltage" name="i32PhaseBCVoltage">
                                <label>Inverter 32 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i32PhaseCAVoltage" name="i32PhaseCAVoltage">
                                <label>Inverter 32 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i32DCRealPower" name="i32DCRealPower">
                                <label>Inverter 32 DC Real Power</label><br>
                                <input type="checkbox" id="i32DCVolts" name="i32DCVolts">
                                <label>Inverter 32 DC Volts</label><br>
                                <input type="checkbox" id="i32DCCurrent" name="i32DCCurrent">
                                <label>Inverter 32 DC Current</label><br>
                                <input type="checkbox" id="i32Efficiency" name="i32Efficiency">
                                <label>Inverter 32 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter32()">Done selecting Inverter 32 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter33" name="inverter33" onclick="displayInverter33()">
                            <label>Inverter 33</label><br>
                            <div id="inv33">
                                <h2>Inverter 33 Parameters</h2>
                                <input type="checkbox" id="i33ACOutputLifetime" name="i33ACOutputLifetime">
                                <label>Inverter 33 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i33ACOutputYTD" name="i33ACOutputYTD">
                                <label>Inverter 33 AC Output YTD</label><br>
                                <input type="checkbox" id="i33ACOutputMTD" name="i33ACOutputMTD">
                                <label>Inverter 33 AC MTD</label><br>
                                <input type="checkbox" id="i33ACOutputDay" name="i33ACOutputDay">
                                <label>Inverter 33 AC Output Daily</label><br>
                                <input type="checkbox" id="i33ACOutputRealPower" name="i33ACOutputRealPower">
                                <label>Inverter 33 AC Output Real Power</label><br>
                                <input type="checkbox" id="i33ApparentPower" name="i33ApparentPower">
                                <label>Inverter 33 Apparent Power</label><br>
                                <input type="checkbox" id="i33ReactivePower" name="i33ReactivePower">
                                <label>Inverter 33 Reactive Power</label><br>
                                <input type="checkbox" id="i33PowerFactor" name="i33PowerFactor">
                                <label>Inverter 33 Power Factor</label><br>
                                <input type="checkbox" id="i33PhaseACurrent" name="i33PhaseACurrent">
                                <label>Inverter 33 Phase A Current</label><br>
                                <input type="checkbox" id="i33PhaseBCurrent" name="i33PhaseBCurrent">
                                <label>Inverter 33 Phase B Current</label><br>
                                <input type="checkbox" id="i33PhaseCCurrent" name="i33PhaseCCurrent">
                                <label>Inverter 33 Phase C Current</label><br>
                                <input type="checkbox" id="i33PhaseABVoltage" name="i33PhaseABVoltage">
                                <label>Inverter 33 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i33PhaseBCVoltage" name="i33PhaseBCVoltage">
                                <label>Inverter 33 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i33PhaseCAVoltage" name="i33PhaseCAVoltage">
                                <label>Inverter 33 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i33DCRealPower" name="i33DCRealPower">
                                <label>Inverter 33 DC Real Power</label><br>
                                <input type="checkbox" id="i33DCVolts" name="i33DCVolts">
                                <label>Inverter 33 DC Volts</label><br>
                                <input type="checkbox" id="i33DCCurrent" name="i33DCCurrent">
                                <label>Inverter 33 DC Current</label><br>
                                <input type="checkbox" id="i33Efficiency" name="i33Efficiency">
                                <label>Inverter 33 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter33()">Done selecting Inverter 33 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter34" name="inverter34" onclick="displayInverter34()">
                            <label>Inverter 34</label><br>
                            <div id="inv34">
                                <h2>Inverter 34 Parameters</h2>
                                <input type="checkbox" id="i34ACOutputLifetime" name="i34ACOutputLifetime">
                                <label>Inverter 34 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i34ACOutputYTD" name="i34ACOutputYTD">
                                <label>Inverter 34 AC Output YTD</label><br>
                                <input type="checkbox" id="i34ACOutputMTD" name="i34ACOutputMTD">
                                <label>Inverter 34 AC MTD</label><br>
                                <input type="checkbox" id="i34ACOutputDay" name="i34ACOutputDay">
                                <label>Inverter 34 AC Output Daily</label><br>
                                <input type="checkbox" id="i34ACOutputRealPower" name="i34ACOutputRealPower">
                                <label>Inverter 34 AC Output Real Power</label><br>
                                <input type="checkbox" id="i34ApparentPower" name="i34ApparentPower">
                                <label>Inverter 34 Apparent Power</label><br>
                                <input type="checkbox" id="i34ReactivePower" name="i34ReactivePower">
                                <label>Inverter 34 Reactive Power</label><br>
                                <input type="checkbox" id="i34PowerFactor" name="i34PowerFactor">
                                <label>Inverter 34 Power Factor</label><br>
                                <input type="checkbox" id="i34PhaseACurrent" name="i34PhaseACurrent">
                                <label>Inverter 34 Phase A Current</label><br>
                                <input type="checkbox" id="i34PhaseBCurrent" name="i34PhaseBCurrent">
                                <label>Inverter 34 Phase B Current</label><br>
                                <input type="checkbox" id="i34PhaseCCurrent" name="i34PhaseCCurrent">
                                <label>Inverter 34 Phase C Current</label><br>
                                <input type="checkbox" id="i34PhaseABVoltage" name="i34PhaseABVoltage">
                                <label>Inverter 34 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i34PhaseBCVoltage" name="i34PhaseBCVoltage">
                                <label>Inverter 34 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i34PhaseCAVoltage" name="i34PhaseCAVoltage">
                                <label>Inverter 34 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i34DCRealPower" name="i34DCRealPower">
                                <label>Inverter 34 DC Real Power</label><br>
                                <input type="checkbox" id="i34DCVolts" name="i34DCVolts">
                                <label>Inverter 34 DC Volts</label><br>
                                <input type="checkbox" id="i34DCCurrent" name="i34DCCurrent">
                                <label>Inverter 34 DC Current</label><br>
                                <input type="checkbox" id="i34Efficiency" name="i34Efficiency">
                                <label>Inverter 34 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter34()">Done selecting Inverter 34 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter35" name="inverter35" onclick="displayInverter35()">
                            <label>Inverter 35</label><br>
                            <div  id="inv35">
                                <h2>Inverter 35 Parameters</h2>
                                <input type="checkbox" id="i35ACOutputLifetime" name="i35ACOutputLifetime">
                                <label>Inverter 35 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i35ACOutputYTD" name="i35ACOutputYTD">
                                <label>Inverter 35 AC Output YTD</label><br>
                                <input type="checkbox" id="i35ACOutputMTD" name="i35ACOutputMTD">
                                <label>Inverter 35 AC MTD</label><br>
                                <input type="checkbox" id="i35ACOutputDay" name="i35ACOutputDay">
                                <label>Inverter 35 AC Output Daily</label><br>
                                <input type="checkbox" id="i35ACOutputRealPower" name="i35ACOutputRealPower">
                                <label>Inverter 35 AC Output Real Power</label><br>
                                <input type="checkbox" id="i35ApparentPower" name="i35ApparentPower">
                                <label>Inverter 35 Apparent Power</label><br>
                                <input type="checkbox" id="i35ReactivePower" name="i35ReactivePower">
                                <label>Inverter 35 Reactive Power</label><br>
                                <input type="checkbox" id="i35PowerFactor" name="i35PowerFactor">
                                <label>Inverter 35 Power Factor</label><br>
                                <input type="checkbox" id="i35PhaseACurrent" name="i35PhaseACurrent">
                                <label>Inverter 35 Phase A Current</label><br>
                                <input type="checkbox" id="i35PhaseBCurrent" name="i35PhaseBCurrent">
                                <label>Inverter 35 Phase B Current</label><br>
                                <input type="checkbox" id="i35PhaseCCurrent" name="i35PhaseCCurrent">
                                <label>Inverter 35 Phase C Current</label><br>
                                <input type="checkbox" id="i35PhaseABVoltage" name="i35PhaseABVoltage">
                                <label>Inverter 35 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i35PhaseBCVoltage" name="i35PhaseBCVoltage">
                                <label>Inverter 35 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i35PhaseCAVoltage" name="i35PhaseCAVoltage">
                                <label>Inverter 35 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i35DCRealPower" name="i35DCRealPower">
                                <label>Inverter 35 DC Real Power</label><br>
                                <input type="checkbox" id="i35DCVolts" name="i35DCVolts">
                                <label>Inverter 35 DC Volts</label><br>
                                <input type="checkbox" id="i35DCCurrent" name="i35DCCurrent">
                                <label>Inverter 35 DC Current</label><br>
                                <input type="checkbox" id="i35Efficiency" name="i35Efficiency">
                                <label>Inverter 35 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter35()">Done selecting Inverter 35 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter36" name="inverter36" onclick="displayInverter36()">
                            <label>Inverter 36</label><br>
                            <div id="inv36">
                                <h2>Inverter 36 Parameters</h2>
                                <input type="checkbox" id="i36ACOutputLifetime" name="i36ACOutputLifetime">
                                <label>Inverter 36 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i36ACOutputYTD" name="i36ACOutputYTD">
                                <label>Inverter 36 AC Output YTD</label><br>
                                <input type="checkbox" id="i36ACOutputMTD" name="i36ACOutputMTD">
                                <label>Inverter 36 AC MTD</label><br>
                                <input type="checkbox" id="i36ACOutputDay" name="i36ACOutputDay">
                                <label>Inverter 36 AC Output Daily</label><br>
                                <input type="checkbox" id="i36ACOutputRealPower" name="i36ACOutputRealPower">
                                <label>Inverter 36 AC Output Real Power</label><br>
                                <input type="checkbox" id="i36ApparentPower" name="i36ApparentPower">
                                <label>Inverter 36 Apparent Power</label><br>
                                <input type="checkbox" id="i36ReactivePower" name="i36ReactivePower">
                                <label>Inverter 36 Reactive Power</label><br>
                                <input type="checkbox" id="i36PowerFactor" name="i36PowerFactor">
                                <label>Inverter 36 Power Factor</label><br>
                                <input type="checkbox" id="i36PhaseACurrent" name="i36PhaseACurrent">
                                <label>Inverter 36 Phase A Current</label><br>
                                <input type="checkbox" id="i36PhaseBCurrent" name="i36PhaseBCurrent">
                                <label>Inverter 36 Phase B Current</label><br>
                                <input type="checkbox" id="i36PhaseCCurrent" name="i36PhaseCCurrent">
                                <label>Inverter 36 Phase C Current</label><br>
                                <input type="checkbox" id="i36PhaseABVoltage" name="i36PhaseABVoltage">
                                <label>Inverter 36 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i36PhaseBCVoltage" name="i36PhaseBCVoltage">
                                <label>Inverter 36 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i36PhaseCAVoltage" name="i36PhaseCAVoltage">
                                <label>Inverter 36 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i36DCRealPower" name="i36DCRealPower">
                                <label>Inverter 36 DC Real Power</label><br>
                                <input type="checkbox" id="i36DCVolts" name="i36DCVolts">
                                <label>Inverter 36 DC Volts</label><br>
                                <input type="checkbox" id="i36DCCurrent" name="i36DCCurrent">
                                <label>Inverter 36 DC Current</label><br>
                                <input type="checkbox" id="i36Efficiency" name="i36Efficiency">
                                <label>Inverter 36 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter36()">Done selecting Inverter 36 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter37" name="inverter37" onclick="displayInverter37()">
                            <label>Inverter 37</label><br>
                            <div id="inv37">
                                <h2>Inverter 37 Parameters</h2>
                                <input type="checkbox" id="i37ACOutputLifetime" name="i37ACOutputLifetime">
                                <label>Inverter 37 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i37ACOutputYTD" name="i37ACOutputYTD">
                                <label>Inverter 37 AC Output YTD</label><br>
                                <input type="checkbox" id="i37ACOutputMTD" name="i37ACOutputMTD">
                                <label>Inverter 37 AC MTD</label><br>
                                <input type="checkbox" id="i37ACOutputDay" name="i37ACOutputDay">
                                <label>Inverter 37 AC Output Daily</label><br>
                                <input type="checkbox" id="i37ACOutputRealPower" name="i37ACOutputRealPower">
                                <label>Inverter 37 AC Output Real Power</label><br>
                                <input type="checkbox" id="i37ApparentPower" name="i37ApparentPower">
                                <label>Inverter 37 Apparent Power</label><br>
                                <input type="checkbox" id="i37ReactivePower" name="i37ReactivePower">
                                <label>Inverter 37 Reactive Power</label><br>
                                <input type="checkbox" id="i37PowerFactor" name="i37PowerFactor">
                                <label>Inverter 37 Power Factor</label><br>
                                <input type="checkbox" id="i37PhaseACurrent" name="i37PhaseACurrent">
                                <label>Inverter 37 Phase A Current</label><br>
                                <input type="checkbox" id="i37PhaseBCurrent" name="i37PhaseBCurrent">
                                <label>Inverter 37 Phase B Current</label><br>
                                <input type="checkbox" id="i37PhaseCCurrent" name="i37PhaseCCurrent">
                                <label>Inverter 37 Phase C Current</label><br>
                                <input type="checkbox" id="i37PhaseABVoltage" name="i37PhaseABVoltage">
                                <label>Inverter 37 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i37PhaseBCVoltage" name="i37PhaseBCVoltage">
                                <label>Inverter 37 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i37PhaseCAVoltage" name="i37PhaseCAVoltage">
                                <label>Inverter 37 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i37DCRealPower" name="i37DCRealPower">
                                <label>Inverter 37 DC Real Power</label><br>
                                <input type="checkbox" id="i37DCVolts" name="i37DCVolts">
                                <label>Inverter 37 DC Volts</label><br>
                                <input type="checkbox" id="i37DCCurrent" name="i37DCCurrent">
                                <label>Inverter 37 DC Current</label><br>
                                <input type="checkbox" id="i37Efficiency" name="i37Efficiency">
                                <label>Inverter 37 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter37()">Done selecting Inverter 37 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter38" name="inverter38" onclick="displayInverter38()">
                            <label>Inverter 38</label><br>
                            <div id="inv38">
                                <h2>Inverter 38 Parameters</h2>
                                <input type="checkbox" id="i38ACOutputLifetime" name="i38ACOutputLifetime">
                                <label>Inverter 38 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i38ACOutputYTD" name="i38ACOutputYTD">
                                <label>Inverter 38 AC Output YTD</label><br>
                                <input type="checkbox" id="i38ACOutputMTD" name="i38ACOutputMTD">
                                <label>Inverter 38 AC MTD</label><br>
                                <input type="checkbox" id="i38ACOutputDay" name="i38ACOutputDay">
                                <label>Inverter 38 AC Output Daily</label><br>
                                <input type="checkbox" id="i38ACOutputRealPower" name="i38ACOutputRealPower">
                                <label>Inverter 38 AC Output Real Power</label><br>
                                <input type="checkbox" id="i38ApparentPower" name="i38ApparentPower">
                                <label>Inverter 38 Apparent Power</label><br>
                                <input type="checkbox" id="i38ReactivePower" name="i38ReactivePower">
                                <label>Inverter 38 Reactive Power</label><br>
                                <input type="checkbox" id="i38PowerFactor" name="i38PowerFactor">
                                <label>Inverter 38 Power Factor</label><br>
                                <input type="checkbox" id="i38PhaseACurrent" name="i38PhaseACurrent">
                                <label>Inverter 38 Phase A Current</label><br>
                                <input type="checkbox" id="i38PhaseBCurrent" name="i38PhaseBCurrent">
                                <label>Inverter 38 Phase B Current</label><br>
                                <input type="checkbox" id="i38PhaseCCurrent" name="i38PhaseCCurrent">
                                <label>Inverter 38 Phase C Current</label><br>
                                <input type="checkbox" id="i38PhaseABVoltage" name="i38PhaseABVoltage">
                                <label>Inverter 38 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i38PhaseBCVoltage" name="i38PhaseBCVoltage">
                                <label>Inverter 38 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i38PhaseCAVoltage" name="i38PhaseCAVoltage">
                                <label>Inverter 38 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i38DCRealPower" name="i38DCRealPower">
                                <label>Inverter 38 DC Real Power</label><br>
                                <input type="checkbox" id="i38DCVolts" name="i38DCVolts">
                                <label>Inverter 38 DC Volts</label><br>
                                <input type="checkbox" id="i38DCCurrent" name="i38DCCurrent">
                                <label>Inverter 38 DC Current</label><br>
                                <input type="checkbox" id="i38Efficiency" name="i38Efficiency">
                                <label>Inverter 38 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter38()">Done selecting Inverter 38 parameters</button>
                            </div>
                        </div>
                        <div>
                            <input type="checkbox" id="inverter39" name="inverter39" onclick="displayInverter39()">
                            <label>Inverter 39</label><br>
                            <div id="inv39">
                                <h2>Inverter 39 Parameters</h2>
                                <input type="checkbox" id="i39ACOutputLifetime" name="i39ACOutputLifetime">
                                <label>Inverter 39 AC Output Lifetime</label><br>
                                <input type="checkbox" id="i39ACOutputYTD" name="i39ACOutputYTD">
                                <label>Inverter 39 AC Output YTD</label><br>
                                <input type="checkbox" id="i39ACOutputMTD" name="i39ACOutputMTD">
                                <label>Inverter 39 AC MTD</label><br>
                                <input type="checkbox" id="i39ACOutputDay" name="i39ACOutputDay">
                                <label>Inverter 39 AC Output Daily</label><br>
                                <input type="checkbox" id="i39ACOutputRealPower" name="i39ACOutputRealPower">
                                <label>Inverter 39 AC Output Real Power</label><br>
                                <input type="checkbox" id="i39ApparentPower" name="i39ApparentPower">
                                <label>Inverter 39 Apparent Power</label><br>
                                <input type="checkbox" id="i39ReactivePower" name="i39ReactivePower">
                                <label>Inverter 39 Reactive Power</label><br>
                                <input type="checkbox" id="i39PowerFactor" name="i39PowerFactor">
                                <label>Inverter 39 Power Factor</label><br>
                                <input type="checkbox" id="i39PhaseACurrent" name="i39PhaseACurrent">
                                <label>Inverter 39 Phase A Current</label><br>
                                <input type="checkbox" id="i39PhaseBCurrent" name="i39PhaseBCurrent">
                                <label>Inverter 39 Phase B Current</label><br>
                                <input type="checkbox" id="i39PhaseCCurrent" name="i39PhaseCCurrent">
                                <label>Inverter 39 Phase C Current</label><br>
                                <input type="checkbox" id="i39PhaseABVoltage" name="i39PhaseABVoltage">
                                <label>Inverter 39 Phase AB Voltage</label><br>
                                <input type="checkbox" id="i39PhaseBCVoltage" name="i39PhaseBCVoltage">
                                <label>Inverter 39 Phase BC Voltage</label><br>
                                <input type="checkbox" id="i39PhaseCAVoltage" name="i39PhaseCAVoltage">
                                <label>Inverter 39 Phase CA Voltage</label><br>
                                <input type="checkbox" id="i39DCRealPower" name="i39DCRealPower">
                                <label>Inverter 39 DC Real Power</label><br>
                                <input type="checkbox" id="i39DCVolts" name="i39DCVolts">
                                <label>Inverter 39 DC Volts</label><br>
                                <input type="checkbox" id="i39DCCurrent" name="i39DCCurrent">
                                <label>Inverter 39 DC Current</label><br>
                                <input type="checkbox" id="i39Efficiency" name="i39Efficiency">
                                <label>Inverter 39 Efficiency</label><br><br>
                                <button type="button" onclick="closeInverter39()">Done selecting Inverter 39 parameters</button>
                            </div>
                        </div>
                        <button type="button" onclick="closeInverters()">Done selecting inverters</button>
                    </div>
                </div>
                <div class="csvOptions">
                    <input type="checkbox" id="weather" name="weather" onclick="displayWeather()">
                    <label>Weather Data</label>
                    <div id="wthr">
                        <h2>Weather Parameters</h2>
                        <input type="checkbox" id="irradiancePOA" name="irradiancePOA">
                        <label>Solar Irradiance POA</label><br>
                        <input type="checkbox" id="irradianceGHI" name="irradianceGHI">
                        <label>Solar Irradiance GHI</label><br>
                        <input type="checkbox" id="panelTemp1" name="panelTemp1">
                        <label>Back of panel Temperature 1</label><br>
                        <input type="checkbox" id="ambientTemp" name="ambientTemp">
                        <label>Ambient Temperature</label><br>
                        <input type="checkbox" id="panelTemp2" name="panelTemp2">
                        <label>Back of panel Temperature 2</label><br>
                        <input type="checkbox" id="windSpeed" name="windSpeed">
                        <label>Wind Speed</label><br><br>       
                        <button type="button" onclick="closeWeather()">Done selecting weather parameters</button>                     
                    </div>                        
                </div>
            </div>            
            <br>
            <input type="submit" value="Create Report">
        </form>
    </div>  
   </body>
</html>