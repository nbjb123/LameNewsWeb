<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Advertise.aspx.vb" Inherits="LameNews.Advertise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
    <link href="//db.onlinewebfonts.com/c/50eafd25cbb5f88fe7bb5cc77421bb49?family=Freestyle+Script" rel="stylesheet" type="text/css"/> 
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
        .wrapper{
            max-width: 1280px; 
            margin: 0 auto; 
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
            top: 800px;
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
        .imageAd {
            position: absolute; 
            top: 340px;
            left: 800px; 
            width: 400px; 
            height: 350px; 
        }
        .contentTitle {
            position: absolute; 
            left: 200px; 
            top: 155px;
            font-size: 38px; 
            font-family: 'Open Sans';
            color: #434343; 
            text-align: center; 
        }
        .contentTitle3 {
            position: absolute; 
             left: 677px; 
            top: 547px;
            font-size: 13px; 
            font-family: 'Open Sans';
            color: #666666; 
            text-align: left; 
        }
        .contentTitle4 {
            position: absolute; 
            left: 677px; 
            top: 702px;
            font-size: 14px; 
            font-family: 'Open Sans';
            color: #666666; 
            text-align: center; 
        }
        .contentTitle5 {
            position: absolute; 
            left: 677px; 
            top: 857px;
            font-size: 13px; 
            font-family: 'Open Sans';
            color: #434343; 
            text-align: center; 
        }
        .contentParagraph {
            position: absolute; 
            left: 168px; 
            top: 375px;
            width:550px; 
            height:auto; 
            font-size: 18px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
            line-height: 1.5;  
        }
        .contentParagraph2 {
            position: absolute; 
            left: 677px; 
            top: 340px;
            font-size: 15px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
            line-height: 1.5;
        }
        .contentParagraph3{
            position: absolute; 
            left: 677px; 
            top: 573px;
            font-size: 12px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
            line-height: 1.5;
        }
        .contentParagraph4{
            position: absolute; 
            left: 677px; 
            top: 728px;
            font-size: 12px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
            line-height: 1.5;
        }
        .contentParagraph5{
            position: absolute; 
            left: 677px; 
            top: 883px;
            font-size: 12px; 
            font-family: 'Open Sans';
            color: #B2B2B2;
            line-height: 1.5;
        }
        /*Responsive Mobile CSS Code*/
        @media only screen and (max-width: 560px) {
            .button {
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
                top: 1200px;
                left: 0px;
            }
            .contentTitle {
                position: absolute;
                top: 150px;
                left: 0px;
                text-align: center;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .contentParagraph {
               position: absolute; 
                top: 800px; 
                left: 0px;
                text-align: left; 
                padding-left: 5%;
                width: 95%;  
                height: auto; 
            }
            .sm {
                 display: none; 
             }
            .imageAd {
                position: absolute;
                top: 450px;
                left: 0px;
                width: 80%;
                height: 300px;
                margin-left: 10%;
                margin-right: 10%
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
            .dropdown a:hover {background-color: #ddd;}
            .show {display: block;}
        }
        /*Responsive CSS Code For Desktop*/
        @media only screen and (min-width:560px){
            .material-icons {
                display: none; 
            }
            .dropdown{
                display: none; 
            }
        }
    </style>
</head>
<body>
    <div id="wrapper">
    <form id="form1" runat="server">
        <!--Header Title-->
        <div class="Rectangle" style="width:100%; height:125px; background-color: #1EAAF1"></div>
        <div><i class="material-icons" onclick="myFunction()" style="font-size:36px; color: white;">menu</i></div>
        <div class="Lame" style="color:white";>Lame</div>
        <p class="sm">SM</p>
    </form>

    <!-- Content --> 
                    <!--titles-->
    <p class="contentTitle">Lame's GenZ members create ads for the GenZers <br />community. </p>


                    <!--paragraphs-->
    <p class="contentParagraph">Within the app, Lame created automated ad management processes 
        to facilitate ad creation, approval and delivery.  Talented Lame users 
        create entertaining Lame Ads for our sponsors. Lame Ad creators earn 33%
        of the ad’s revenue creating hundreds of jobs over the next 5 years. 
        Companies interested in advertising on Lame can contact us a hello@lame.mobi. 
        Lame’s advertising program will begin as our membership base grows.  Look 
        for more information later this fall.  </p>



                        <!--images-->
         <img class="imageAd" src="https://i.ibb.co/8Dr7TY5/thumbnail-image003.jpg" />


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
    <!--Footer--> 
    <footer class="foot">
        <a class="footerLinks Newsloc" href="HomePage.aspx">News</a>
        <a class="footerLinks AboutUsloc" href="AboutUs.aspx">About Us</a>
        <a class="footerLinks advertiseloc" href="Advertise.aspx">Advertising</a>
        <a class="footerLinks contactusloc" href="ContactUs.aspx">Contact Us</a>
        <a href="#" class="fa fa-facebook"></a>
        <a href="#" class="fa fa-instagram"></a>
    </footer>
</div>
</body>
</html>
