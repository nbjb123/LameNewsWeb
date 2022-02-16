<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AboutUs.aspx.vb" Inherits="LameNews.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
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
        .contentTitle {
            position: absolute; 
            left: 172px; 
            top: 120px;
            font-size: 38px; 
            font-family: 'Open Sans';
            color: #434343; 
        }
        .contentParagraph {
            position: absolute; 
            left: 168px; 
            top: 225px;
            width:550px; 
            height:500px; 
            font-size: 16px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
            line-height: 1.5;
        }
        .contentTitle2 {
            position: absolute; 
            left: 168px; 
            top: 575px;
            font-size: 13px; 
            font-family: 'Open Sans';
            color: #434343;
        }
        .contentParagraph2 {
            position: absolute; 
            text-align: left; 
            left: 120px; 
            top: 605px;
            width: 20%;
            height: auto; 
            font-size: 12px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
        }
        .contentTitle3{
            position: absolute; 
            left: 570px; 
            top: 575px;
            font-size: 13px; 
            font-family: 'Open Sans';
            color: #434343;
        }
        .contentParagraph3{
            position: absolute; 
            text-align: left; 
            left: 505px; 
            top: 605px;
             width: 20%;
            height: auto; 
            font-size: 12px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
        }
        .contentTitle4{
            position: absolute; 
            left: 940px; 
            top: 575px;
            font-size: 13px; 
            font-family: 'Open Sans';
            color: #434343;
        }
        .contentParagraph4{
            position: absolute;
            text-align: left; 
            left: 880px; 
            top: 605px;
             width: 20%;
            height: auto; 
            font-size: 12px; 
            font-family: 'Open Sans';
            color: #B2B2B2; 
        }
        .imagesnow {
            position: absolute; 
            top: 210px;
            left: 785px; 
            width: 30%; 
            height: 40%; 
            background-color: black; 
        }
        .line {
            position: absolute; 
            top: 550px; 
            left: 168px; 
        }
         /*Responsive Mobile CSS Code*/
        @media only screen and (max-width: 560px) {
            .button {
                display: none;
            }
            .sm {
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
                top: 1550px;
                left: 0px;
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
                top: 300px; 
                left: 0px;
                text-align: left; 
                padding-left: 5%; 
                width: 95%;  
            }
            .imagesnow{
                position: absolute;
                top: 715px;
                left: 0px;
                width: 80%;
                height: 250px;
                margin-left: 10%;
                margin-right: 10%
            }
            .line { 
                display: none; 
            }
            .contentTitle2 {
                position: absolute;
                top: 1000px;
                font-size: 10px;
                left: 0px;
                font-size: 18px;
                text-align: center;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .contentParagraph2 {
                position: absolute;
                top: 1040px;
                left: 0px;
                text-align: left;
                font-family: 'Open Sans';
                font-size: 15px; 
                width: 95%;
                padding-left: 5%;
            }
            .contentTitle3 {
                position: absolute;
                top: 1175px;
                font-size: 10px;
                left: 0px;
                font-size: 18px;
                text-align: center;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .contentParagraph3 {
                position: absolute;
                top: 1215px;
                left: 0px;
                text-align: left;
                font-family: 'Open Sans';
                font-size: 15px; 
                width: 95%;
                padding-left: 5%;
            }
            .contentTitle4 {
                position: absolute;
                top: 1350px;
                font-size: 10px;
                left: 0px;
                font-size: 18px;
                text-align: center;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .contentParagraph4 {
                position: absolute;
                top: 1390px;
                left: 0px;
                text-align: left;
                font-size: 15px; 
                font-family: 'Open Sans';
                width: 95%;
                padding-left: 5%;
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
                display:none; 
            }
        }
    </style>
</head>
<body>
    <div id="wrapper">
     <!--Header Title-->
    <form id="form1" runat="server">
        <div class="Rectangle" style="width:100%; height:125px; background-color: #1EAAF1"></div>
        <div><i class="material-icons" onclick="myFunction()" style="font-size:36px; color: white;">menu</i></div>
        <div class="Lame" style="color:white";>Lame</div>
        <p class="sm">SM</p>
    </form>

    <!-- Content -->
        <p class="contentTitle">What is Lame?</p>
        <p class="contentParagraph"> We’re a socially responsible social media community.  Our GenZ
            members have two primary objectives in common: they want to have fun, and they want to 
            create a better future for their generation.  Lame’s entire business model is built around 
            these two goals.  Lame’s Conversations allows GenZers to create a first of its kind “video-based
            message thread conversations” with either their friend group or the entire GenZ community.  Anyone 
            can start a “Conversation” by recording a video message in the form of a question allowing others 
            to reply or ask related questions.  As a single “Conversation” grows to 50 participants, the conversation
            reaches “Party” status.  And when it hits 500 participants, it reaches “Block Party” status. </p>

        <video class="imagesnow" controls="controls">
            <source src="Lame October 11 final.mp4" type="video/mp4"/>
        </video>


         <div class="line" style="width:944px; height:1px; background-color: #F2F2F2"></div>
         <p class="contentTitle2">HOW LAME WORKS</p>
         <p class="contentParagraph2">Lame is a Gen Z anziety-free,
             hate-free social media community built to 
             provide purpose in users' lives. The core 
             application supports quick video and voice 
             messages between close friends, interest 
             groups, and the entire GenZ community via 
             "Conversations". </p>
         <p class="contentTitle3">MOONSHOTS</p>
         <p class="contentParagraph3">Beyond messaging, users can 
             contribute to the community by viewing Lame Ads 
             and volunteering in one or more community's five 
             'moonshot' programs aimed at solving big issues 
             inherited from previous genereations: 
             Climate | Diversity | Economy | Healthcare | Public Service</p>
          <p class="contentTitle4">OUR FOUNDERS</p>
         <p class="contentParagraph4">Lame, PBC is a public
             corporation based in Denver, Colorado. The 
             company was created during the COVID 
             epidemic and funded by two families of 
             GenZers from Colorado and Texas. </p>

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

</div>
</body>
</html>

