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
 * @author 821320
 */
@Entity
@Table(name = "pcc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PCC.findAll", query = "SELECT p FROM PCC p")
    , @NamedQuery(name = "PCC.findByRecordID", query = "SELECT p FROM PCC p WHERE p.recordID = :recordID")
    , @NamedQuery(name = "PCC.findByTimeStampId", query = "SELECT p FROM PCC p WHERE p.timeStampId = :timeStampId")
    , @NamedQuery(name = "PCC.findByTimeStamp", query = "SELECT p FROM PCC p WHERE p.timeStamp = :timeStamp")
    , @NamedQuery(name = "PCC.findByTimeStampRange", query = "SELECT p FROM PCC p WHERE p.timeStamp BETWEEN :startTimeStampId AND :endTimeStampId")
    , @NamedQuery(name = "PCC.findByAcOutputEnergy", query = "SELECT p FROM PCC p WHERE p.acOutputEnergy = :acOutputEnergy")
    , @NamedQuery(name = "PCC.findByAcOutputRealPower", query = "SELECT p FROM PCC p WHERE p.acOutputRealPower = :acOutputRealPower")
    , @NamedQuery(name = "PCC.findByAcOutputApparentPower", query = "SELECT p FROM PCC p WHERE p.acOutputApparentPower = :acOutputApparentPower")
    , @NamedQuery(name = "PCC.findByAcOutputReactivePower", query = "SELECT p FROM PCC p WHERE p.acOutputReactivePower = :acOutputReactivePower")
    , @NamedQuery(name = "PCC.findByAcOutputPowerFactor", query = "SELECT p FROM PCC p WHERE p.acOutputPowerFactor = :acOutputPowerFactor")
    , @NamedQuery(name = "PCC.findByAcOutputPhaseACurrent", query = "SELECT p FROM PCC p WHERE p.acOutputPhaseACurrent = :acOutputPhaseACurrent")
    , @NamedQuery(name = "PCC.findByAcOutputPhaseBCurrent", query = "SELECT p FROM PCC p WHERE p.acOutputPhaseBCurrent = :acOutputPhaseBCurrent")
    , @NamedQuery(name = "PCC.findByAcOutputPhaseCCurrent", query = "SELECT p FROM PCC p WHERE p.acOutputPhaseCCurrent = :acOutputPhaseCCurrent")
    , @NamedQuery(name = "PCC.findByAcOutputPhaseAbVoltage", query = "SELECT p FROM PCC p WHERE p.acOutputPhaseAbVoltage = :acOutputPhaseAbVoltage")
    , @NamedQuery(name = "PCC.findByAcOutputPhaseBcVoltage", query = "SELECT p FROM PCC p WHERE p.acOutputPhaseBcVoltage = :acOutputPhaseBcVoltage")
    , @NamedQuery(name = "PCC.findByAcOutputPhaseCaVoltage", query = "SELECT p FROM PCC p WHERE p.acOutputPhaseCaVoltage = :acOutputPhaseCaVoltage")
    , @NamedQuery(name = "PCC.findByMostRecentTimeStampID", query = "SELECT max(p.timeStampId) FROM PCC p")})
public class PCC extends TransferDatabase implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "recordID")
    private String recordID;
    @Column(name = "time_stamp_id")
    private long timeStampId;
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

    public PCC() {
    }

    public PCC(String recordID) {
        this.recordID = recordID;
    }

    public PCC(String recordID, Date timeStamp) {
        this.recordID = recordID;
        this.timeStamp = timeStamp;
    }

    public String getRecordID() {
        return recordID;
    }

    public void setRecordID(String recordID) {
        this.recordID = recordID;
    }

    public long getTimeStampId() {
        return timeStampId;
    }

    public void setTimeStampId(long timeStampId) {
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
    
    public Double getAcOutputPhaseAverageVoltage() {
        return (acOutputPhaseCaVoltage + acOutputPhaseBcVoltage + acOutputPhaseAbVoltage) / 3;
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
        if (!(object instanceof PCC)) {
            return false;
        }
        PCC other = (PCC) object;
        if ((this.recordID == null && other.recordID != null) || (this.recordID != null && !this.recordID.equals(other.recordID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.PCC[ recordID=" + recordID + " ]";
    }

    @Override
    public void PutIntoDatabase() {
        try {
            DBAccess.PccInsert(this);
        } catch (SQLException ex) {
            Logger.getLogger(PCC.class.getName()).log(Level.SEVERE, null, ex);
        }
    }     
}
