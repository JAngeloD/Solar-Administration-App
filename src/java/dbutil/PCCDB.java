package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Pcc_1;

/**
 * @author 821320
 */
public class PCCDB {
        
    List<Pcc_1> pccList;

    public List<Pcc_1> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            pccList = em.createNamedQuery("Pcc_1.findAll", Pcc_1.class).getResultList();
        } finally {
            em.close();
        }

        return pccList;
    }

    public Pcc_1 get(String email) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Pcc_1 user = null;
        try {
            user = em.find(Pcc_1.class, email);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Pcc_1 user) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            em.persist(user);
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

    public void delete(String email) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(Pcc_1.class, email));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
