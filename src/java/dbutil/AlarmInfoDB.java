package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.AlarmInfo;

/**
 *
 * @author 821320
 */
public class AlarmInfoDB {
     private List<AlarmInfo> alarmList;

    public List<AlarmInfo> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            alarmList = em.createNamedQuery("AlarmInfo.findAll", AlarmInfo.class).getResultList();
        } finally {
            em.close();
        }

        return alarmList;
    }

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
