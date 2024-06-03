<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="stylesheet.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong"> 
        <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@1,700&family=Poppins&display=swap" rel="stylesheet">
        <link rel="website icon" type="png" href="images/quiz-icon.png">


        <title> Questions </title>
    </head>
    <body>
        <div class="questionPage">
            <h1 class="header"><% out.print(getServletContext().getInitParameter("quizName")); %></h1>
            <div class="indexUpperDiv">
                <h4 class="subtitle qNameSub">Introvert or Extrovert or Ambivert?</h4>
                <h3 class="header2"> About the quiz:</h3>
            </div>
            <div class="indexLowerDiv">
                <p class="subtitle quizAbout">This test will consist of various questions about certain situations and you must answer based on the given choices.
                    Answer honestly based on your experience for better results
                </p>
            </div>
            <div class ="quizQuestions">
                <form method="post" action="testResults.do">
                    <div class ="questionBox">    
                        <p>You tend to find talking to new people </p>    
                        <div class="wrapper">
                            <input type="radio" id="ques1Intro" name="answer1" value="Introvert">
                            <label for="ques1Intro" class="option ques1Intro">
                                <div class="dot"></div>
                                <span>Awkward</span>
                            </label>
                            <input type="radio" id="ques1Extro" name="answer1" value="Extrovert">
                            <label for="ques1Extro" class="option ques1Extro">
                                <div class="dot"></div>
                                <span>Energizing</span>
                            </label>
                        </div>
                    </div>

                    <div class ="questionBox">   
                        <p>You usually get more joy out of</p>    
                        <div class="wrapper">
                            <input type="radio" id="ques2Intro" name="answer2" value="Introvert">
                            <label for="ques2Intro" class="option ques2Intro">
                                <div class="dot"></div>
                                <span>Reading a great book</span>
                            </label>
                            <input type="radio" id="ques2Extro" name="answer2" value="Extrovert">
                            <label for="ques2Extro" class="option ques2Extro">
                                <div class="dot"></div>
                                <span>Watching a great movie</span>
                            </label>
                        </div>
                    </div>

                    <div class ="questionBox">    
                        <p>When you meet someone for the first time </p>    
                        <div class="wrapper">
                            <input type="radio" id="ques3Intro" name="answer3" value="Introvert">
                            <label for="ques3Intro" class="option ques3Intro">
                                <div class="dot"></div>
                                <span>You usually listen more</span>
                            </label>
                            <input type="radio" id="ques3Extro" name="answer3" value="Extrovert">
                            <label for="ques3Extro" class="option ques3Extro">
                                <div class="dot"></div>
                                <span>You usually talk more</span>
                            </label>
                        </div>
                    </div>

                    <div class ="questionBox">   
                        <p>What is your idea of the perfect date? </p>    
                        <div class="wrapper">
                            <input type="radio" id="ques4Intro" name="answer4" value="Introvert">
                            <label for="ques4Intro" class="option ques4Intro">
                                <div class="dot"></div>
                                <span>Watch movies at home</span>
                            </label>
                            <input type="radio" id="ques4Extro" name="answer4" value="Extrovert">
                            <label for="ques4Extro" class="option ques4Extro">
                                <div class="dot"></div>
                                <span>A live concert</span>
                            </label>
                        </div>
                    </div>  

                    <div class ="questionBox">   
                        <p>When given a choice between working as part of a team or working as a group, I would prefer to </p>    
                        <div class="wrapper">
                            <input type="radio" id="ques5Intro" name="answer5" value="Introvert">
                            <label for="ques5Intro" class="option ques5Intro">
                                <div class="dot"></div>
                                <span>Work by myself</span>
                            </label>
                            <input type="radio" id="ques5Extro" name="answer5" value="Extrovert">
                            <label for="ques5Extro" class="option ques5Extro">
                                <div class="dot"></div>
                                <span>Work as part of a group</span>
                            </label>
                        </div>
                    </div> 

                    <div class ="questionBox">
                        <p> In your free on the weekend,you prefer to</p>    
                        <div class="wrapper">
                            <input type="radio" id="ques6Intro" name="answer6" value="Introvert">
                            <label for="ques6Intro" class="option ques6Intro">
                                <div class="dot"></div>
                                <span>Converse with a friend</span>
                            </label>
                            <input type="radio" id="ques6Extro" name="answer6" value="Extrovert">
                            <label for="ques6Extro" class="option ques6Extro">
                                <div class="dot"></div>
                                <span>Party with other people</span>
                            </label>
                        </div>
                    </div>

                    Enter your name: <input type="text" name="name" /> <br> <br>       
                    <input class="button" type="SUBMIT">
                </form>
            </div>
            <p class="disclaimer"><% out.print(getServletContext().getInitParameter("disclaimerTag"));%></p>
        </div>
    </body>
</html>