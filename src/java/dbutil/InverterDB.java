package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import models.Inverter;

/**
 *
 * @author 821320
 */
public class InverterDB {
    private List<Inverter> list;

    public List<Inverter> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Inverter.findAll", Inverter.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public Inverter get(String timestamp, String deviceID) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Inverter record = null;
        try {
            Query q = em.createNamedQuery("Inverter.findByTimeStampAndDeviceID", Inverter.class);
            q.setParameter("deviceId", Integer.parseInt(deviceID));
            q.setParameter("timeStampId", Integer.parseInt(timestamp));
            
            record = (Inverter) q.getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }

    public void insert(Inverter event) throws SQLException {

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

    public void update(Inverter user) {

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
            em.remove(em.find(Inverter.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
