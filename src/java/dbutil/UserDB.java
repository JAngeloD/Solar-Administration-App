package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.UserDetails;

/**
 *
 * @author 821320
 */
public class UserDB {
    
    List<UserDetails> userList;

    public List<UserDetails> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            userList = em.createNamedQuery("UserDetails.findAll", UserDetails.class).getResultList();
        } finally {
            em.close();
        }

        return userList;
    }

    public UserDetails get(String email) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        UserDetails user = null;
        try {
            user = em.find(UserDetails.class, email);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(UserDetails user) throws SQLException {

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

    public void update(UserDetails user) {

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
            em.remove(em.find(UserDetails.class, email));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
