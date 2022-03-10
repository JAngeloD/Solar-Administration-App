package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Facility_1;

/**
 *
 * @author 821320
 */
public class FacilityDB {
    private List<Facility_1> list;

    public List<Facility_1> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Facility_1.findAll", Facility_1.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public Facility_1 get(String event) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Facility_1 user = null;
        try {
            user = em.find(Facility_1.class, event);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Facility_1 event) throws SQLException {

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

    public void update(Facility_1 user) {

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
            em.remove(em.find(Facility_1.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
