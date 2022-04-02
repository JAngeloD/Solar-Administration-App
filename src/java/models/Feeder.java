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
import javax.persistence.Lob;
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
@Table(name = "feeder")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Feeder.findAll", query = "SELECT f FROM Feeder f")
    , @NamedQuery(name = "Feeder.findByRecordID", query = "SELECT f FROM Feeder f WHERE f.recordID = :recordID")
    , @NamedQuery(name = "Feeder.findByTimeStamp", query = "SELECT f FROM Feeder f WHERE f.timeStamp = :timeStamp")
    , @NamedQuery(name = "Feeder.findByDeviceId", query = "SELECT f FROM Feeder f WHERE f.deviceId = :deviceId")
    , @NamedQuery(name = "Feeder.findByBreakerStatus", query = "SELECT f FROM Feeder f WHERE f.breakerStatus = :breakerStatus")
    , @NamedQuery(name = "Feeder.findByAcOutputRealPower", query = "SELECT f FROM Feeder f WHERE f.acOutputRealPower = :acOutputRealPower")
    , @NamedQuery(name = "Feeder.findByAcOutputApparentPower", query = "SELECT f FROM Feeder f WHERE f.acOutputApparentPower = :acOutputApparentPower")
    , @NamedQuery(name = "Feeder.findByAcOutputReactivePower", query = "SELECT f FROM Feeder f WHERE f.acOutputReactivePower = :acOutputReactivePower")
    , @NamedQuery(name = "Feeder.findByAcOutputPowerFactor", query = "SELECT f FROM Feeder f WHERE f.acOutputPowerFactor = :acOutputPowerFactor")
    , @NamedQuery(name = "Feeder.findByAcOutputPhaseACurrent", query = "SELECT f FROM Feeder f WHERE f.acOutputPhaseACurrent = :acOutputPhaseACurrent")
    , @NamedQuery(name = "Feeder.findByAcOutputPhaseBCurrent", query = "SELECT f FROM Feeder f WHERE f.acOutputPhaseBCurrent = :acOutputPhaseBCurrent")
    , @NamedQuery(name = "Feeder.findByAcOutputPhaseCCurrent", query = "SELECT f FROM Feeder f WHERE f.acOutputPhaseCCurrent = :acOutputPhaseCCurrent")
    , @NamedQuery(name = "Feeder.findByAcOutputPhaseAbVoltage", query = "SELECT f FROM Feeder f WHERE f.acOutputPhaseAbVoltage = :acOutputPhaseAbVoltage")
    , @NamedQuery(name = "Feeder.findByAcOutputPhaseBcVoltage", query = "SELECT f FROM Feeder f WHERE f.acOutputPhaseBcVoltage = :acOutputPhaseBcVoltage")
    , @NamedQuery(name = "Feeder.findByAcOutputPhaseCaVoltage", query = "SELECT f FROM Feeder f WHERE f.acOutputPhaseCaVoltage = :acOutputPhaseCaVoltage")})
public class Feeder implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "recordID")
    private String recordID;
    @Lob
    @Column(name = "time_stamp_id")
    private String timeStampId;
    @Basic(optional = false)
    @Column(name = "time_stamp")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeStamp;
    @Column(name = "device_id")
    private Integer deviceId;
    @Column(name = "breaker_status")
    private Boolean breakerStatus;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "ac_output_real_power")
    private Double acOutputRealPower;
    @Column(name = "ac_output_apparent_power")
    private Double acOutputApparentPower;
    @Column(name = "ac_output_reactive_power")
    private Double acOutputReactivePower;
    @Column(name = "ac_output_power_factor")
    private Double acOutputPowerFactor;
    @Column(name = "ac_output_phase_a_current")
    private Double acOutputPhaseACurrent;
    @Column(name = "ac_output_phase_b_current")
    private Double acOutputPhaseBCurrent;
    @Column(name = "ac_output_phase_c_current")
    private Double acOutputPhaseCCurrent;
    @Column(name = "ac_output_phase_ab_voltage")
    private Double acOutputPhaseAbVoltage;
    @Column(name = "ac_output_phase_bc_voltage")
    private Double acOutputPhaseBcVoltage;
    @Column(name = "ac_output_phase_ca_voltage")
    private Double acOutputPhaseCaVoltage;

    public Feeder() {
    }

    public Feeder(String recordID) {
        this.recordID = recordID;
    }

    public Feeder(String recordID, Date timeStamp) {
        this.recordID = recordID;
        this.timeStamp = timeStamp;
    }

    public String getRecordID() {
        return recordID;
    }

    public void setRecordID(String recordID) {
        this.recordID = recordID;
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

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public Boolean getBreakerStatus() {
        return breakerStatus;
    }

    public void setBreakerStatus(Boolean breakerStatus) {
        this.breakerStatus = breakerStatus;
    }

    public Double getAcOutputRealPower() {
        return acOutputRealPower;
    }

    public void setAcOutputRealPower(Double acOutputRealPower) {
        this.acOutputRealPower = acOutputRealPower;
    }

    public Double getAcOutputApparentPower() {
        return acOutputApparentPower;
    }

    public void setAcOutputApparentPower(Double acOutputApparentPower) {
        this.acOutputApparentPower = acOutputApparentPower;
    }

    public Double getAcOutputReactivePower() {
        return acOutputReactivePower;
    }

    public void setAcOutputReactivePower(Double acOutputReactivePower) {
        this.acOutputReactivePower = acOutputReactivePower;
    }

    public Double getAcOutputPowerFactor() {
        return acOutputPowerFactor;
    }

    public void setAcOutputPowerFactor(Double acOutputPowerFactor) {
        this.acOutputPowerFactor = acOutputPowerFactor;
    }

    public Double getAcOutputPhaseACurrent() {
        return acOutputPhaseACurrent;
    }

    public void setAcOutputPhaseACurrent(Double acOutputPhaseACurrent) {
        this.acOutputPhaseACurrent = acOutputPhaseACurrent;
    }

    public Double getAcOutputPhaseBCurrent() {
        return acOutputPhaseBCurrent;
    }

    public void setAcOutputPhaseBCurrent(Double acOutputPhaseBCurrent) {
        this.acOutputPhaseBCurrent = acOutputPhaseBCurrent;
    }

    public Double getAcOutputPhaseCCurrent() {
        return acOutputPhaseCCurrent;
    }

    public void setAcOutputPhaseCCurrent(Double acOutputPhaseCCurrent) {
        this.acOutputPhaseCCurrent = acOutputPhaseCCurrent;
    }

    public Double getAcOutputPhaseAbVoltage() {
        return acOutputPhaseAbVoltage;
    }

    public void setAcOutputPhaseAbVoltage(Double acOutputPhaseAbVoltage) {
        this.acOutputPhaseAbVoltage = acOutputPhaseAbVoltage;
    }

    public Double getAcOutputPhaseBcVoltage() {
        return acOutputPhaseBcVoltage;
    }

    public void setAcOutputPhaseBcVoltage(Double acOutputPhaseBcVoltage) {
        this.acOutputPhaseBcVoltage = acOutputPhaseBcVoltage;
    }

    public Double getAcOutputPhaseCaVoltage() {
        return acOutputPhaseCaVoltage;
    }

    public void setAcOutputPhaseCaVoltage(Double acOutputPhaseCaVoltage) {
        this.acOutputPhaseCaVoltage = acOutputPhaseCaVoltage;
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
        if (!(object instanceof Feeder)) {
            return false;
        }
        Feeder other = (Feeder) object;
        if ((this.recordID == null && other.recordID != null) || (this.recordID != null && !this.recordID.equals(other.recordID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Feeder[ recordID=" + recordID + " ]";
    }
    
}
