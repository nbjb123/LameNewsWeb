<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PressRelease.aspx.vb" Inherits="LameNews.PressRelease" %>

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
            left: 680px; 
            top :25px;
            font-family: 'Open Sans';
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
            left: 98px; 
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
            left: 279px; 
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
            left: 820px; 
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
            left: 1000px; 
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
            top: 950px;
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
        .paragraph1  {
            position: absolute; 
            left: 108px;
            top:230px; 
        }
        .paragraph2  {
            position: absolute; 
            left: 475px;
            top:320px;
            text-align: center; 
        }
        .paragraph3  {
            position: absolute; 
            left: 108px;
            top:420px; 
        }
           
        .paragraph5  {
             position: absolute; 
            left: 108px;
            top:490px;  
        }
        .paragraph6  {
            position: absolute; 
            left: 108px;
            top:600px; 
        }
        .paragraph7 {
            position: absolute; 
            left: 108px;
            top:710px; 
        }
        .paragraph8  {
            position: absolute; 
            left: 108px;
            top:745px; 
        }
        .back:hover{
            background-color: #B2B2B2; 
            color: white;
         }
        .back {
           position: absolute; 
           left: 30px; 
           top: 180px;
           border: solid 0.5px #B2B2B2; 
           background-color: #ffffff;
           color: #B2B2B2;
           text-decoration: none;
           display: inline-block;
           padding: 8px 16px;
        }
        .round {
             border-radius: 50%;
        }
        /*Responsive CSS Code For Mobile*/
        @media only screen and (max-width:560px) {
            .button {
                display: none;
            }
            .Lame {
                position: absolute;
                top: -15px;
                text-align: center;
                height: auto;
            }
            .footerLinks {
                display: none;
            }
            .material-icons {
                text-align: right;
                cursor: pointer;
            }
             .paragraph1 {
                position: absolute;
                top: 220px;
                left: 0px;
                padding-left: 5%;
                width: 50%;
            }
            .sm {
                 display: none; 
             }
            .paragraph2 {
                position: absolute;
                top: 400px;
                left: 0px;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .paragraph3 {
                position: absolute;
                top: 500px;
                left: 0px;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .paragraph5 {
                position: absolute;
                top: 700px;
                left: 0px;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .paragraph6 {
                position: absolute;
                top: 950px;
                left: 0px;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .paragraph7 {
                position: absolute;
                top: 1100px;
                left: 0px;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .paragraph8 {
                position: absolute;
                top: 1200px;
                left: 0px;
                padding-left: 5%;
                padding-right: 5%;
                width: 90%;
            }
            .foot {
                position: absolute;
                top: 1700px;
                left: 0px;
            }
            .fa-facebook {
                position: absolute;
                top: 25px;
                left: 220px;
            }
            .fa-instagram {
                position: absolute;
                top: 25px;
                left: 190px
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
    <!-- Adding Wrapper-->
    <div id="wrapper">
     <!--Header Title-->
        <div class="Rectangle"></div>
        <div><i class="material-icons" onclick="myFunction()" style="font-size:36px; color: white;">menu</i></div>
        <div class="Lame" style="color:white";>Lame</div>
        <p class="sm">SM</p>


    <!--Content--> 
    <div>
    <a href="HomePage.aspx"; class="back round">&#8249;</a>
    </div>
    <p class="paragraph1">
        FOR IMMEDIATE RELEASE: OCTOBER 8, 2021 <br />
        Chris Bowles<br />
        Lame, PBC<br />
        817.219.2650<br />
        chris@lame.mobi
    </p>
    <p class="paragraph2">
        <b>
        Anxiety-free, Hate-free, Algorithm-free <br />
        Lame (Socially Responsible Social Media)<br />
        announces its app’s release on Apple’s App Store.
        </b>
    </p>

    <p class="paragraph3">
            <b>Denver, Colorado:</b> Lame announced today the launching of the first GenZ-only social media 
            community. Lame is anxiety-free, hate-free, apolitical social media built to provide purpose in 
            GenZers’ lives. Lame’s app is available Friday, October 8th on Apple’s App Store.</p>

    <p class="paragraph5">Co-founder, Nic Bowles says “our generation has enough on our plate. We’re the first modern 
            generation in school during a global pandemic, a global climate crisis, a divided country, and the 
            need for school-shooting drills. We are the Lame generation. <br />
            The last thing GenZers need from social media is to manufacture more stress and anxiety”. 
            Lame is anxiety-free, hate-free, conspiracy-free platform that encourages humor and fun while 
            still being serious about our future. GenZers inherited social and planetary problems that we 
            don’t have the luxury to pass to the next generation. We’re using social media to provide 
            funding and resources to create change and a future for our generation, and beyond.”</p>

    <p class="paragraph6"><b>Key differentiators of Lame: </b><br />
•	GenZ members only <br />
•	Anxiety-free, Hate-free, with Purpose-added <br />
•	Video Conversations with Friends, Groups or the Community <br />
•	50% f the Lame’s profits support social & planetary change <br />
</p>

    <p class="paragraph7">
        Lame’s app launches on Apple’s App Store on Sunday, August 15th.  For more information, visit <b>www.Lame.News</b>
    </p>

    <p class="paragraph8">
        <b>About Lame:</b> As a Colorado, PBC (public benefit corporation), we’re a socially responsible 
        social media community. Members have three objectives in common: 1) to have fun, 2) to 
        create a better future for their generation and 3) to be part of something bigger than 
        themselves. Lame’s business model is built around these three goals. We allow users to create 
        a first of its kind “video-message threaded conversations” with either their friends, groups, or 
        the community. Members start a “Conversation” by recording a video-message in the form of a 
        question allowing recipients to reply or ask additional questions. Once a “Conversation” grows 
        to 50 participants it becomes a “Party” and at 500 participants, it becomes a “Block Party”. 
        As a result of the common objectives, Lame creates three social benefits: we create 
        measurable social and planetary change, we create a purpose in the lives of GenZers and we 
        help unite our country by working together solving meaningful problems. 
        <br />
        <br />
        <br />
        Built during the pandemic, Lame is funded by two families from Colorado and Texas. 
    </p>




    <!--button-->
    <form action="HomePage.aspx">
        <div>
            <button class="button News" type="submit">News</button>
        </div>
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
    <!--End Wrapper-->
</body>
</html>
