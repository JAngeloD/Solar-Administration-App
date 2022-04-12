
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.UserType;

/**
 * A class to access the UserType table in the database
 * @author Therin
 */
public class UserTypeDB {
    private List<UserType> list;

    /**
     * A method to get all the UserType entries in the database.
     * @return list The List[UserType] object that holds the results of the query.
     * @throws SQLException 
     */
    public List<UserType> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("UserType.findAll", UserType.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    /**
     * A method to get a specific type of UserType
     * @param id The primary key of the UserType you are looking for
     * @return user The UserType from the resulting query
     */
    public UserType get(int id) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        UserType user = null;
        try {
            user = em.find(UserType.class, id);
        } finally {
            em.close();
        }

        return user;
    }

    /**
     * A method to insert a UserType into the database
     * @param event The UserType you wish to insert into the database
     * @throws SQLException - SQLException
     */
    public void insert(UserType event) throws SQLException {

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

    /**
     * A method to update the userType object currently in the database
     * @param user The UserType object you wish to update in the database.
     */
    public void update(UserType user) {

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

    /**
     * A method to delete a UserType from the database
     * @param event The primary key of the UserType you wish to delete.
     * @throws SQLException - SQLException
     */
    public void delete(int event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(UserType.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
