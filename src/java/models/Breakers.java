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
@Table(name = "breakers")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Breakers.findAll", query = "SELECT b FROM Breakers b")
    , @NamedQuery(name = "Breakers.findByBreakerCode", query = "SELECT b FROM Breakers b WHERE b.breakerCode = :breakerCode")
    , @NamedQuery(name = "Breakers.findByBreakerName", query = "SELECT b FROM Breakers b WHERE b.breakerName = :breakerName")
    , @NamedQuery(name = "Breakers.findByBreakerStatus", query = "SELECT b FROM Breakers b WHERE b.breakerStatus = :breakerStatus")})
public class Breakers implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "breaker_code")
    private Integer breakerCode;
    @Column(name = "breaker_name")
    private String breakerName;
    @Column(name = "breaker_status")
    private String breakerStatus;
    @JoinColumn(name = "time_stamp", referencedColumnName = "time_stamp")
    @ManyToOne
    private TimestampDesc timeStamp;

    public Breakers() {
    }

    public Breakers(Integer breakerCode) {
        this.breakerCode = breakerCode;
    }

    public Integer getBreakerCode() {
        return breakerCode;
    }

    public void setBreakerCode(Integer breakerCode) {
        this.breakerCode = breakerCode;
    }

    public String getBreakerName() {
        return breakerName;
    }

    public void setBreakerName(String breakerName) {
        this.breakerName = breakerName;
    }

    public String getBreakerStatus() {
        return breakerStatus;
    }

    public void setBreakerStatus(String breakerStatus) {
        this.breakerStatus = breakerStatus;
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
        hash += (breakerCode != null ? breakerCode.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Breakers)) {
            return false;
        }
        Breakers other = (Breakers) object;
        if ((this.breakerCode == null && other.breakerCode != null) || (this.breakerCode != null && !this.breakerCode.equals(other.breakerCode))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Breakers[ breakerCode=" + breakerCode + " ]";
    }
    
}
