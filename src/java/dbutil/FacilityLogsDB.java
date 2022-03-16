package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.FacilityLogs;

/**
 *
 * @author 821320
 */
public class FacilityLogsDB {

    private List<FacilityLogs> list;

    public List<FacilityLogs> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("FacilityLogs.findAll", FacilityLogs.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    public List<FacilityLogs> getAll(String logId) throws Exception {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            list = em.createNamedQuery("FacilityLogs.findAll", FacilityLogs.class).getResultList();
        } finally {
            em.close();
        }
        return list;
    }

    public FacilityLogs get(int logid) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        FacilityLogs log = null;
        try {
            log = em.find(FacilityLogs.class, logid);
        } finally {
            em.close();
        }

        return log;
    }

    public void insert(FacilityLogs log) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();
            em.persist(log);
            em.merge(log);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }

    public void update(FacilityLogs user) {

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

    public void delete(int event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(FacilityLogs.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
