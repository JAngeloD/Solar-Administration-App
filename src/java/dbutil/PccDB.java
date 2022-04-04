
package dbutil;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import models.FacilityLogs;
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
    
    public List<PCC> getInBetween(long start, long end, String attribute) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Query q = em.createNamedQuery("FacilityLogs.findBetweenTimeStamp", FacilityLogs.class);
            q.setParameter("start", start);
            q.setParameter("end", end);
            
            list = q.getResultList();
        } finally {
            em.close();
        }
        
        System.out.println("SIZE: " +list.size());
        
        return list;
    }
    
    public List<PCC> getMonthSearchResults(Date start, Date end) throws SQLException {
        
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        
        try {
            list = em.createNamedQuery("PCC.findByTimeStampRange", PCC.class).setParameter("startTimeStampId", start)
                    .setParameter("endTimeStampId", end).getResultList();
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
