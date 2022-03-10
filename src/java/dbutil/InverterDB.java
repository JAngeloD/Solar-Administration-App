package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Inverter_1;

/**
 *
 * @author 821320
 */
public class InverterDB {
    private List<Inverter_1> list;

    public List<Inverter_1> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Inverter_1.findAll", Inverter_1.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public Inverter_1 get(String event) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Inverter_1 user = null;
        try {
            user = em.find(Inverter_1.class, event);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Inverter_1 event) throws SQLException {

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

    public void update(Inverter_1 user) {

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
            em.remove(em.find(Inverter_1.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
