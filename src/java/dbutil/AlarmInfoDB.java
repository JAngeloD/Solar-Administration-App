package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.AlarmInfo;

/**
 * A class that is the data access layer for the AlarmInfo table in the database
 * @author Therin Mody
 */
public class AlarmInfoDB {
    private List<AlarmInfo> alarmList;

    /**
    * A method to retrieve all entries in the AlarmInfo table in our database
    * @throws SQLException
    * @return alarmList The List<AlarmInfo> that contains all AlarmInfo table information
    */
    public List<AlarmInfo> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            alarmList = em.createNamedQuery("AlarmInfo.findAll", AlarmInfo.class).getResultList();
        } finally {
            em.close();
        }

        return alarmList;
    }

    /**
    * A method that will retrieve a single AlarmInfo entry.
    * @param event The primary key of the AlarmInfo entry you intend to retrieve
    * @return user The AlarmInfo object that was queried from the database
    */
    public AlarmInfo get(int event) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        AlarmInfo user = null;
        try {
            user = em.find(AlarmInfo.class, event);
        } finally {
            em.close();
        }

        return user;
    }

    /**
    * The method that will insert a AlarmInfo entry into the database
    * @throws SQLException
    * @param event The AlarmInfo object that is to be inserted into the database
    */
    public void insert(AlarmInfo event) throws SQLException {

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
    * A method to update a current entry in the database
    * @param user The AlarmInfo object to be updated in the database
    */
    public void update(AlarmInfo user) {

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
    * A method to delete an entry from the AlarmInfo table in the database
    * @param event The primary key of the AlarmInfo entry that is to be deleted
    *               from the database
    */
    public void delete(int event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(AlarmInfo.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
