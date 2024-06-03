<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8", name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="stylesheet.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,700&family=Poppins&display=swap" rel="stylesheet">
    <link rel="website icon" type="png" href="images/hello.png">

    <title>Welcome Page</title>
</head>
<body>
    <div class="indx2PicBG"> 
        <%--<img src="christmaslights.png">--%>
        <h1 class="header"><% out.print(getServletContext().getInitParameter("quizName")); %></h1>
        <div class="indexUpperDiv">
            <h4 class="Indx2White subtitle qNameSub ">Introvert or Extrovert or Ambivert?</h4>
            <h3 class="header2"> About the quiz:</h3>
        </div>
        <div class="indexLowerDiv Indx2">
            <p class="subtitle quizAbout Indx2">
                This test will consist of various questions about certain situations and you must answer based on the given choices.
                Answer honestly based on your experience for better results.
            </p>

            <p class="disclaimerHome disclaimer Indx2"> <% out.print(getServletContext().getInitParameter("disclaimerTag"));%></p>

            <a class="indxbtn startButton" href="/WebAppPersonalityTest/Questions.jsp">Start</a>
            <a class="indxbtn startButton" href="/WebAppPersonalityTest/aboutUs.jsp">About Us</a>
            <button onclick="window.location.href='welcomePage1.jsp';" class="modeBtn">Normal Mode</button>
        </div>
    </div>   
</body> 
</html>