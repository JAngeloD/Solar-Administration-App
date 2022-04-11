package dbutil;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * A class that will provide connection to the database
 * @author Therin Mody
 */
public class DBUtil {
    
   /**
    * A method to return the database Manager
    * @return emf The EntityManagerFactory that will provide access to the database
    */
    public static EntityManagerFactory getEmFactory() {
        try {
            EntityManagerFactory emf = Persistence.createEntityManagerFactory("SolarPU");
            return emf;
        }
        catch(Exception e) {
            System.out.println("POg");
        }
        return null;
    } 
    
}
