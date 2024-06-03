<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheet.css" rel="stylesheet" type="text/css">
        <link rel="website icon" type="png" href="images/NoAnswer.png">

        <title>Null Answer Page</title>
    </head>
    <body>
        <div class="errPageContainer">
            <img class="errAnsPng" src="images/NoAnswer.png">
            <h1 class="errCode">Error!</h1>
            <h2 class="errCodeType">Null Answer Found</h1>
            <h2 class="errDesc">Make sure you answered all questions.</h2>
            <button onclick="window.location.href='welcomePage1.jsp';" >Back to Home</button>       
        </div>
    </body>
</html>