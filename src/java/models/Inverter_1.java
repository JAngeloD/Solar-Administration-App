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
 * @author 821320
 */
@Entity
@Table(name = "inverter")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Inverter_1.findAll", query = "SELECT i FROM Inverter_1 i")
    , @NamedQuery(name = "Inverter_1.findByRecordID", query = "SELECT i FROM Inverter_1 i WHERE i.recordID = :recordID")
    , @NamedQuery(name = "Inverter_1.findByTimeStampId", query = "SELECT i FROM Inverter_1 i WHERE i.timeStampId = :timeStampId")
    , @NamedQuery(name = "Inverter_1.findByTimeStamp", query = "SELECT i FROM Inverter_1 i WHERE i.timeStamp = :timeStamp")
    , @NamedQuery(name = "Inverter_1.findByAcOutputEnergy", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputEnergy = :acOutputEnergy")
    , @NamedQuery(name = "Inverter_1.findByAcOutputRealPower", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputRealPower = :acOutputRealPower")
    , @NamedQuery(name = "Inverter_1.findByAcOutputApparentPower", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputApparentPower = :acOutputApparentPower")
    , @NamedQuery(name = "Inverter_1.findByAcOutputReactivePower", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputReactivePower = :acOutputReactivePower")
    , @NamedQuery(name = "Inverter_1.findByAcOutputPowerFactor", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputPowerFactor = :acOutputPowerFactor")
    , @NamedQuery(name = "Inverter_1.findByAcOutputPhaseACurrent", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputPhaseACurrent = :acOutputPhaseACurrent")
    , @NamedQuery(name = "Inverter_1.findByAcOutputPhaseBCurrent", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputPhaseBCurrent = :acOutputPhaseBCurrent")
    , @NamedQuery(name = "Inverter_1.findByAcOutputPhaseCCurrent", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputPhaseCCurrent = :acOutputPhaseCCurrent")
    , @NamedQuery(name = "Inverter_1.findByAcOutputPhaseAbVoltage", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputPhaseAbVoltage = :acOutputPhaseAbVoltage")
    , @NamedQuery(name = "Inverter_1.findByAcOutputPhaseBcVoltage", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputPhaseBcVoltage = :acOutputPhaseBcVoltage")
    , @NamedQuery(name = "Inverter_1.findByAcOutputPhaseCaVoltage", query = "SELECT i FROM Inverter_1 i WHERE i.acOutputPhaseCaVoltage = :acOutputPhaseCaVoltage")
    , @NamedQuery(name = "Inverter_1.findByDcRealPower", query = "SELECT i FROM Inverter_1 i WHERE i.dcRealPower = :dcRealPower")
    , @NamedQuery(name = "Inverter_1.findByDcVolt", query = "SELECT i FROM Inverter_1 i WHERE i.dcVolt = :dcVolt")
    , @NamedQuery(name = "Inverter_1.findByDcCurrent", query = "SELECT i FROM Inverter_1 i WHERE i.dcCurrent = :dcCurrent")
    , @NamedQuery(name = "Inverter_1.findByEfficiency", query = "SELECT i FROM Inverter_1 i WHERE i.efficiency = :efficiency")})
public class Inverter_1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "recordID")
    private String recordID;
    @Column(name = "time_stamp_id")
    private Integer timeStampId;
    @Basic(optional = false)
    @Column(name = "time_stamp")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeStamp;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "ac_output_energy")
    private Double acOutputEnergy;
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
    @Column(name = "dc_real_power")
    private Double dcRealPower;
    @Column(name = "dc_volt")
    private Double dcVolt;
    @Column(name = "dc_current")
    private Double dcCurrent;
    @Column(name = "efficiency")
    private Double efficiency;

    public Inverter_1() {
    }

    public Inverter_1(String recordID) {
        this.recordID = recordID;
    }

    public Inverter_1(String recordID, Date timeStamp) {
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
        if (!(object instanceof Inverter_1)) {
            return false;
        }
        Inverter_1 other = (Inverter_1) object;
        if ((this.recordID == null && other.recordID != null) || (this.recordID != null && !this.recordID.equals(other.recordID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Inverter_1[ recordID=" + recordID + " ]";
    }
    
}
