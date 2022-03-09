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
import models.Alarms;

/**
 *
 * @author 821320
 */
public class AlarmsDB {
    List<Alarms> facilityList;

    public List<Alarms> getAll() throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            facilityList = em.createNamedQuery("Alarms.findAll", Alarms.class).getResultList();
        } finally {
            em.close();
        }

        return facilityList;
    }

    public Alarms get(String alarmCode) {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Alarms user = null;
        try {
            user = em.find(Alarms.class, alarmCode);
        } finally {
            em.close();
        }

        return user;
    }

    public void insert(Alarms user) throws SQLException {

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

    public void update(Alarms user) {

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

    public void delete(String alarmCode) throws SQLException {

        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        //delete user
        try {
            trans.begin();
            em.remove(em.find(Alarms.class, alarmCode));
            trans.commit();
        } catch (Exception ex) {
            trans.rollback();
        } finally {
            em.close();
        }

    }
}
