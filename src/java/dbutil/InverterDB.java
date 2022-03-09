/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbutil;

import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import models.Inverter_1;

/**
 *
 * @author 821320
 */
public class InverterDB {
        
    List<Inverter_1> inverterList;

    public List<Inverter_1> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            inverterList = em.createNamedQuery("Inverter_1.findAll", Inverter_1.class).getResultList();
        } finally {
            em.close();
        }

        return inverterList;
    }

    public Inverter_1 get(String email) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Inverter_1 user = null;
        try {
            user = em.find(Inverter_1.class, email);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Inverter_1 user) throws SQLException {

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

    public void update(Inverter_1 user) {

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
            em.remove(em.find(Inverter_1.class, email));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
