<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="stylesheet.css" rel="stylesheet" type="text/css">
        <link rel="website icon" type="png" href="images/extro.png">

        <title>Extrovert Results Page</title>
        
        <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,700&family=Poppins&display=swap" rel="stylesheet">
    </head>
    <body>
      
        <div class="results">

            <%
                String name = (String)request.getAttribute("name");            
            %>
        
            <button onclick="window.location.href='welcomePage1.jsp';" >Back to Home</button>
            <h1 class="header">You are Extrovert, <%out.println(name);%>!</h1>

            <div id="center">
                <img src="images/extro.png">
            </div>
        <p class="resultDescp">An extrovert is a person with qualities of a personality type known as extroversion,
        which means that they get their energy from being around other people. Someone who is
        extroverted may appear as very talkative and may be popular among peers (Carrigan, 1960).
        </p> 
         
        <p class="resultDescp">Extroverts may wish to seek out as much social interaction as possible because this is how 
        they feel more energized. According to estimates, extroverts outnumber introverts by about three to one (Cain, 2012).
        </p>
         
        <p class="resultDescp">Remember that extroversion isn't an all-or-nothing trait; it's actually a continuum and some people 
        might be very extroverted while others are less so.
        </p>
        
        <h3 class="resultHeader2">As an extrovert, you may have some of these traits: </h3>
            <ul> 
                <li class="arrow">Enjoying social settings</li>
                <li class="arrow">Seek attention</li>
                <li class="arrow">Energized by being with others</li>
                <li class="arrow">Are friends with many people</li>
                <li class="arrow">Sociable</li>
                <li class="arrow">Outgoing</li>
                <li class="arrow">Enjoy group work</li>
                <li class="arrow">Prefer talking over writing</li>
            </ul>
        </div>
                
        <form method="post" action="extraResults.do">
        <div class="resultButtons1">
            <p class="resultHeader2"> Learn more about your machine! </p>
            <button class="button" name="aboutYouBtn" value="aboutYouBtn">Click here</button>
        </div>
            
        <div class="resultButtons2">
            <p class="resultHeader2">To access a more accurate personality test</p>
            <button class="button" name="website" value="website">Click here</button>
        </form>
        </div>
        
        
    </body>
</html>