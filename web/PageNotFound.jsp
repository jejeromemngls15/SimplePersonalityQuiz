<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheet.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
        <link rel="website icon" type="png" href="images/404.png">
        <%  //sets the status code of this jsp
            response.setStatus(404);
        %>

        <title>404 Not Found Page</title>
    </head>
    <body>
        <div class="errPageContainer">
            <img class="errPng" src="images/404.png">
            <h1 class="errCode">404</h1>
            <h2 class="errCodeType">An error has occured. Page not found.</h1>
            <h2 class="errDesc">This page isn't available. Sorry about that. Try searching for something else</h2>
            <button onclick="window.location.href='welcomePage1.jsp';" >Back to Home</button>       
        </div>
    </body>
</html>

