package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import models.Inverter;

/**
 * A class for accessing the Inverter table in the database.
 * @author Therin Mody
 */
public class InverterDB {
    private List<Inverter> list;

    /**
     * A method to retrieve all the Inverter entries in the database
     * @return list The list of Inverter objects from the database
     * @throws SQLException 
     */
    public List<Inverter> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Inverter.findAll", Inverter.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    /**
     * A method to retrieve a specific Inverter from the database
     * @param timestamp The timestamp of the inverter
     * @param deviceID the deviceID of the inverter
     * @return record The Inverter object returned from the query
     */
    public Inverter get(String timestamp, String deviceID) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Inverter record = null;
        try {
            Query q = em.createNamedQuery("Inverter.findByTimeStampAndDeviceID", Inverter.class);
            q.setParameter("deviceId", Integer.parseInt(deviceID));
            q.setParameter("timeStampId", Long.parseLong(timestamp));
            
            record = (Inverter) q.getSingleResult();
        }
        finally {
            em.close();
        }

        return record;
    }
    
    public Inverter getRecent(String deviceID) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Inverter record = null;
        try {
            Query q = em.createNamedQuery("Inverter.findByMostRecentTimeStampIDRow", Inverter.class);
            q.setParameter("deviceId", Integer.parseInt(deviceID));
            
            record = (Inverter) q.getSingleResult();
        }
        finally {
            em.close();
        }

        return record;      
    }

    /**
     * A method to insert an Inverter into the database
     * @param event The Inverter to be inserted into the database
     * @throws SQLException 
     */
    public void insert(Inverter event) throws SQLException {

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
     * A method to update a Inverter into the database
     * @param user The Inverter object that is to be inserted into the database
     */
    public void update(Inverter user) {

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
     * A method to delete an Inverter object from the database
     * @param event The primary key of the inverter to be deleted
     * @throws SQLException 
     */
    public void delete(String event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(Inverter.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
