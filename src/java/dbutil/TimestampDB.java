
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.TimestampDesc;

/**
 *
 * @author 821320
 */
public class TimestampDB {
    List<TimestampDesc> timeList;

    public List<TimestampDesc> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            timeList = em.createNamedQuery("TimestampDesc.findAll", TimestampDesc.class).getResultList();
        } finally {
            em.close();
        }

        return timeList;
    }

    public TimestampDesc get(String component) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        TimestampDesc user = null;
        try {
            user = em.find(TimestampDesc.class, component);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(TimestampDesc user) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            em.persist(user);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }

    public void update(TimestampDesc user) {

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

    public void delete(String component) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(TimestampDesc.class, component));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
