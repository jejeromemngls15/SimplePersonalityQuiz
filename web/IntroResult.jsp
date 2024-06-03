<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="stylesheet.css" rel="stylesheet" type="text/css">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,700&family=Poppins&display=swap" rel="stylesheet">
        <link rel="website icon" type="png" href="images/intro.png">

        
        <title>Introvert Results Page</title>
    </head>
    <body>
        <div class="results">
            <%
                String name = (String)request.getAttribute("name");            
            %>
            <button onclick="window.location.href='welcomePage1.jsp';" >Back to Home</button>
            <h1 class="header">You are Introvert, <%out.println(name);%>!</h1>
            <div id="center">
            <img src="images/intro.png">
            </div>
        <p class="resultDescp">An introvert can be defined as being someone who gets their energy from being in their own company, 
           having time to ‘recharge’ on their own. Someone who is introverted may appear to be withdrawn and shy, 
           although this may not always be the case (Carrigan, 1960).
        </p> 
        
        <p class="resultDescp">Introverts may also prefer taking part in less stimulating activities and get pleasure from reading, writing, or meditating.
            Introverts may typically prefer to concentrate on a single activity, analyze situations carefully
            and take time to think more before they speak.
        </p>
        
            <ul>           
                <h3 class="resultHeader2">As an introvert, you may have some of these traits:</h3>
                <li class="arrow">You have a small group of close friends.</li>
                <li class="arrow">Thoughtful</li>
                <li class="arrow">Energized by being alone</li>
                <li class="arrow">Thoughtful</li>
                <li class="arrow">Enjoy solitude</li>
                <li class="arrow">Tends to keep emotions private</li>
                <li class="arrow">Quiet and reserved in large groups or around unfamiliar people</li>
                <li class="arrow">Feel drained by people, and need privacy</li>
                <li class="arrow">Process their thoughts in their head rather than talk them out</li>
                <li class="arrow">More sociable and gregarious around people they know well</li>
                <li class="arrow">Learns well through observation</li>        
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