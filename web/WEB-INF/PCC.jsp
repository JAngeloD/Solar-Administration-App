

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
            .data{
                border-radius: 1em;
                border: 2px solid;
                background-color: #F5F3E6;
                position: absolute;
                font: sans-serif;  
                font-size: 10px;
                padding: 5px;
            }
            label, input{
                font-size: 10px;
                font-weight: bold;
                background-color: #F5F3E6;
                border: 0;
                border-width: 0;
                width: 60px;
            }
            #f1data{
                left: 220px;
                top: 60px;
            }
            #f2data{
                left: 220px;
                top: 500px;
            }
            #pccdata{
                left: 700px;
                top: 100px;
            }
            button{
                width: 80px;
                background-color: #6F1D1B;
                color: whitesmoke;
                position: absolute;
                left: 410px;
                top: 440px;
            }
        </style>
    </head>
    <body>
        <div id="f1data" class="data">
            <label>Real Power: <input type="number" id="" class="" step="1" readonly="true" size="1" value="1000">kWatts</label><br>
            <label>Reactive Power: <input type="number" id="" class="" step="0.1" readonly="true" size="10" value="1000"> kVAr</label><br>
            <label>Power Factor: <input type="number" id="" class="" step="0.1" readonly="true" size="10" value="1000"> %</label><br>
            <label>Voltage: <input type="number" id="" class="" step="1" readonly="true" size="10" value="1000"> Voltage</label>
        </div>
        <br>
        <div id="pccdata" class="data">
            <label>Real Power: <input type="number" id="" class="" step="1" readonly="true" size="10" value="1000"> kWatts</label><br>
            <label>Reactive Power: <input type="number" id="" class="" step="0.1" readonly="true" size="10" value="1000"> kVAr</label><br>
            <label>Power Factor: <input type="number" id="" class="" step="0.1" readonly="true" size="10" value="1000"> %</label><br>
            <label>Voltage Vab: <input type="number" id="" class="" step="1" readonly="true" size="10" value="1000"> Voltage</label><br>
            <label>Voltage Vbc: <input type="number" id="" class="" step="1" readonly="true" size="10" value="1000"> Voltage</label><br>
            <label>Voltage Vca: <input type="number" id="" class="" step="1" readonly="true" size="10" value="1000"> Voltage</label>
        </div>
        <div id="electricDiagram">
            <svg
                width="1280"
                height="720"
                viewBox="0 0 338.66667 190.5"
                version="1.1"
                id="svg5"
                inkscape:version="1.1.1 (3bf5ae0d25, 2021-09-20)"
                sodipodi:docname="breaker control.svg"
                xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
                xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
                xmlns="http://www.w3.org/2000/svg"
                xmlns:svg="http://www.w3.org/2000/svg">
                <sodipodi:namedview
                    id="namedview7"
                    pagecolor="#ffffff"
                    bordercolor="#cccccc"
                    borderopacity="1"
                    inkscape:pageshadow="0"
                    inkscape:pageopacity="1"
                    inkscape:pagecheckerboard="0"
                    inkscape:document-units="mm"
                    showgrid="true"
                    units="px"
                    inkscape:zoom="1.4142136"
                    inkscape:cx="415.07168"
                    inkscape:cy="283.19627"
                    inkscape:window-width="2400"
                    inkscape:window-height="1271"
                    inkscape:window-x="2391"
                    inkscape:window-y="-9"
                    inkscape:window-maximized="1"
                    inkscape:current-layer="layer1"
                    showguides="false">
                        <inkscape:grid
                            type="xygrid"
                            id="grid13507" />
                </sodipodi:namedview>
                <defs
                    id="defs2">
                    <clipPath
                        clipPathUnits="userSpaceOnUse"
                        id="clipPath407">
                        <path
                            d="M 8.503906,104.563 H 1215.4959 V 783.4961 H 8.503906 Z"
                            id="path405" />
                    </clipPath>
                </defs>                
                <g
                    inkscape:label="Layer 1"
                    inkscape:groupmode="layer"
                    id="layer1">
                    <g
                        id="g21717"
                        transform="translate(-5.2916669,-2.6458334)">
                        <g
                            id="g401"
                            transform="matrix(0.34763372,0,0,-0.34474501,-46.862595,271.6768)">
                            <g
                                id="g403"
                                clip-path="url(#clipPath407)"
                                transform="matrix(1.0378874,0,0,1.057758,-5.9221938,-12.3411)">
                                <g
                                    id="g569"
                                    transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)">
                                    <g
                                        id="g1967" />
                                </g>
                                <g
                                    id="g2788"
                                    transform="translate(-134.51335,52.094911)">
                                    <g
                                        id="g399"
                                        transform="matrix(0.93412032,0,0,0.89051113,-78.87677,87.389622)" />
                                    <g
                                        id="g545"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g417"
                                        transform="matrix(0,-0.3771851,-0.3771851,0,582.8162,1010.579)" />
                                    <g
                                        id="g421"
                                        transform="matrix(0,-0.3771851,-0.3771851,0,821.1169,772.2781)" />
                                    <g
                                        id="g425"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <path
                                        d="m 429.1275,610.9481 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5445,-0.5892 -2.1337,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5445,0.5892 2.1337,0"
                                        style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                        id="path429" />
                                    <g
                                        id="g431"
                                        transform="matrix(0.37361212,0,0,-0.3771851,12.467556,783.4961)" />
                                    <path
                                        d="m 429.1275,372.6474 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5445,-0.5892 -2.1337,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5445,0.5892 2.1337,0"
                                        style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                        id="path435" />
                                    <g
                                        id="g437"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g437-6"
                                        transform="matrix(0.3771851,0,0,-0.37620137,7.7423455,640.00062)" />
                                    <g
                                        id="g445"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g449"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g453"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g457"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g461"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <path
                                        d="m 620.2277,516.0424 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5445,-0.5892 -2.1337,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5445,0.5892 2.1337,0"
                                        style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                        id="path465" />
                                    <g
                                        id="g467"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <path
                                        d="m 620.2277,468.4206 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5444,-0.5892 -2.1336,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5444,0.5892 2.1336,0"
                                        style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                        id="path471" />
                                    <g
                                        id="g473"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <path
                                        d="m 681.8344,515.9929 c 0.3536,-0.3536 0.3536,-0.9267 0,-1.2802 -0.3535,-0.3536 -0.9266,-0.3536 -1.2802,0 -0.3535,0.3535 -0.3535,0.9266 0,1.2802 0.3536,0.3535 0.9267,0.3535 1.2802,0 m 20.8207,0 c 0.3535,-0.3536 0.3535,-0.9267 0,-1.2802 -0.3536,-0.3536 -0.9267,-0.3536 -1.2802,0 -0.3536,0.3535 -0.3536,0.9266 0,1.2802 0.3535,0.3535 0.9266,0.3535 1.2802,0 m -20.5555,-0.6401 17.8637,6.5018"
                                        style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                        id="path477" />
                                    <g
                                        id="g479"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g483"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <path
                                        d="m 681.8344,467.9938 c 0.3536,-0.3535 0.3536,-0.9267 0,-1.2802 -0.3535,-0.3535 -0.9266,-0.3535 -1.2802,0 -0.3535,0.3535 -0.3535,0.9267 0,1.2802 0.3536,0.3536 0.9267,0.3536 1.2802,0 m 20.8207,0 c 0.3535,-0.3535 0.3535,-0.9267 0,-1.2802 -0.3536,-0.3535 -0.9267,-0.3535 -1.2802,0 -0.3536,0.3535 -0.3536,0.9267 0,1.2802 0.3535,0.3536 0.9266,0.3536 1.2802,0 m -20.5555,-0.6401 17.8637,6.5019"
                                        style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                        id="path487" />
                                    <g
                                        id="g489"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g493"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <path
                                        d="m 681.3559,468.4206 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5444,-0.5892 -2.1336,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5444,0.5892 2.1336,0"
                                        style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                        id="path497" />
                                    <g
                                        id="g247">
                                        <g
                                            id="g254">
                                            <g
                                                id="g261">
                                                <g
                                                    id="g268">
                                                    <g
                                                        id="g75">
                                                        <g
                                                            id="g499"
                                                            transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                                        <g
                                                            id="g587">
                                                            <g
                                                                id="g915" />
                                                        </g>
                                                    </g>
                                                </g>
                                            </g>
                                        </g>
                                    </g>                                    
                                    <g
                                        id="g160">
                                        <g
                                            id="g535"
                                            transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                        <g
                                            id="g708">
                                            <g
                                                id="g1124" />
                                        </g>
                                    </g>
                                    <g
                                        id="g2695"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.5039091,783.4961)">
                                        <path
                                            d="m 1062.337,1042.078 v 29.4 m 50,0 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 m 50,70.6 v -29.4 m -50,0 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5"
                                            style="fill:none;stroke:#000000;stroke-width:5.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path423"
                                            transform="rotate(90,1062.3365,1092.0779)" />
                                        <path
                                            d="m 1112.337,1092.078 h 290.49"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path433"
                                            transform="matrix(0.99052725,0,0,1,10.508497,8.6722767e-7)" />
                                        <path
                                            d="M 1401.839,460.241 V 711.9156"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path439-4"
                                            transform="matrix(1,0,0,0.99739192,-2.0190605,380.43782)" />
                                        <path
                                            d="m 1402.247,839.4536 167.329,-1.5943"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path451"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1568.985,813.1624 h 50 v 50 h -50 z"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path459"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1618.985,838.1624 79.256,-0.1366"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path469"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1697.019,838.4535 84.03,-0.291"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path495"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1785.146,836.4654 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9372 2.457,-0.9372 3.394,0 m 55.2,0 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9372 2.457,-0.9372 3.394,0 m -54.497,1.6971 47.361,-17.2379"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path491"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1844.7638,838.1625 120.655,-0.1187"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path501"
                                            sodipodi:nodetypes="cc"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 748.4292,467.3985 -2.0594,-0.002 m 0.002,-1.8969 -0.004,3.7938 8.9261,-1.8881 -8.9223,-1.9057 z"
                                            style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                            id="path507"
                                            transform="matrix(2.6512181,0,0,-2.6512182,-22.545717,2077.2191)" />
                                        <path
                                            d="m 1062.337,410.2909 v 29.4 m 50,0 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 m 50,70.6 v -29.4 m -50,0 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5"
                                            style="fill:none;stroke:#000000;stroke-width:5.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path419"
                                            transform="rotate(90,1062.3368,460.29044)" />
                                        <path
                                            d="m 1112.337,460.2909 288.6,-0.0195"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path427"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="M 1401.839,460.241 V 711.9156"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path439" />
                                        <path
                                            d="m 1401.839,711.9156 168.062,-0.4848"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path447"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1568.985,686.9066 h 50 v 50 h -50 z"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path455"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1618.985,711.9066 76.264,-0.1366"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path463"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="M 1696.882,712.0256 V 838.3169"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path475"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1697.019,712.1622 84.976,-0.7314"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path485"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="m 1785.146,709.2095 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9373 2.457,-0.9373 3.394,0 m 55.2,0 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9373 2.457,-0.9373 3.394,0 m -54.497,1.6971 47.361,-17.2379"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path481"
                                            transform="translate(8.186185e-6)" />
                                        <path
                                            d="M 1839.919,710.2051 H 1960.71"
                                            style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                            id="path537"
                                            transform="translate(8.186185e-6)" />                                                                         
                                        <path
                                            d="m 748.0544,515.6173 h -2.0594 m 0,-1.8968 v 3.7937 l 8.9242,-1.8969 z"
                                            style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                                            id="path543"
                                            transform="matrix(2.6512181,0,0,-2.6512182,-22.545717,2077.2191)" />
                                        <path
                                            d="m 1500.433,510.1538 h 187.1035 v 614.2994 H 1500.433 Z"
                                            style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:2, 2;stroke-dashoffset:0;stroke-opacity:1"
                                            id="path571" />
                                    </g>
                                    <g
                                        id="g579"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g591"
                                        transform="matrix(0.3771851,0,0,0.3771851,747.4881,557.5277)" />
                                    <g
                                        id="g653"
                                        transform="matrix(0.3771851,0,0,0.3771851,477.2392,566.7687)" />
                                    <g
                                        id="g823"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <g
                                        id="g881"
                                        transform="matrix(0.3771851,0,0,-0.3771851,8.503906,783.4961)" />
                                    <path
                                        d="M -108.00012,419.21002 V 324.28211"
                                        style="fill:none;stroke:#000000;stroke-width:2.26311;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                                        id="path439-7" />
                                </g>
                            </g>
                        </g>
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="47.625"
                            y="46.169785"
                            id="text6506"><tspan
                            sodipodi:role="line"
                            id="tspan6504"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="47.625"
                            y="46.169785">T1</tspan></text>
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="47.846176"
                            y="132.77742"
                            id="text6506-1"><tspan
                            sodipodi:role="line"
                            id="tspan6504-4"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="47.846176"
                            y="132.77742">T2</tspan></text>
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="114.30106"
                            y="63.6819"
                            id="text6506-1-3"><tspan
                            sodipodi:role="line"
                            id="tspan6504-4-2"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="114.30106"
                            y="63.6819">CB-501</tspan></text>                        
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="145.65416"
                            y="63.417313"
                            id="text6506-1-3-27"><tspan
                            sodipodi:role="line"
                            id="tspan6504-4-2-8"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="145.65416"
                            y="63.417313">SW-501</tspan></text>
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="145.91873"
                            y="95.299606"
                            id="text6506-1-3-27-7"><tspan
                            sodipodi:role="line"
                            id="tspan6504-4-2-8-8"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="145.91873"
                            y="95.299606">SW-502</tspan></text>
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="176.08122"
                            y="70.164185"
                            id="text6506-1-3-27-7-9"><tspan
                            sodipodi:role="line"
                            id="tspan6504-4-2-8-8-1"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="176.08122"
                            y="70.164185">To Fortis</tspan></text>
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="175.94893"
                            y="87.494392"
                            id="text6506-1-3-27-7-9-0"><tspan
                            sodipodi:role="line"
                            id="tspan6504-4-2-8-8-1-2"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="175.94893"
                            y="87.494392">To Station Service</tspan></text>
                        <text
                            xml:space="preserve"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;line-height:1.25;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;fill:#000000;fill-opacity:1;stroke:none;stroke-width:0.264583"
                            x="114.27428"
                            y="95.33268"
                            id="text6506-1-3-2"><tspan
                            sodipodi:role="line"
                            id="tspan6504-4-2-5"
                            style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:4.23333px;font-family:sans-serif;-inkscape-font-specification:'sans-serif, Normal';font-variant-ligatures:normal;font-variant-caps:normal;font-variant-numeric:normal;font-variant-east-asian:normal;stroke-width:0.264583"
                            x="114.27428"
                            y="95.33268">CB-502</tspan></text>
                    </g>
                    <g>                    
                        <button x="114.27428" y="95.33268">This is a button</button>                    
                    </g>
                </g>
            </svg>
        </div>
        <div>
            <button>Breaker Control</button>
        </div>
        <div id="f2data" class="data">
            <label>Real Power: <input type="number" id="" class="" step="1" readonly="true" size="10" value="1000"> kWatts</label><br>
            <label>Reactive Power: <input type="number" id="" class="" step="0.1" readonly="true" size="10" value="1000"> kVAr</label><br>
            <label>Power Factor: <input type="number" id="" class="" step="0.1" readonly="true" size="10" value="1000"> %</label><br>
            <label>Voltage: <input type="number" id="" class="" step="1" readonly="true" size="10" value="1000"> Voltage</label>
        </div>
    </body>
</html>
