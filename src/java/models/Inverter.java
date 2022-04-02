/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
import services.DBAccess;
import servlets.TransferDatabase;

/**
 *
 * @author 856622
 */
@Entity
@Table(name = "inverter")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Inverter.findAll", query = "SELECT i FROM Inverter i")
    , @NamedQuery(name = "Inverter.findByRecordID", query = "SELECT i FROM Inverter i WHERE i.recordID = :recordID")
    , @NamedQuery(name = "Inverter.findByTimeStampId", query = "SELECT i FROM Inverter i WHERE i.timeStampId = :timeStampId")
    , @NamedQuery(name = "Inverter.findByTimeStamp", query = "SELECT i FROM Inverter i WHERE i.timeStamp = :timeStamp")
    , @NamedQuery(name = "Inverter.findByDeviceId", query = "SELECT i FROM Inverter i WHERE i.deviceId = :deviceId")
    , @NamedQuery(name = "Inverter.findByAcOutputEnergy", query = "SELECT i FROM Inverter i WHERE i.acOutputEnergy = :acOutputEnergy")
    , @NamedQuery(name = "Inverter.findByAcOutputRealPower", query = "SELECT i FROM Inverter i WHERE i.acOutputRealPower = :acOutputRealPower")
    , @NamedQuery(name = "Inverter.findByAcOutputApparentPower", query = "SELECT i FROM Inverter i WHERE i.acOutputApparentPower = :acOutputApparentPower")
    , @NamedQuery(name = "Inverter.findByAcOutputReactivePower", query = "SELECT i FROM Inverter i WHERE i.acOutputReactivePower = :acOutputReactivePower")
    , @NamedQuery(name = "Inverter.findByAcOutputPowerFactor", query = "SELECT i FROM Inverter i WHERE i.acOutputPowerFactor = :acOutputPowerFactor")
    , @NamedQuery(name = "Inverter.findByAcOutputPhaseACurrent", query = "SELECT i FROM Inverter i WHERE i.acOutputPhaseACurrent = :acOutputPhaseACurrent")
    , @NamedQuery(name = "Inverter.findByAcOutputPhaseBCurrent", query = "SELECT i FROM Inverter i WHERE i.acOutputPhaseBCurrent = :acOutputPhaseBCurrent")
    , @NamedQuery(name = "Inverter.findByAcOutputPhaseCCurrent", query = "SELECT i FROM Inverter i WHERE i.acOutputPhaseCCurrent = :acOutputPhaseCCurrent")
    , @NamedQuery(name = "Inverter.findByAcOutputPhaseAbVoltage", query = "SELECT i FROM Inverter i WHERE i.acOutputPhaseAbVoltage = :acOutputPhaseAbVoltage")
    , @NamedQuery(name = "Inverter.findByAcOutputPhaseBcVoltage", query = "SELECT i FROM Inverter i WHERE i.acOutputPhaseBcVoltage = :acOutputPhaseBcVoltage")
    , @NamedQuery(name = "Inverter.findByAcOutputPhaseCaVoltage", query = "SELECT i FROM Inverter i WHERE i.acOutputPhaseCaVoltage = :acOutputPhaseCaVoltage")
    , @NamedQuery(name = "Inverter.findByDcRealPower", query = "SELECT i FROM Inverter i WHERE i.dcRealPower = :dcRealPower")
    , @NamedQuery(name = "Inverter.findByDcVolt", query = "SELECT i FROM Inverter i WHERE i.dcVolt = :dcVolt")
    , @NamedQuery(name = "Inverter.findByDcCurrent", query = "SELECT i FROM Inverter i WHERE i.dcCurrent = :dcCurrent")
    , @NamedQuery(name = "Inverter.findByEfficiency", query = "SELECT i FROM Inverter i WHERE i.efficiency = :efficiency")
    , @NamedQuery(name = "Inverter.findByTimeStampAndDeviceID", query = "SELECT i FROM Inverter i WHERE i.deviceId = :deviceId AND i.timeStampId = :timeStampId")})
public class Inverter extends TransferDatabase implements Serializable {

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
    @Column(name = "device_id")
    private Integer deviceId;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "ac_output_energy", precision = 22)
    private Double acOutputEnergy;
    @Column(name = "ac_output_real_power", precision = 22)
    private Double acOutputRealPower;
    @Column(name = "ac_output_apparent_power", precision = 22)
    private Double acOutputApparentPower;
    @Column(name = "ac_output_reactive_power", precision = 22)
    private Double acOutputReactivePower;
    @Column(name = "ac_output_power_factor", precision = 22)
    private Double acOutputPowerFactor;
    @Column(name = "ac_output_phase_a_current", precision = 22)
    private Double acOutputPhaseACurrent;
    @Column(name = "ac_output_phase_b_current", precision = 22)
    private Double acOutputPhaseBCurrent;
    @Column(name = "ac_output_phase_c_current", precision = 22)
    private Double acOutputPhaseCCurrent;
    @Column(name = "ac_output_phase_ab_voltage", precision = 22)
    private Double acOutputPhaseAbVoltage;
    @Column(name = "ac_output_phase_bc_voltage", precision = 22)
    private Double acOutputPhaseBcVoltage;
    @Column(name = "ac_output_phase_ca_voltage", precision = 22)
    private Double acOutputPhaseCaVoltage;
    @Column(name = "dc_real_power", precision = 22)
    private Double dcRealPower;
    @Column(name = "dc_volt", precision = 22)
    private Double dcVolt;
    @Column(name = "dc_current", precision = 22)
    private Double dcCurrent;
    @Column(name = "efficiency", precision = 22)
    private Double efficiency;

    public Inverter() {
    }

    public Inverter(String recordID, Integer timeStampId, Date timeStamp, Integer deviceId, Double acOutputEnergy, Double acOutputRealPower, Double acOutputApparentPower, Double acOutputReactivePower, Double acOutputPowerFactor, Double acOutputPhaseACurrent, Double acOutputPhaseBCurrent, Double acOutputPhaseCCurrent, Double acOutputPhaseAbVoltage, Double acOutputPhaseBcVoltage, Double acOutputPhaseCaVoltage, Double dcRealPower, Double dcVolt, Double dcCurrent, Double efficiency) {
        this.recordID = recordID;
        this.timeStampId = timeStampId;
        this.timeStamp = timeStamp;
        this.deviceId = deviceId;
        this.acOutputEnergy = acOutputEnergy;
        this.acOutputRealPower = acOutputRealPower;
        this.acOutputApparentPower = acOutputApparentPower;
        this.acOutputReactivePower = acOutputReactivePower;
        this.acOutputPowerFactor = acOutputPowerFactor;
        this.acOutputPhaseACurrent = acOutputPhaseACurrent;
        this.acOutputPhaseBCurrent = acOutputPhaseBCurrent;
        this.acOutputPhaseCCurrent = acOutputPhaseCCurrent;
        this.acOutputPhaseAbVoltage = acOutputPhaseAbVoltage;
        this.acOutputPhaseBcVoltage = acOutputPhaseBcVoltage;
        this.acOutputPhaseCaVoltage = acOutputPhaseCaVoltage;
        this.dcRealPower = dcRealPower;
        this.dcVolt = dcVolt;
        this.dcCurrent = dcCurrent;
        this.efficiency = efficiency;
    }

    public Inverter(String recordID) {
        this.recordID = recordID;
    }

    public Inverter(String recordID, Date timeStamp) {
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

    public Integer getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Integer deviceId) {
        this.deviceId = deviceId;
    }

    public Double getAcOutputEnergy() {
        return acOutputEnergy;
    }

    public void setAcOutputEnergy(Double acOutputEnergy) {
        this.acOutputEnergy = acOutputEnergy;
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

    public Double getDcRealPower() {
        return dcRealPower;
    }

    public void setDcRealPower(Double dcRealPower) {
        this.dcRealPower = dcRealPower;
    }

    public Double getDcVolt() {
        return dcVolt;
    }

    public void setDcVolt(Double dcVolt) {
        this.dcVolt = dcVolt;
    }

    public Double getDcCurrent() {
        return dcCurrent;
    }

    public void setDcCurrent(Double dcCurrent) {
        this.dcCurrent = dcCurrent;
    }

    public Double getEfficiency() {
        return efficiency;
    }

    public void setEfficiency(Double efficiency) {
        this.efficiency = efficiency;
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
        if (!(object instanceof Inverter)) {
            return false;
        }
        Inverter other = (Inverter) object;
        if ((this.recordID == null && other.recordID != null) || (this.recordID != null && !this.recordID.equals(other.recordID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Inverter[ recordID=" + recordID + " ]";
    }

    @Override
    public void PutIntoDatabase() {
        try {
            DBAccess.InverterInsert(this);
        } catch (SQLException ex) {
            Logger.getLogger(Inverter.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
    
}
