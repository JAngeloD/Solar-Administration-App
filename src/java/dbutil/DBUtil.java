package dbutil;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author 821320
 */
public class DBUtil {
    
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("SolarPU");
    
    public static EntityManagerFactory getEmFactory() {
        return emf;
    } 
    
}
