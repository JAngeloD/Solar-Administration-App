package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import models.Feeder;

/**
 * A class that provides access to the Feeder table in the database.
 * @author Therin Mody
 */
public class FeederDB {
    private List<Feeder> list;

    /**
     * A method to retrieve all Feeder entries from the database.
     * @return list The List[Feeder] object that holds all the entries from
     *              the Feeder table in the database.
     * @throws SQLException - SQLException
     */
    public List<Feeder> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Feeder.findAll", Feeder.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    /**
     * A method that will retrieve a Feeder based on a specific timestamp and deviceID
     * @param timestamp The timestamp to find the feeder for.
     * @param deviceID The deviceID to find the feeder for.
     * @return record The specific feeder you queried
     */
    public Feeder get(String timestamp, String deviceID) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Feeder record = null;
        try {
            Query q = em.createNamedQuery("Feeder.findByTimeStampAndDeviceID", Feeder.class);
            q.setParameter("deviceId", Integer.parseInt(deviceID));
            q.setParameter("timeStampId", Integer.parseInt(timestamp));
            
            record = (Feeder) q.getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }
    
    public Feeder getRecent(String deviceID) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Feeder record = null;
        try {
            Query q = em.createNamedQuery("Feeder.findByMostRecentTimeStampIDRow", Feeder.class);
            q.setParameter("deviceId", Integer.parseInt(deviceID));
            
            record = (Feeder) q.getSingleResult();
        }finally {
            em.close();
        }

        return record;
    }

    /**
     * A method to insert a Feeder into the database
     * @param event The Feeder object that is to be inserted into the database.
     * @throws SQLException - SQLException
     */
    public void insert(Feeder event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.persist(event);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }

    /**
     * A method to update a Feeder already existing in the database.
     * @param user The Feeder object that is to be updated
     */
    public void update(Feeder user) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.merge(user);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }

    /**
     * A method to delete a Feeder object from the database
     * @param event The primary key of the Feeder object
     * @throws SQLException - SQLException
     */
    public void delete(String event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(Feeder.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
