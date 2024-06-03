package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.WebAppQuizModel;

//servlet class used to process user inputs from the questions and decides where to redirect them to different contents
public class WebAppQuizServlet extends HttpServlet {

    //intantiate varables
    private String introvert;
    private String extrovert;
    private String ambivert;
    private int score;

    //method to retrieve and declare config objects from web.xml
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        introvert = config.getInitParameter("introAnswer");
        extrovert = config.getInitParameter("extroAnswer");
        ambivert = config.getInitParameter("ambiAnswer");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Sets the content type of the response being sent to the client
        response.setContentType("text/html;charset=UTF-8");
        //sets the status code of this servlet
        response.setStatus(HttpServletResponse.SC_OK);
        //To prevent the generated page frombeing cached
        response.setHeader("Cache-Control", "no-store");
        //maintains a connection between a client and your server, reducing the time needed to serve files
        response.setHeader("Connection", "keepalive");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Quiz Controller</title>");
            out.println("</head>");
            out.println("<body>");

            //declare variables for answers in Questions.jsp
            String answer1 = request.getParameter("answer1");
            String answer2 = request.getParameter("answer2");
            String answer3 = request.getParameter("answer3");
            String answer4 = request.getParameter("answer4");
            String answer5 = request.getParameter("answer5");
            String answer6 = request.getParameter("answer6");
            String username = request.getParameter("name");

            //initialize new model object
            WebAppQuizModel model = new WebAppQuizModel();

            //if else statements to check if an answer is null
            //sendRedirect to an error page using relative url if an answer is null
            if (answer1 == null || answer2 == null || answer3 == null || answer4 == null || answer5 == null || answer6 == null) {
                response.sendRedirect("nullError.jsp");
            } //sendRedirect to another error page using relative url if no name was inputted
            else if (username.equals("")) {
                response.sendRedirect("noNameError.jsp");
            } //score in incremented by one if an answer is equivalent to being introvert
            else {
                score = 0;
                if (answer1.equals(introvert)) {
                    score += 1;
                }
                if (answer2.equals(introvert)) {
                    score += 1;
                }
                if (answer3.equals(introvert)) {
                    score += 1;
                }
                if (answer4.equals(introvert)) {
                    score += 1;
                }
                if (answer5.equals(introvert)) {
                    score += 1;
                }
                if (answer6.equals(introvert)) {
                    score += 1;
                }

                //declare variable to get results from model
                String x = model.getResults(score);
                //passing the username inputted in textbox into a new String variable name
                //name will be passed to another servlet and called by a jsp
                request.setAttribute("name", username);

                //if statements when the results from the model (variable x) is equal to the config objects
                //then request dispatcher is called to pass the user to the results page
                //redirects user to introvert results
                if (x.equals(introvert)) {
                    RequestDispatcher view
                            = request.getRequestDispatcher("IntroResult.jsp");
                    view.forward(request, response);
                }
                //redirects user to extrovert results
                if (x.equals(extrovert)) {
                    RequestDispatcher view
                            = request.getRequestDispatcher("ExtroResult.jsp");
                    view.forward(request, response);
                }
                //redirects user to ambivert results
                if (x.equals(ambivert)) {
                    RequestDispatcher view
                            = request.getRequestDispatcher("AmbiResult.jsp");
                    view.forward(request, response);
                }
            }

            out.println("</body>");
            out.println("</html>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
