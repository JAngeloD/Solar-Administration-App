package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import models.Feeder;

/**
 *
 * @author 821320
 */
public class FeederDB {
    private List<Feeder> list;

    public List<Feeder> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Feeder.findAll", Feeder.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public Feeder get(String timestamp, String deviceID) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Feeder record = null;
        try {
            Query q = em.createNamedQuery("Feeder.findByTimeStampAndDeviceID", Feeder.class);
            q.setParameter("deviceId", Integer.parseInt(deviceID));
            q.setParameter("timeStampId", Integer.parseInt(timestamp));
            
            record = (Feeder) q.getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }

    public void insert(Feeder event) throws SQLException {

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

    public void update(Feeder user) {

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
            em.remove(em.find(Feeder.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
