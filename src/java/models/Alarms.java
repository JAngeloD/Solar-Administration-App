/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 821320
 */
@Entity
@Table(name = "alarms")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Alarms.findAll", query = "SELECT a FROM Alarms a")
    , @NamedQuery(name = "Alarms.findByAlarmCode", query = "SELECT a FROM Alarms a WHERE a.alarmCode = :alarmCode")
    , @NamedQuery(name = "Alarms.findByAlarmName", query = "SELECT a FROM Alarms a WHERE a.alarmName = :alarmName")
    , @NamedQuery(name = "Alarms.findByAlarmStatus", query = "SELECT a FROM Alarms a WHERE a.alarmStatus = :alarmStatus")})
public class Alarms implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "alarm_code")
    private Integer alarmCode;
    @Column(name = "alarm_name")
    private String alarmName;
    @Column(name = "alarm_status")
    private String alarmStatus;
    @JoinColumn(name = "time_stamp", referencedColumnName = "time_stamp")
    @ManyToOne
    private TimestampDesc timeStamp;

    public Alarms() {
    }

    public Alarms(Integer alarmCode) {
        this.alarmCode = alarmCode;
    }

    public Integer getAlarmCode() {
        return alarmCode;
    }

    public void setAlarmCode(Integer alarmCode) {
        this.alarmCode = alarmCode;
    }

    public String getAlarmName() {
        return alarmName;
    }

    public void setAlarmName(String alarmName) {
        this.alarmName = alarmName;
    }

    public String getAlarmStatus() {
        return alarmStatus;
    }

    public void setAlarmStatus(String alarmStatus) {
        this.alarmStatus = alarmStatus;
    }

    public TimestampDesc getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(TimestampDesc timeStamp) {
        this.timeStamp = timeStamp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (alarmCode != null ? alarmCode.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Alarms)) {
            return false;
        }
        Alarms other = (Alarms) object;
        if ((this.alarmCode == null && other.alarmCode != null) || (this.alarmCode != null && !this.alarmCode.equals(other.alarmCode))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Alarms[ alarmCode=" + alarmCode + " ]";
    }
    
}
