package dbutil;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Users;

public class UsersDB {
    private List<Users> list;

    public List<Users> getAll() throws SQLException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Users.findAll", Users.class).getResultList();
        } finally {
            em.close();
        }
        return list;
    }

    public Users get(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Users user = null;
        try {
            user = em.find(Users.class, email);
        } finally {
            em.close();
        }
        return user;
    }

    public void insert(Users user) throws SQLException {
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

    public void update(Users user) {
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
}
