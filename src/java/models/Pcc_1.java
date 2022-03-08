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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 821320
 */
@Entity
@Table(name = "pcc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Pcc_1.findAll", query = "SELECT p FROM Pcc_1 p")
    , @NamedQuery(name = "Pcc_1.findByComponent", query = "SELECT p FROM Pcc_1 p WHERE p.component = :component")
    , @NamedQuery(name = "Pcc_1.findByAcOutputEnergy", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputEnergy = :acOutputEnergy")
    , @NamedQuery(name = "Pcc_1.findByAcOutputRealPower", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputRealPower = :acOutputRealPower")
    , @NamedQuery(name = "Pcc_1.findByAcOutputApparentPower", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputApparentPower = :acOutputApparentPower")
    , @NamedQuery(name = "Pcc_1.findByAcOutputReactivePower", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputReactivePower = :acOutputReactivePower")
    , @NamedQuery(name = "Pcc_1.findByAcOutputPowerFactor", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputPowerFactor = :acOutputPowerFactor")
    , @NamedQuery(name = "Pcc_1.findByAcOutputPhaseACurrent", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputPhaseACurrent = :acOutputPhaseACurrent")
    , @NamedQuery(name = "Pcc_1.findByAcOutputPhaseBCurrent", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputPhaseBCurrent = :acOutputPhaseBCurrent")
    , @NamedQuery(name = "Pcc_1.findByAcOutputPhaseCCurrent", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputPhaseCCurrent = :acOutputPhaseCCurrent")
    , @NamedQuery(name = "Pcc_1.findByAcOutputPhaseAbVoltage", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputPhaseAbVoltage = :acOutputPhaseAbVoltage")
    , @NamedQuery(name = "Pcc_1.findByAcOutputPhaseBcVoltage", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputPhaseBcVoltage = :acOutputPhaseBcVoltage")
    , @NamedQuery(name = "Pcc_1.findByAcOutputPhaseCaVoltage", query = "SELECT p FROM Pcc_1 p WHERE p.acOutputPhaseCaVoltage = :acOutputPhaseCaVoltage")})
public class Pcc_1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "component")
    private String component;
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

    public Pcc_1() {
    }

    public Pcc_1(String component) {
        this.component = component;
    }

    public String getComponent() {
        return component;
    }

    public void setComponent(String component) {
        this.component = component;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (component != null ? component.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Pcc_1)) {
            return false;
        }
        Pcc_1 other = (Pcc_1) object;
        if ((this.component == null && other.component != null) || (this.component != null && !this.component.equals(other.component))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Pcc_1[ component=" + component + " ]";
    }
    
}
