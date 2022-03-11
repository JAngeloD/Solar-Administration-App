
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Pcc;

/**
 *
 * @author 821320
 */
public class PccDB {
    private List<Pcc> list;

    public List<Pcc> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Pcc.findAll", Pcc.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public Pcc get(String timestamp) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Pcc record = null;
        try {
            record = em.createNamedQuery("Pcc.findByTimeStampId", Pcc.class).setParameter("timeStampId", Integer.parseInt(timestamp)).getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }

    public void insert(Pcc event) throws SQLException {

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

    public void update(Pcc user) {

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
            em.remove(em.find(Pcc.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
