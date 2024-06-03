package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//servlet class used for processing user inouts via the buttons in results pages
public class SecondServlet extends HttpServlet {

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
            out.println("<title>About You!</title>");
            out.println("<link rel=\"website icon\" type=\"png\" href=\"images/information-button.png\">");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"whiteBoxRequestheaders\">");

            //declare variables for user inputs in the results pages
            String website = request.getParameter("website");

            //request dispatcher to send user to another jsp when 
            //button for "Learn more about your machine!" is clicked
            RequestDispatcher view
                    = request.getRequestDispatcher("aboutYou.jsp");
            view.include(request, response);

            //sendRedirect using absolute url when user wants to take a more accurate personality test
            if (website != null) {
                response.sendRedirect("https://www.16personalities.com/");
            }

            //enumeration of requestHeaders to be printed out when include method is called
            Enumeration headerNames = request.getHeaderNames();
            while (headerNames.hasMoreElements()) {
                String name = (String) headerNames.nextElement();
                out.println("<p class=\"subtitle requestHeaders\">" + name + ": " + request.getHeader(name) + "<p>");
            }
            out.println("<button onclick=\"window.location.href='welcomePage1.jsp';\" >Back to Home</button>");
            out.println("</div>");
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
