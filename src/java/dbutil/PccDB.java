
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.PCC;

/**
 *
 * @author 821320
 */
public class PccDB {
    private List<PCC> list;

    public List<PCC> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("PCC.findAll", PCC.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public PCC get(String timestamp) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        PCC record = null;
        try {
            record = em.createNamedQuery("PCC.findByTimeStampId", PCC.class).setParameter("timeStampId", Integer.parseInt(timestamp)).getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }

    public void insert(PCC event) throws SQLException {

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

    public void update(PCC user) {

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
            em.remove(em.find(PCC.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
