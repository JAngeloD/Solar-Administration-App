/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author hazco
 */
@Entity
@Table(name = "alarm_info")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AlarmInfo.findAll", query = "SELECT a FROM AlarmInfo a")
    , @NamedQuery(name = "AlarmInfo.findByAlarmId", query = "SELECT a FROM AlarmInfo a WHERE a.alarmId = :alarmId")
    , @NamedQuery(name = "AlarmInfo.findByAlarmDesc", query = "SELECT a FROM AlarmInfo a WHERE a.alarmDesc = :alarmDesc")
    , @NamedQuery(name = "AlarmInfo.findByAlarmStatus", query = "SELECT a FROM AlarmInfo a WHERE a.alarmStatus = :alarmStatus")
    , @NamedQuery(name = "AlarmInfo.findByDevice", query = "SELECT a FROM AlarmInfo a WHERE a.device = :device")})
public class AlarmInfo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "alarm_id")
    private Integer alarmId;
    @Column(name = "alarm_desc")
    private String alarmDesc;
    @Column(name = "alarm_status")
    private String alarmStatus;
    @Column(name = "device")
    private String device;
    @OneToMany(mappedBy = "alarmId", fetch = FetchType.EAGER)
    private List<AlarmEvents> alarmEventsList;

    public AlarmInfo() {
    }

    public AlarmInfo(Integer alarmId) {
        this.alarmId = alarmId;
    }

    public Integer getAlarmId() {
        return alarmId;
    }

    public void setAlarmId(Integer alarmId) {
        this.alarmId = alarmId;
    }

    public String getAlarmDesc() {
        return alarmDesc;
    }

    public void setAlarmDesc(String alarmDesc) {
        this.alarmDesc = alarmDesc;
    }

    public String getAlarmStatus() {
        return alarmStatus;
    }

    public void setAlarmStatus(String alarmStatus) {
        this.alarmStatus = alarmStatus;
    }

    public String getDevice() {
        return device;
    }

    public void setDevice(String device) {
        this.device = device;
    }

    @XmlTransient
    public List<AlarmEvents> getAlarmEventsList() {
        return alarmEventsList;
    }

    public void setAlarmEventsList(List<AlarmEvents> alarmEventsList) {
        this.alarmEventsList = alarmEventsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (alarmId != null ? alarmId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AlarmInfo)) {
            return false;
        }
        AlarmInfo other = (AlarmInfo) object;
        if ((this.alarmId == null && other.alarmId != null) || (this.alarmId != null && !this.alarmId.equals(other.alarmId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.AlarmInfo[ alarmId=" + alarmId + " ]";
    }
    
}
