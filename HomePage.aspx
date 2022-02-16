<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="HomePage.aspx.vb" Inherits="LameNews.HomePage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
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
        div.Rectangle {
           position: absolute;
            left: 0px; 
            top: 0px; 
            z-index: -1; 
            width:100%; 
            height:125px; 
            background-color: #1EAAF1 
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
            top: 745px;
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
        .image1 {
            position: absolute;
            left: 760px;
            top: 250px;
            width:35%; 
            height:45%;
            border: none; 
        }
        .image2 {
            position: absolute; 
            left: 810px; 
            top: 290px; 
            width:35%; 
            height:45%;
            border: none;
            background-color: black; 
        }
        .title { 
            position: absolute; 
            left: 129px; 
            top: 294px; 
            font-family: 'Open Sans', sans-serif; 
            font-size: 32px; 
            color: #434343; 
             text-decoration: none;
        }
        .title2 { 
            position: absolute; 
            left: 129px; 
            top: 294px; 
            font-family: 'Open Sans', sans-serif;
            font-size: 32px; 
            color: #434343; 
             text-decoration: none;
        }
        .title:hover {
            color: #1EAAF1; 
        }
        .summary {
            position: absolute; 
            left: 129px; 
            top: 410px; 
            font-family: 'Open Sans', sans-serif;
            font-size: 13px;
            line-height: 1.5;
            color: #B2B2B2; 
        }
        .summary2 {
            position: absolute; 
            left: 129px; 
            top: 350px; 
            font-family: 'Open Sans', sans-serif;
            font-size: 13px;
            line-height: 1.5;
            color: #B2B2B2; 
        }
        .prev, .next {
            text-decoration: none;
            display: inline-block;
            padding: 8px 16px;
           }
        .prev:hover, .next:hover {
            background-color: #B2B2B2; 
            color: white;
         }
        .prev {
           position: absolute; 
           left: 130px; 
           top: 600px;
           border: solid 0.5px #B2B2B2; 
           background-color: #ffffff;
           color: #B2B2B2;
        }
        .next {
            position: absolute; 
            left: 191px; 
            top: 600px; 
            border: solid 0.5px #B2B2B2; 
            background-color: #ffffff;
            color: #B2B2B2; 
        }
        .round {
             border-radius: 50%;
        }
        .Slide1 {
            display: none
        }
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }
        @-webkit-keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
        }
        @keyframes fade {
            from {opacity: .4} 
            to {opacity: 1}
        }
        /*Responsive Mobile CSS Code*/
        @media only screen and (max-width: 560px){
            .button {
                display: none; 
            }
            .Lame{
                position: absolute; 
                top: -15px; 
                text-align: center; 
                height: auto; 
            }
            .material-icons{
                text-align: right;
                cursor: pointer; 
            }
            .footerLinks {
                display: none; 
            }
            .foot {
                position: absolute; 
                top: 800px;
                left: 0px; 
            }
            .image1{
                position: absolute; 
                top: 250px; 
                left: 0px;
                padding-left: 10%;
                padding-right: 10%;
                width: 80%; 
                height: auto; 
            }
            .image2 {
                position: absolute;
                top: 250px;
                left: 0px;
                margin-left: 10%;
                margin-right: 10%; 
                width: 80%; 
                height: 30%; 
            }
            .title{
                position: absolute; 
                top: 490px; 
                left: 0;
                text-align: center; 
                font-size: 19px; 
                padding-left: 5%; 
                padding-right: 5%;
                width: 90%; 
            }
            .title2{
                position: absolute; 
                top: 490px; 
                left: 0;
                text-align: center; 
                font-size: 19px; 
                padding-left: 5%; 
                padding-right: 5%;
                width: 90%; 
            }
            .sm {
                 display: none; 
             }
            .summary{
                position: absolute; 
                top: 560px; 
                left: 0;
                text-align: left; 
                font-size: 15px; 
                padding-left: 5%; 
                padding-right: 5%;
                width: 90%; 
            }
            .summary2{
                position: absolute; 
                top: 560px; 
                left: 0;
                text-align: left; 
                font-size: 15px; 
                padding-left: 5%; 
                padding-right: 5%;
                width: 90%; 
            }
            .prev{
                position: absolute; 
                top: 175px; 
                left: 15px;
            }
            .next{
                position: absolute; 
                top: 175px; 
                left: 60px;
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
            .dropdown {
                display: none; 
            }
        }
    </style>
</head>
<body>
     
        <!--Header Title-->
        <div class="Rectangle" style="width:100%; height:125px; background-color: #1EAAF1"></div>
        <div><i class="material-icons" onclick="myFunction()" style="font-size:36px; color: white;">menu</i></div>
        <div class="Lame" style="color:white";>Lame</div>
        <p class="sm">SM</p>
    <!-- SlideShow-->

    <div class="slideshow-container">

    <div class="Slide1 fade">
        
        <video class="image1" controls="controls">
            <source src="NicTalksLame2.mp4" type="video/mp4"/>
        </video>

        <a href="PressRelease.aspx" class="title">Lame announces their Beta launch with a <br />
            series of “firsts” for social media.</a>
        <p class="summary">- First GenZ only community. <br />
            -	First Socially Responsible Social Media (anxiety-free, hate-free, conspiracy-free code of conduct). <br />
            -	First Video message-threaded conversations (with all your friends or the community). <br />
            -	First to contribute 50% of its profits to “outcome-based projects” for social and planetary change. </p>
    </div>
        <div class="Slide1 fade">
        <video class="image2" controls="controls">
            <source src="The Lame Generation Ad BW 10-11-2021_1.mp4" type="video/mp4"/>
        </video>
        <a class="title2">Lame posts their launch schedule: </a>
        <p class="summary2"><b>Beta Launch:</b>  August 15th, limited to 500 new user downloads. <br />
            <b>Gamma Launch:</b>   September 15th, limited to 5,000 new user downloads. <br />
            <b>Final Apple Launch:</b>  November 15th, limited to 10,000 new user downloads. <br />
            <b>Android Launch:</b>  January, 2022. </p>
    </div>

    <a class="prev round" onclick="plusSlides(-1); pauseVid();">&#8249;</a>
    <a class="next round" onclick="plusSlides(-1); pauseVid();">&#8250;</a>
    

    </div>



    <script>
        var slideIndex = 1;
        showSlides(slideIndex);
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }
        var vid2 = document.getElementById("video2");
        var vid = document.getElementById("video");
        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("Slide1");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slides[slideIndex - 1].style.display = "block";
        }
    </script>
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

</body>
</html>
