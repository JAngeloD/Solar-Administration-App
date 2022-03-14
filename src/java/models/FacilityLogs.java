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
@Table(name = "facility_logs")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FacilityLogs.findAll", query = "SELECT f FROM FacilityLogs f")
    , @NamedQuery(name = "FacilityLogs.findByLogId", query = "SELECT f FROM FacilityLogs f WHERE f.logId = :logId")
    , @NamedQuery(name = "FacilityLogs.findByLogText", query = "SELECT f FROM FacilityLogs f WHERE f.logText = :logText")
    , @NamedQuery(name = "FacilityLogs.findByTimeStampId", query = "SELECT f FROM FacilityLogs f WHERE f.timeStampId = :timeStampId")
    , @NamedQuery(name = "FacilityLogs.findByTimeStamp", query = "SELECT f FROM FacilityLogs f WHERE f.timeStamp = :timeStamp")})
public class FacilityLogs implements Serializable {

    @Column( name = "log_type" )
    private Integer logType;
    @Column( name = "time_stamp_id" )
    private Integer timeStampId;

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "log_id")
    private Integer logId;
    @Column(name = "log_text")
    private String logText;
    @Basic(optional = false)
    @Column(name = "time_stamp")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeStamp;
    @JoinColumn(name = "email", referencedColumnName = "email")
    @ManyToOne
    private Users email;

    public FacilityLogs() {
    }

    public FacilityLogs(Integer logId) {
        this.logId = logId;
    }

    public FacilityLogs(Integer logId, Date timeStamp) {
        this.logId = logId;
        this.timeStamp = timeStamp;
    }

    public Integer getLogId() {
        return logId;
    }

    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    public String getLogText() {
        return logText;
    }

    public void setLogText(String logText) {
        this.logText = logText;
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

    public Users getEmail() {
        return email;
    }

    public void setEmail(Users email) {
        this.email = email;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (logId != null ? logId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FacilityLogs)) {
            return false;
        }
        FacilityLogs other = (FacilityLogs) object;
        if ((this.logId == null && other.logId != null) || (this.logId != null && !this.logId.equals(other.logId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.FacilityLogs[ logId=" + logId + " ]";
    }

    public Integer getLogType()
    {
        return logType;
    }

    public void setLogType( Integer logType )
    {
        this.logType = logType;
    }  
}
