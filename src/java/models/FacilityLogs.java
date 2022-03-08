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
@Table(name = "facility_logs")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "FacilityLogs.findAll", query = "SELECT f FROM FacilityLogs f")
    , @NamedQuery(name = "FacilityLogs.findByLogCode", query = "SELECT f FROM FacilityLogs f WHERE f.logCode = :logCode")
    , @NamedQuery(name = "FacilityLogs.findByLogText", query = "SELECT f FROM FacilityLogs f WHERE f.logText = :logText")
    , @NamedQuery(name = "FacilityLogs.findByCreatedBy", query = "SELECT f FROM FacilityLogs f WHERE f.createdBy = :createdBy")})
public class FacilityLogs implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "log_code")
    private Integer logCode;
    @Column(name = "log_text")
    private String logText;
    @Column(name = "created_by")
    private String createdBy;
    @JoinColumn(name = "time_stamp", referencedColumnName = "time_stamp")
    @ManyToOne
    private TimestampDesc timeStamp;

    public FacilityLogs() {
    }

    public FacilityLogs(Integer logCode) {
        this.logCode = logCode;
    }

    public Integer getLogCode() {
        return logCode;
    }

    public void setLogCode(Integer logCode) {
        this.logCode = logCode;
    }

    public String getLogText() {
        return logText;
    }

    public void setLogText(String logText) {
        this.logText = logText;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
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
        hash += (logCode != null ? logCode.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof FacilityLogs)) {
            return false;
        }
        FacilityLogs other = (FacilityLogs) object;
        if ((this.logCode == null && other.logCode != null) || (this.logCode != null && !this.logCode.equals(other.logCode))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.FacilityLogs[ logCode=" + logCode + " ]";
    }
    
}
