package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.AlarmEvents;

/**
 * A class that is the database access layer for the Alarm Events table.
 * @author Therin Mody
 */
public class AlarmEventsDB {
    private List<AlarmEvents> alarmList;

   /**
    * A method to retrieve all the Alarm Events in the database.
    * @throws SQLException 
    * @return alarmList List<AlarmEvents> This List will hold all AlarmEvents objects
    *                   currently in the database.
    */
    public List<AlarmEvents> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            alarmList = em.createNamedQuery("AlarmEvents.findAll", AlarmEvents.class).getResultList();
        } finally {
            em.close();
        }

        return alarmList;
    }
    
   /**
    * A method to retrieve a specific Alarm Event from the database
    * @param event An integer that coincides with Alarm Event primary key
    * @return user The specific AlarmEvents object that is returned from 
    *               the database query
    */
    public AlarmEvents get(int event) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        AlarmEvents user = null;
        try {
            user = em.find(AlarmEvents.class, event);
        } finally {
            em.close();
        }

        return user;
    }

   /**
    * A method to insert an AlarmEvents object into the database.
    * @throws SQLException
    * @param event An AlarmEvents object that is to be inserted into
    *               the database.
    */
    public void insert(AlarmEvents event) throws SQLException {

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
    * A method to update a AlarmEvents entry in the database
    * @param user The AlarmEvents object that is to be updated
    */
    public void update(AlarmEvents user) {

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
    * A method to delete an AlarmEvents object from the database
    * @throws SQLException
    * @param event The integer that represents the primary key for 
    *               for the AlarmEvents object to be deleted
    */
    public void delete(int event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(AlarmEvents.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
