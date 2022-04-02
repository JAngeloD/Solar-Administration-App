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
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author hazco
 */
@Entity
@Table(name = "facility_logs")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FacilityLogs.findAll", query = "SELECT f FROM FacilityLogs f")
    , @NamedQuery(name = "FacilityLogs.findByLogId", query = "SELECT f FROM FacilityLogs f WHERE f.logId = :logId")
    , @NamedQuery(name = "FacilityLogs.findByLogText", query = "SELECT f FROM FacilityLogs f WHERE f.logText = :logText")
    , @NamedQuery(name = "FacilityLogs.findByLogType", query = "SELECT f FROM FacilityLogs f WHERE f.logType = :logType")
    , @NamedQuery(name = "FacilityLogs.findByTimeStamp", query = "SELECT f FROM FacilityLogs f WHERE f.timeStamp = :timeStamp")})
public class FacilityLogs implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "log_id")
    private Integer logId;
    @Column(name = "log_text")
    private String logText;
    @Column(name = "log_type")
    private Integer logType;
    @Lob
    @Column(name = "time_stamp_id")
    private String timeStampId;
    @Basic(optional = false)
    @Column(name = "time_stamp")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeStamp;
    @JoinColumn(name = "email", referencedColumnName = "email")
    @ManyToOne(fetch = FetchType.EAGER)
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

    public Integer getLogType() {
        return logType;
    }

    public void setLogType(Integer logType) {
        this.logType = logType;
    }

    public String getTimeStampId() {
        return timeStampId;
    }

    public void setTimeStampId(String timeStampId) {
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
    
}
