package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Facility;

/**
 * A class that provides specific access points into the Facility Table in the database.
 * @author Therin Mody
 * @autho Jeric De Vera
 */
public class FacilityDB {
    private List<Facility> list;

    /**
    * A method to retrieve all Facility entries from the database
    * @throws SQLException
    * @return list The List<Facility> object that holds all database entries in the
    *               Facility table.
    */
    public List<Facility> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            list = em.createNamedQuery("Facility.findAll", Facility.class).getResultList();
        } finally {
            em.close();
        }

        return list;
    }

    /**
    * A method that retrieves a specific Facilty entry from the database
    * @param timestamp The timestamp for the Facility you aim to retrieve from the database
    * @return record The Facility object result from the database query.
    */
    public Facility get(String timestamp) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Facility record = null;
        try {
            record = em.createNamedQuery("Facility.findByTimeStampId", Facility.class).setParameter("timeStampId", Integer.parseInt(timestamp)).getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }
    
    public Facility getRecent() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Facility record = null;
        try {
            record = em.createNamedQuery("Facility.findByMostRecentTimeStampIDRow", Facility.class).getSingleResult();
        } finally {
            em.close();
        }

        return record;
    }

    /**
    * A method to insert a Facility object into the database
    * @throws SQLException
    * @param facility The facility object that is to be inserted into the database
    */
    public void insert(Facility facility) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.persist(facility);
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }

    /**
    * A method to update a facility entry in the database
    * @param user The facility object that is to be updated
    */
    public void update(Facility user) {

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
    * A method to delete a Facility entry from the database
    * @throws SQLException
    * @param event The primary key of the facility that is to 
    *               be deleted from the database
    */
    public void delete(String event) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(Facility.class, event));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
