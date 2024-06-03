package model;

//class to identify results using the scores
public class WebAppQuizModel {
    
    //method to return the result
    public String getResults(int score) {
        if(score > 3){
            return "Introvert";
        }
        else if(score < 3){
            return "Extrovert";
        }
        else {
            return "Ambivert";
        }
    }

}

