package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

//class for ContextListener
public class QuizListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("\n =================================================================== \n");
        System.out.println("contextInitialized method has been called in " +
                            this.getClass().getName());        
        System.out.println("The quiz application is now commencing");
        System.out.println("\n =================================================================== \n");

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("\n =================================================================== \n");
        System.out.println("contextDestroyed method has been called in " +
                            this.getClass().getName());  
        System.out.println("The quiz application is now closing.");
        System.out.println("\n =================================================================== \n");

    }
    
}
