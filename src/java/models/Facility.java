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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 856622
 */
@Entity
@Table(name = "facility")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Facility.findAll", query = "SELECT f FROM Facility f")
    , @NamedQuery(name = "Facility.findByRecordID", query = "SELECT f FROM Facility f WHERE f.recordID = :recordID")
    , @NamedQuery(name = "Facility.findByTimeStampId", query = "SELECT f FROM Facility f WHERE f.timeStampId = :timeStampId")
    , @NamedQuery(name = "Facility.findByTimeStamp", query = "SELECT f FROM Facility f WHERE f.timeStamp = :timeStamp")
    , @NamedQuery(name = "Facility.findBySolarirridiancePOA", query = "SELECT f FROM Facility f WHERE f.solarirridiancePOA = :solarirridiancePOA")
    , @NamedQuery(name = "Facility.findBySolarirridianceGHI", query = "SELECT f FROM Facility f WHERE f.solarirridianceGHI = :solarirridianceGHI")
    , @NamedQuery(name = "Facility.findByBackOfPanelTemperature1", query = "SELECT f FROM Facility f WHERE f.backOfPanelTemperature1 = :backOfPanelTemperature1")
    , @NamedQuery(name = "Facility.findByAmbientTemperature", query = "SELECT f FROM Facility f WHERE f.ambientTemperature = :ambientTemperature")
    , @NamedQuery(name = "Facility.findByBackOfPanelTemperature2", query = "SELECT f FROM Facility f WHERE f.backOfPanelTemperature2 = :backOfPanelTemperature2")
    , @NamedQuery(name = "Facility.findByWindSpeed", query = "SELECT f FROM Facility f WHERE f.windSpeed = :windSpeed")})
public class Facility implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "recordID", nullable = false, length = 50)
    private String recordID;
    @Column(name = "time_stamp_id")
    private Integer timeStampId;
    @Basic(optional = false)
    @Column(name = "time_stamp", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeStamp;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "solar_irridiance_POA", precision = 22)
    private Double solarirridiancePOA;
    @Column(name = "solar_irridiance_GHI", precision = 22)
    private Double solarirridianceGHI;
    @Column(name = "back_of_panel_temperature_1", precision = 22)
    private Double backOfPanelTemperature1;
    @Column(name = "ambient_temperature", precision = 22)
    private Double ambientTemperature;
    @Column(name = "back_of_panel_temperature_2", precision = 22)
    private Double backOfPanelTemperature2;
    @Column(name = "wind_speed", precision = 22)
    private Double windSpeed;

    public Facility() {
    }

    public Facility(String recordID) {
        this.recordID = recordID;
    }

    public Facility(String recordID, Date timeStamp) {
        this.recordID = recordID;
        this.timeStamp = timeStamp;
    }

    public String getRecordID() {
        return recordID;
    }

    public void setRecordID(String recordID) {
        this.recordID = recordID;
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

    public Double getSolarirridiancePOA() {
        return solarirridiancePOA;
    }

    public void setSolarirridiancePOA(Double solarirridiancePOA) {
        this.solarirridiancePOA = solarirridiancePOA;
    }

    public Double getSolarirridianceGHI() {
        return solarirridianceGHI;
    }

    public void setSolarirridianceGHI(Double solarirridianceGHI) {
        this.solarirridianceGHI = solarirridianceGHI;
    }

    public Double getBackOfPanelTemperature1() {
        return backOfPanelTemperature1;
    }

    public void setBackOfPanelTemperature1(Double backOfPanelTemperature1) {
        this.backOfPanelTemperature1 = backOfPanelTemperature1;
    }

    public Double getAmbientTemperature() {
        return ambientTemperature;
    }

    public void setAmbientTemperature(Double ambientTemperature) {
        this.ambientTemperature = ambientTemperature;
    }

    public Double getBackOfPanelTemperature2() {
        return backOfPanelTemperature2;
    }

    public void setBackOfPanelTemperature2(Double backOfPanelTemperature2) {
        this.backOfPanelTemperature2 = backOfPanelTemperature2;
    }

    public Double getWindSpeed() {
        return windSpeed;
    }

    public void setWindSpeed(Double windSpeed) {
        this.windSpeed = windSpeed;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (recordID != null ? recordID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Facility)) {
            return false;
        }
        Facility other = (Facility) object;
        if ((this.recordID == null && other.recordID != null) || (this.recordID != null && !this.recordID.equals(other.recordID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Facility[ recordID=" + recordID + " ]";
    }
    
}
