package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Feeder_1;

/**
 *
 * @author 821320
 */
public class FeederDB {
    List<Feeder_1> feederList;

    public List<Feeder_1> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            feederList = em.createNamedQuery("User.findAll", Feeder_1.class).getResultList();
        } finally {
            em.close();
        }

        return feederList;
    }

    public Feeder_1 get(String component) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Feeder_1 user = null;
        try {
            user = em.find(Feeder_1.class, component);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Feeder_1 user) throws SQLException {

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

    public void update(Feeder_1 user) {

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
            em.remove(em.find(Feeder_1.class, component));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
