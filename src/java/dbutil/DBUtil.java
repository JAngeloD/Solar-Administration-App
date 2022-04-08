package dbutil;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * A class that will provide connection to the database
 * @author Therin Mody
 */
public class DBUtil {
    
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("SolarPU");
    
   /**
    * A method to return the database Manager
    * @return emf The EntityManagerFactory that will provide access to the database
    */
    public static EntityManagerFactory getEmFactory() {
        return emf;
    } 
    
}
