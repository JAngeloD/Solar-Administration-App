
package dbutil;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import models.FacilityLogs;
import models.PCC;

/**
 * A class that provides access to the PCC table in the database
 * @author Therin Mody
 */
public class PccDB {
    private List<PCC> list;

    /**
     * A method to retrieve all PCC entries the database
     * @return list A List[PCC] object that holds the results of the query.
     * @throws SQLException - SQLException
     */
    public List<PCC> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("PCC.findAll", PCC.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }
    
    /**
     * A method to get all the PCC entries in between certain dates.
     * @param start The long value of the start date
     * @param end The long value of the end date
     * @param attribute The attribute of the PCC you are looking for
     * @return list The List[PCC] object that holds the results of the query
     */
    public List<PCC> getInBetween(long start, long end, String attribute) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Query q = em.createNamedQuery("FacilityLogs.findBetweenTimeStamp", FacilityLogs.class);
            q.setParameter("start", start);
            q.setParameter("end", end);
            
            list = q.getResultList();
        } finally {
            em.close();
        }
        
        System.out.println("SIZE: " +list.size());
        
        return list;
    }
    
    /**
     * A method that gets the PCC objects in the database between two dates
     * @param start The starting date 
     * @param end The ending date
     * @return list The List[PCC] object that holds the query results
     * @throws SQLException - SQLException
     */
    public List<PCC> getMonthSearchResults(Date start, Date end) throws SQLException {
        
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            list = em.createNamedQuery("PCC.findByTimeStampRange", PCC.class).setParameter("startTimeStampId", start)
                    .setParameter("endTimeStampId", end).getResultList();
        } finally {
            em.close();
        }
        
        return list;
    }

    /**
     * A method to get a specific PCC object
     * @param timestamp The timestamp for the object you are looking for
     * @return record The PCC object from the resulting query.
     */
    public PCC get(String timestamp) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        PCC record = null;
        try {
            record = em.createNamedQuery("PCC.findByTimeStampId", PCC.class).setParameter("timeStampId", Integer.parseInt(timestamp)).getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }
    
    /**
     * A method to get the most recent object pushed into the database
     * @return - PCC object
     */
    public PCC getRecent() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        PCC record = null;
        try {
            record = em.createNamedQuery("PCC.findByMostRecentTimeStampIDRow", PCC.class).getSingleResult();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            em.close();
        }

        return record;
    }

    /**
     * A method to insert a PCC into the database
     * @param event The PCC object that is to be inserted into the database.
     * @throws SQLException - SQLException
     */
    public void insert(PCC event) throws SQLException {

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
     * A method used to update a PCC currently in the database
     * @param user The PCC object that is to be updated
     */
    public void update(PCC user) {

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
     * A method to delete a PCC object from the database.
     * @param event The primary key of the PCC you aim to delete.
     * @throws SQLException - SQLException
     */
    public void delete(String event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(PCC.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
