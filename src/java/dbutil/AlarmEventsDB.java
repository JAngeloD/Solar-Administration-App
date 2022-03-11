
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.AlarmEvents;

/**
 *
 * @author 821320
 */
public class AlarmEventsDB {
    private List<AlarmEvents> alarmList;

    public List<AlarmEvents> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            alarmList = em.createNamedQuery("AlarmEvents.findAll", AlarmEvents.class).getResultList();
        } finally {
            em.close();
        }

        return alarmList;
    }

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
