
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Pcc_1;

/**
 *
 * @author 821320
 */
public class PccDB {
    private List<Pcc_1> list;

    public List<Pcc_1> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Pcc_1.findAll", Pcc_1.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public Pcc_1 get(String event) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Pcc_1 user = null;
        try {
            user = em.find(Pcc_1.class, event);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Pcc_1 event) throws SQLException {

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

    public void update(Pcc_1 user) {

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
            em.remove(em.find(Pcc_1.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
