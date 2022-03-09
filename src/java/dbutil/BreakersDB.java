
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Breakers;

/**
 *
 * @author 821320
 */
public class BreakersDB {
        List<Breakers> breakerList;

    public List<Breakers> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            breakerList = em.createNamedQuery("Breakers.findAll", Breakers.class).getResultList();
        } finally {
            em.close();
        }

        return breakerList;
    }

    public Breakers get(String component) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Breakers user = null;
        try {
            user = em.find(Breakers.class, component);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Breakers user) throws SQLException {

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

    public void update(Breakers user) {

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
            em.remove(em.find(Breakers.class, component));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
