package dbutil;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import models.Users;

/**
 * A class to access the Users in the database
 * @author Therin
 * @author Haz W
 */
public class UsersDB {
    private List<Users> list;

    /**
     * A method to retrieve all User entries in the database
     * @return list The List<Users> object that holds the results of the query
     * @throws SQLException 
     */
    public List<Users> getAll() throws SQLException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Users.findAll", Users.class).getResultList();
        } finally {
            em.close();
        }
        return list;
    }

    /**
     * A method to retrieve the specific User from the database that matches email
     * @param email The primary key of the User you intend to receive
     * @return user The user returned from the query
     */
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
    
    /**
     * A method to retrieve the specific User from the database that matches the uuid
     * @param uuid unique id used to retrieve a specific user
     * @return the user returned by the query
     */
    public Users getByUUID(String uuid){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        System.out.println("Inside Users.getByUUID. UUID:" + uuid);
        try{
            TypedQuery<Users> query = em.createNamedQuery("Users.findByResetPasswordUuid", Users.class);
            query.setParameter("resetPasswordUuid", uuid);
            Users user = query.getSingleResult();
            System.out.println("We got " + user.getFirstName());
            return user;
        }
        catch(Exception e){
            e.printStackTrace();
            return null;
        }
        finally{
          em.close();
        }  
    }

    /**
     * A method to insert a new user into the database
     * @param user The User to be inserted
     * @throws SQLException 
     */
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

    /**
     * A method to update a specific User in the database
     * @param user The Users that is to be updated
     */
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
