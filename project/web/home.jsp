
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ABC Cinema</title>
        <link rel="shortcut icon" type="icon" href="images/icon.jpg">
        <link rel="stylesheet"  href="sty.css">
    </head>
    <body>
        <h1>ABC Cinema<img src="images/icon.jpg"></h1>
        <div>
            <nav role="navigation" arial-label="main menu">
              <ul>
                <li><a href="home.jsp">HOME</a></li>
                <li><a href="movies.jsp">MOVIES</a></li>
                <li><a href="ticketbooking.jsp">TICKET BOOKING</a></li>
                <li><a href="aboutus.jsp">ABOUT US</a></li>
               </ul>
            </nav>
        </div>


        <h2>Upcoming Movies - Watch the trailer</h2>
        <div class="upcoming-movies">
            <div class="thup"><iframe width="560" height="315" src="https://www.youtube.com/embed/o5F8MOz_IDw?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            <div class="thup"><iframe width="560" height="315" src="https://www.youtube.com/embed/qEVUtrk8_B4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            <div class="thup"><iframe width="560" height="315" src="https://www.youtube.com/embed/2m1drlOZSDw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
            <div class="thup"><iframe width="560" height="315" src="https://www.youtube.com/embed/IiMinixSXII" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
        </div>



        <h2>Now showing</h2>
        <div class="scroll-bar">
            <div class="th"><a href="avengers.jsp"><img src="images/avengers.jpg"></a></div>
            <div class="th"><a href="ironman.jsp"><img src="images/ironman.jpg"></a></div>
            <div class="th"><a href="guardiansofgalaxy.jsp"><img src="images/guardiansofgalaxy.jpg"></a></div>
            <div class="th"><a href="theinfernalmachine.jsp"><img src="images/theinfernalmachine.jpg"></a></div>
            <div class="th"><a href="bullettrain.jsp"><img src="images/bullettrain.jpeg"></a></div>
            <div class="th"><a href="cars3.jsp"><img src="images/cars3.jpg"></a></div>
        </div>

        <footer>
        <h2>Contact us</h2>
        <div class="thefooter">
        <span class="icon"><a href="https://www.facebook.com/"><img src="images/facebook.png"><p style="float:right;">follow us on facebook</p></a></span>
        <span class="icon"><a href="https://www.instagram.com"><img src="images/instergram.png"><p style="float:right;">follow us on instergram</p></a></span>
        <span class="icon"><a href="https://www.twitter.com"><img src="images/twitter.png"><p style="float:right;">follow us on twitter</p></a></span>
        <span class="icon"><a href="tel:0345478154"><img src="images/phone.png"><p style="float:right;">0345478154</p></a></span>
        </div>
        <span class="copyright"><p>&copy2023 ABC Cinema All Right Reserved.</p></span>
    </body>
</html>

