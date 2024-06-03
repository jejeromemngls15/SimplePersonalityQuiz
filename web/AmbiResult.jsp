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
        <link rel="website icon" type="png" href="images/intro x extro.png">

        
        <title>Ambivert Results Page</title>
    </head>
    <body>
        <div class="results">

            <%
                String name = (String)request.getAttribute("name");            
            %>
            
            <button onclick="window.location.href='welcomePage1.jsp';" >Back to Home</button>
            <h1 class="header">You are Ambivert, <%out.println(name);%>!</h1>
            <div id="center">
                <img src="images/intro x extro.png">
             </div>
            <p class="resultDescp">Ambiverts are able to exhibit both introverted and extroverted traits, 
            and may switch depending on the context and individual factors.
            </p>
        
            <p class="resultDescp"> For example, an ambivert  may be somewhat talkative, quite assertive, 
            but not exceptionally sociable (Petric, 2019).
            </p>
        
            <p class="resultDescp"> This mix of traits can make it difficult to identify ambiverts, 
            as their behavior may vary depending on the situation.   
            </p>    
            <p class="resultDescp"> While ambiverts share some characteristics with both introverts and
            extroverts, they are unique in that they are able to draw from both 
            sides of the spectrum. This allows them to be more flexible and adaptable than either type alone.

            Ambiverts are also able to process thoughts and emotions both out 
            loud and internally, meaning that they may benefit from talking out 
            problems with others as well as from processing  through a solitary activity, such as writing.
            </p>
      
            <h3 class="resultHeader2">As an ambivert, you may have some of these traits: </h3>
            <ul> 
                <li class="arrow"> Being able to adapt to different situations</li>
                <li class="arrow">Being good at communication -  both listening and speaking</li>
                <li class="arrow">Being comfortable with both large groups and small intimate gatherings</li>
                <li class="arrow">Being able to work well both independently and in teams</li>
                <li class="arrow">Having a strong sense of self-awareness</li>
                <li class="arrow">Providing balance in social situations</li>
                <li class="arrow">An ability to regulate behavior and responses</li>
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