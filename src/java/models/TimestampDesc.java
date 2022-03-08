/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author 821320
 */
@Entity
@Table(name = "timestamp_desc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TimestampDesc.findAll", query = "SELECT t FROM TimestampDesc t")
    , @NamedQuery(name = "TimestampDesc.findByTimeStamp", query = "SELECT t FROM TimestampDesc t WHERE t.timeStamp = :timeStamp")
    , @NamedQuery(name = "TimestampDesc.findByDateTime", query = "SELECT t FROM TimestampDesc t WHERE t.dateTime = :dateTime")
    , @NamedQuery(name = "TimestampDesc.findByDescription", query = "SELECT t FROM TimestampDesc t WHERE t.description = :description")})
public class TimestampDesc implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "time_stamp")
    private Integer timeStamp;
    @Column(name = "date_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateTime;
    @Column(name = "description")
    private String description;
    @OneToMany(mappedBy = "timeStamp")
    private List<FacilityLogs> facilityLogsList;
    @OneToMany(mappedBy = "timeStamp")
    private List<Alarms> alarmsList;
    @OneToMany(mappedBy = "timeStamp")
    private List<Breakers> breakersList;

    public TimestampDesc() {
    }

    public TimestampDesc(Integer timeStamp) {
        this.timeStamp = timeStamp;
    }

    public Integer getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Integer timeStamp) {
        this.timeStamp = timeStamp;
    }

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @XmlTransient
    public List<FacilityLogs> getFacilityLogsList() {
        return facilityLogsList;
    }

    public void setFacilityLogsList(List<FacilityLogs> facilityLogsList) {
        this.facilityLogsList = facilityLogsList;
    }

    @XmlTransient
    public List<Alarms> getAlarmsList() {
        return alarmsList;
    }

    public void setAlarmsList(List<Alarms> alarmsList) {
        this.alarmsList = alarmsList;
    }

    @XmlTransient
    public List<Breakers> getBreakersList() {
        return breakersList;
    }

    public void setBreakersList(List<Breakers> breakersList) {
        this.breakersList = breakersList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (timeStamp != null ? timeStamp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TimestampDesc)) {
            return false;
        }
        TimestampDesc other = (TimestampDesc) object;
        if ((this.timeStamp == null && other.timeStamp != null) || (this.timeStamp != null && !this.timeStamp.equals(other.timeStamp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.TimestampDesc[ timeStamp=" + timeStamp + " ]";
    }
    
}
