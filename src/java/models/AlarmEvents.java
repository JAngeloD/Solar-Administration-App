/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 821320
 */
@Entity
@Table(name = "alarm_events")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AlarmEvents.findAll", query = "SELECT a FROM AlarmEvents a")
    , @NamedQuery(name = "AlarmEvents.findByEventId", query = "SELECT a FROM AlarmEvents a WHERE a.eventId = :eventId")
    , @NamedQuery(name = "AlarmEvents.findByTimeStampId", query = "SELECT a FROM AlarmEvents a WHERE a.timeStampId = :timeStampId")
    , @NamedQuery(name = "AlarmEvents.findByTimeStamp", query = "SELECT a FROM AlarmEvents a WHERE a.timeStamp = :timeStamp")})
public class AlarmEvents implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "event_id")
    private Integer eventId;
    @Column(name = "time_stamp_id")
    private Integer timeStampId;
    @Basic(optional = false)
    @Column(name = "time_stamp")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeStamp;
    @JoinColumn(name = "alarm_id", referencedColumnName = "alarm_id")
    @ManyToOne
    private AlarmInfo alarmId;

    public AlarmEvents() {
    }

    public AlarmEvents(Integer eventId) {
        this.eventId = eventId;
    }

    public AlarmEvents(Integer eventId, Date timeStamp) {
        this.eventId = eventId;
        this.timeStamp = timeStamp;
    }

    public Integer getEventId() {
        return eventId;
    }

    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }

    public Integer getTimeStampId() {
        return timeStampId;
    }

    public void setTimeStampId(Integer timeStampId) {
        this.timeStampId = timeStampId;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }

    public AlarmInfo getAlarmId() {
        return alarmId;
    }

    public void setAlarmId(AlarmInfo alarmId) {
        this.alarmId = alarmId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (eventId != null ? eventId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AlarmEvents)) {
            return false;
        }
        AlarmEvents other = (AlarmEvents) object;
        if ((this.eventId == null && other.eventId != null) || (this.eventId != null && !this.eventId.equals(other.eventId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.AlarmEvents[ eventId=" + eventId + " ]";
    }
    
}
