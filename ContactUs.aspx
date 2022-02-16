<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ContactUs.aspx.vb" Inherits="LameNews.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@2/dist/email.min.js"></script>
    <script type="text/javascript">
        (function () {
            // https://dashboard.emailjs.com/admin/integration
            emailjs.init('user_mNwwrkxJUUYfTaMFSCWHc');
        })();
    </script>
    
    <title></title>
    <style>
        @import url(//db.onlinewebfonts.com/c/50eafd25cbb5f88fe7bb5cc77421bb49?family=Freestyle+Script);
        @font-face {font-family: "Freestyle Script"; src: url("//db.onlinewebfonts.com/t/50eafd25cbb5f88fe7bb5cc77421bb49.eot"); src: url("//db.onlinewebfonts.com/t/50eafd25cbb5f88fe7bb5cc77421bb49.eot?#iefix") format("embedded-opentype"), url("//db.onlinewebfonts.com/t/50eafd25cbb5f88fe7bb5cc77421bb49.woff2") format("woff2"), url("//db.onlinewebfonts.com/t/50eafd25cbb5f88fe7bb5cc77421bb49.woff") format("woff"), url("//db.onlinewebfonts.com/t/50eafd25cbb5f88fe7bb5cc77421bb49.ttf") format("truetype"), url("//db.onlinewebfonts.com/t/50eafd25cbb5f88fe7bb5cc77421bb49.svg#Freestyle Script") format("svg"); } 
      
        body {
            width: 100%;
            height: auto;
            margin: 0px;
            padding: 0px;
            overflow-x: hidden; 
        }
        .map { 
            position: absolute;
            left: 700px; 
            top: 310px;
            width:35%;
            height:295px;
        }
        div.Rectangle {
            position: absolute;
            left: 0px; 
            top: 0px; 
            z-index: -1; 
        }
        div.Lame {
            position: relative; 
            text-align: center;
            font-family: 'Freestyle Script'; 
            font-size: 80px; 
        }
        .sm {
            position: absolute;
            left: 55%; 
            top :25px;
            font-family: 'Open Sans', sans-serif;
            font-size: 5px;
            color: #ffffff;
        }
        .button {
            border: none;
            color: white;
            height: 43px; 
            width: 160px; 
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }
        .News {
            position: absolute; 
            top: 50px; 
            left: 10%; 
            background-color: #1EAAF1; 
            color: white; 
            border: none;
        }
        .News:hover {
            background-color: white;
            color: gray;
            opacity: 0.5; 
        }
        .AboutUs {
            position: absolute; 
            top: 50px; 
            left: 30%; 
            background-color: #1EAAF1; 
            color: white; 
            border: none;
        }
        .AboutUs:hover {
            background-color: white;
            color: gray;
            opacity: 0.5; 
        }
        .Ad {
            position: absolute; 
            top: 50px; 
            right: 30%; 
            background-color: #1EAAF1; 
            color: white; 
            border: none;
        }
        .Ad:hover {
            background-color: white;
            color: gray;
            opacity: 0.5; 
        }
        .ContactUs {
            position: absolute; 
            top: 50px; 
            right: 10%;
            background-color: #1EAAF1; 
            color: white; 
            border: none;
        }
        .ContactUs:hover { 
            background-color: white;
            color: gray;
            opacity: 0.5; 
        }
        footer {
            position: absolute; 
            top: 771px;
            left: 0px; 
            width:100%; 
            height: 80px; 
            text-align: center;
            background-color: #1EAAF1;
            color: white;
        }
        .footerLinks {
            color: white;
            border: none; 
            text-decoration: none; 
            text-align: center; 
            font-size: 16px; 
            background-color: transparent; 
        }
        .fa {
            padding: 5px;
            font-size: 12px;
            width: 12px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
            border-radius: 50%; 
        }
        .fa:hover {
           opacity: 0.7;
        }
        .fa-facebook {
            position: absolute; 
            left: 1100px; 
            top: 35px;
            background: #ffffff;
            color: #1EAAF1;
        }
        .fa-instagram {
            position: absolute; 
            left: 1130px; 
            top: 35px;
            background: #ffffff;
            color: #1EAAF1;
        }
        .Newsloc {
            position: absolute; 
            left:83px; 
            top:35px; 
        }
        .AboutUsloc {
            position: absolute; 
            left:214px; 
            top: 35px; 
        }
        .advertiseloc {
            position: absolute; 
            left: 340px; 
            top: 35px; 
        }
        .contactusloc {
            position: absolute; 
            left: 484px; 
            top: 35px; 
        }
        .contactTitle {
            position: absolute; 
            top: 190px; 
            left: 168px; 
            font-family: 'Open Sans'; 
            font-size: 38px; 
            text-align: left; 
        }
        label {
            display:block;
        }
        .name {
            position: absolute; 
            left:168px; 
            top: 303px;
            width: 30%; 
            height: 45px; 
            border: 1px solid #DDDDDD; 
            -moz-appearance: none; 
            -webkit-appearance: none; 
        }
        .email {
            position: absolute; 
            left:168px; 
            top: 377px; 
            width: 30%; 
            height: 45px; 
            border: 1px solid #DDDDDD; 
            -moz-appearance: none; 
            -webkit-appearance: none; 
             
        }
        .textarea {
            position: absolute; 
            left:168px; 
            top: 448px; 
            border: 1px solid #DDDDDD; 
            width: 30%; 
            height: 120px; 
            resize: none; 
            -moz-appearance: none; 
            -webkit-appearance: none; 
        }
        .submit {
            position: absolute; 
            left: 168px; 
            top: 600px; 
            width: 13%; 
            height: 43px; 
            background-color: #CCCCCC; 
            border: none; 
            font-family: 'Open Sans'; 
            color: white; 
            cursor: pointer;
            -moz-appearance: none; 
            -webkit-appearance: none; 
        }
        .location {
            position: absolute; 
            left: 720px; 
            top: 615px; 
            font-family: 'Open Sans'; 
            font-size: 12px; 
            color: #B2B2B2; 
        }
        .lameEmail2 { 
            position: absolute;
            left: 1030px; 
            top: 660px; 
            font-family: 'Open Sans'; 
            font-size: 12px; 
            color: #B2B2B2;
        }
        .phone{
            position: absolute;
            left: 1030px; 
            top: 635px; 
            font-family: 'Open Sans'; 
            font-size: 12px; 
            color: #B2B2B2;
        }
        .phoneIcon {
            position: absolute; 
            left: 1000px; 
             top: 643px; 
            width: 13px;
            height: 10px;
            color: #B2B2B2;
            -moz-appearance: none; 
            -webkit-appearance: none; 
        }
        .emailIcon2 {
            position: absolute; 
            left: 1000px; 
             top: 668px; 
            width: 13px;
            height: 10px;
            color: #B2B2B2;
            -moz-appearance: none; 
            -webkit-appearance: none; 
        }
          /*Responsive Mobile CSS Code*/
        @media only screen and (max-width: 560px) {
            .button {
                display: none;
            }
            .sm {
                display: none;
            }
            .emailIcon2 {
                display: none;
            }
            .lameEmail2 {
                display: none;
            }
            .Lame {
                position: absolute;
                top: -15px;
                text-align: center;
                height: auto;
            }
            .material-icons {
                text-align: right;
                cursor: pointer;
            }
            .footerLinks {
                display: none;
            }
            .foot {
                position: absolute;
                top: 975px;
                left: 0px;
            }
            .contactTitle {
                position: absolute;
                top: 120px;
                left: 0;
                text-align: center;
                font-size: 38px;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .name {
                position: absolute;
                left: 0px;
                top: 250px;
                width: 60%;
                height: 45px;
                border: 1px solid #DDDDDD;
                margin-left: 20%;
                margin-right: 20%;
                -moz-appearance: none; 
                -webkit-appearance: none; 
            }
            .fa-facebook {
                position: absolute; 
                top: 25px; 
                left: 230px; 
            }
            .fa-instagram {
                position: absolute; 
                top: 25px;
                left:190px 
            }
            .email {
                position: absolute;
                left: 0px;
                top: 325px;
                width: 60%;
                height: 45px;
                border: 1px solid #DDDDDD;
                margin-left: 20%;
                margin-right: 20%;
                -moz-appearance: none; 
                -webkit-appearance: none; 
            }
            .textarea {
                position: absolute;
                left: 0px;
                top: 400px;
                width: 60%;
                height: 120px;
                border: 1px solid #DDDDDD;
                margin-left: 20%;
                margin-right: 20%;
                resize: none;
                -moz-appearance: none; 
                -webkit-appearance: none; 
            }
            .submit {
                position: absolute;
                left: 0px;
                top: 560px;
                width: 40%;
                height: 43px;
                background-color: #CCCCCC;
                border: none;
                font-family: 'Open Sans';
                color: white;
                margin-left: 30%;
                margin-right: 30%;
                -moz-appearance: none; 
                -webkit-appearance: none; 
            }
            .map {
                display: none; 
            }
            .phone {
                position: absolute;
                top: 670px;
                left: 0px;
                font-family: 'Open Sans';
                font-size: 18px;
                color: #B2B2B2;
                width: 90%;
                text-align: center;
                padding-left: 5%;
                padding-right: 5%;
            }
            .phoneIcon {
                position: absolute;
                left: 0px;
                top: 650px;
                width: 20%;
                margin-left: 40%;
                margin-right: 40%;
                height: 65px;
                text-align: center;
                color: #B2B2B2;
                -moz-appearance: none; 
                -webkit-appearance: none; 
            }
            .lameEmail {
                position: absolute;
                top: 745px;
                left: 0px;
                font-family: 'Open Sans';
                font-size: 18px;
                color: #B2B2B2;
                width: 90%;
                text-align: center;
                padding-left: 5%;
                padding-right: 5%;
            }
            .emailIcon {
                position: absolute;
                left: 0px;
                top: 725px;
                width: 20%;
                margin-left: 40%;
                margin-right: 40%;
                height: 65px;
                text-align: center;
                color: #B2B2B2;
                -moz-appearance: none; 
                -webkit-appearance: none; 
            }
            .dropdown {
                position: relative;
                display: inline-block;
            }
            .dropdown-content {
                display: none;
                position: absolute;
                top: -100px;
                background-color: #f1f1f1;
                min-width: 160px;
                overflow: auto;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
                .dropdown-content a {
                    color: black;
                    padding: 12px 16px;
                    text-decoration: none;
                    display: block;
                }
            .dropdown a:hover {
                background-color: #ddd;
            }
            .show {
                display: block;
            }
            .location {
                position: absolute;
                left: 0px;
                top: 825px;
                font-size: 15px; 
                width: 60%;
                margin-left: 20%;
                margin-right: 20%;
                text-align: center; 
                color: #B2B2B2;
                white-space: nowrap
            }
        }
            /*Responsive CSS Code For Desktop*/
            @media only screen and (min-width:560px) {
                .material-icons {
                    display: none;
                }
                .dropdown {
                    display: none;
                }
                .emailIcon {
                    display: none;
                }
                .lameEmail {
                    display: none;
                }
            }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!--Header Title-->
        <div class="Rectangle" style="width:100%; height:125px; background-color: #1EAAF1"></div>
        <div><i class="material-icons" onclick="myFunction()" style="font-size:36px; color: white;">menu</i></div>
        <div class="Lame" style="color:white";>Lame</div>
        <p class="sm">SM</p>
    </form>

    <!--button-->
    <form action="HomePage.aspx">
     <button class="button News" type="submit">News</button>
    </form>

    <form action="AboutUs.aspx">
        <button class="button AboutUs" type="submit">About Us</button> 
    </form>

    <form action="Advertise.aspx">
        <button class="button Ad" type="submit">Advertising</button>
    </form>

    <form action="ContactUs.aspx">
        <button class="button ContactUs" type="submit">Contact Us</button>
    </form>

    <!--Content--> 
        <p class="location">Lame, LLC <br />8131 Lyndon B Johnson <br />Suite 270 <br />Dallas, Texas 75251 </p>
        <p class="lameEmail">hello@lame.mobi</p>
        <p class="lameEmail2">hello@lame.mobi</p>
        <p class="phone">(214) 272-2753</p>
        <span class="phoneIcon">&#9742;</span>
        <span class="emailIcon">&#9993;</span> 
        <span class="emailIcon2">&#9993;</span> 

    <!-- Email -->

        <p class="contactTitle">Contact Us</p>
        <form id="contact-form">
            <input class ="name" type="text" name="user_name" placeholder="First Name" />
            <input class ="email" type="email" name="user_email" placeholder="Email" />
            <textarea class="textarea" name="message" placeholder="Write your message here..."></textarea>
            <input class= "submit" type="submit" value="Send"/>
        </form>


    <script>
        import emailjs from 'emailjs-com';
        export default {
            methods: {
                sendEmail: (e) => {
                    emailjs.sendForm('service_fc9m15i', '__ejs-test-mail-service__', e.target, 'user_mNwwrkxJUUYfTaMFSCWHc')
                        .then((result) => {
                            console.log('SUCCESS!', result.status, result.text);
                        }, (error) => {
                            console.log('FAILED...', error);
                        });
                }
            }
        }
    </script>


    <!-- Map --> 
        <div class="map" id="mapid">
            <script>

                var mymap = L.map('mapid').setView([32.779167, -96.808891], 8);

                L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
                    maxZoom: 18,
                    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, ' +
                        'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
                    id: 'mapbox/streets-v11',
                    tileSize: 512,
                    zoomOffset: -1
                }).addTo(mymap);

                L.marker([32.779167, -96.808891]).addTo(mymap);

            </script>
        </div>


     <script>
         /* When the user clicks on the button, 
         toggle between hiding and showing the dropdown content */
         function myFunction() {
             document.getElementById("myDropdown").classList.toggle("show");
         }
         // Close the dropdown if the user clicks outside of it
         window.onclick = function (event) {
             if (!event.target.matches('.material-icons')) {
                 var dropdowns = document.getElementsByClassName("dropdown-content");
                 var i;
                 for (i = 0; i < dropdowns.length; i++) {
                     var openDropdown = dropdowns[i];
                     if (openDropdown.classList.contains('show')) {
                         openDropdown.classList.remove('show');
                     }
                 }
             }
         }
     </script>

    <div class="dropdown">
  <div id="myDropdown" class="dropdown-content">
    <a href="HomePage.aspx">News</a>
    <a href="AboutUs.aspx">About Us</a>
    <a href="Advertise.aspx">Advertising</a>
    <a href="ContactUs.aspx">Contact Us</a>
    </div>
  </div>

    <!--Footer--> 
    <footer class="foot">
        <a class="footerLinks Newsloc" href="HomePage.aspx">News</a>
        <a class="footerLinks AboutUsloc" href="AboutUs.aspx">About Us</a>
        <a class="footerLinks advertiseloc" href="Advertise.aspx">Advertising</a>
        <a class="footerLinks contactusloc" href="ContactUs.aspx">Contact Us</a>
        <a href="#" class="fa fa-facebook"></a>
        <a href="#" class="fa fa-instagram"></a>
    </footer>

</body>
</html>