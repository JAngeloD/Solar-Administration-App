package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import models.FacilityLogs;

/**
 * A class that provides database access to the FacilityLogs table
 * in the database.
 * @author Therin Mody
 * @author Jeric De Vera
 */
public class FacilityLogsDB {

    private List<FacilityLogs> list;

    /**
     * A method will get all FacilityLogs entries from the database.
     * @return list The list for the FacilityLogs objects retrieved from the database
     * @throws SQLException - SQLException
     */
    public List<FacilityLogs> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("FacilityLogs.findAll", FacilityLogs.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    /**
     * A method that will get all FacilityLogs based on the logId
     * @param logId The logId that is used to query the database
     * @return list The List[FacilityLogs] object that holds all results from the query.
     */
    public List<FacilityLogs> getAll(String logId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            list = em.createNamedQuery("FacilityLogs.findAll", FacilityLogs.class).getResultList();
        } finally {
            em.close();
        }
        return list;
    }
    
    /**
     * A method that will get all FacilityLogs in between two timestamps
     * @param start The specified start long value
     * @param end  The specified end long value
     * @param logType The type of log to be queried
     * @return list The List[FacilityLogs] object holding the FacilityLogs in between the 
     *              two timestamps
     */
    public List<FacilityLogs> getInBetween(long start, long end, int logType) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Query q = em.createNamedQuery("FacilityLogs.findBetweenTimeStamp", FacilityLogs.class);
            q.setParameter("start", start);
            q.setParameter("end", end);
            q.setParameter("logType", logType);
            
            list = q.getResultList();
        } finally {
            em.close();
        }
        
        System.out.println("SIZE: " +list.size());
        
        return list;
    }

    /**
     * A method to retrieve a specific FacilityLogs object from the database
     * @param logid The primary key of the FacilityLog object to be retrieved
     * @return log The FacilityLog object from querying the database
     */
    public FacilityLogs get(int logid) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        FacilityLogs log = null;
        try {
            log = em.find(FacilityLogs.class, logid);
        } finally {
            em.close();
        }

        return log;
    }

    /**
     * A method to insert a FacilityLog object into the database
     * @param log The FacilityLogs object that is to be inserted into the database
     * @throws SQLException - SQLException
     */
    public void insert(FacilityLogs log) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.persist(log);
            em.merge(log);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }
        
    }

    /**
     * A method to update a FacilityLogs object in the database
     * @param user The FacilityLogs object that is to be updated
     */
    public void update(FacilityLogs user) {

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
     * A method to delete a FacilityLogs object from the database
     * @param event The primary key of the facility logs object we wish to delete.
     * @throws SQLException - SQLException
     */
    public void delete(int event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(FacilityLogs.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
