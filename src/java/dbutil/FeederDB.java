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
    private List<Feeder_1> list;

    public List<Feeder_1> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Feeder_1.findAll", Feeder_1.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public Feeder_1 get(String event) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Feeder_1 user = null;
        try {
            user = em.find(Feeder_1.class, event);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Feeder_1 event) throws SQLException {

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

    public void delete(String event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(Feeder_1.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
