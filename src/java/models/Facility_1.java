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
@Table(name = "facility")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Facility_1.findAll", query = "SELECT f FROM Facility_1 f")
    , @NamedQuery(name = "Facility_1.findByComponent", query = "SELECT f FROM Facility_1 f WHERE f.component = :component")
    , @NamedQuery(name = "Facility_1.findBySolarirridiancePOA", query = "SELECT f FROM Facility_1 f WHERE f.solarirridiancePOA = :solarirridiancePOA")
    , @NamedQuery(name = "Facility_1.findBySolarirridianceGHI", query = "SELECT f FROM Facility_1 f WHERE f.solarirridianceGHI = :solarirridianceGHI")
    , @NamedQuery(name = "Facility_1.findByBackOfPanelTemperature1", query = "SELECT f FROM Facility_1 f WHERE f.backOfPanelTemperature1 = :backOfPanelTemperature1")
    , @NamedQuery(name = "Facility_1.findByAmbientTemperature", query = "SELECT f FROM Facility_1 f WHERE f.ambientTemperature = :ambientTemperature")
    , @NamedQuery(name = "Facility_1.findByBackOfPanelTemperature2", query = "SELECT f FROM Facility_1 f WHERE f.backOfPanelTemperature2 = :backOfPanelTemperature2")
    , @NamedQuery(name = "Facility_1.findByWindSpeed", query = "SELECT f FROM Facility_1 f WHERE f.windSpeed = :windSpeed")})
public class Facility_1 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "component")
    private String component;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "solar_irridiance_POA")
    private Double solarirridiancePOA;
    @Column(name = "solar_irridiance_GHI")
    private Double solarirridianceGHI;
    @Column(name = "back_of_panel_temperature_1")
    private Double backOfPanelTemperature1;
    @Column(name = "ambient_temperature")
    private Double ambientTemperature;
    @Column(name = "back_of_panel_temperature_2")
    private Double backOfPanelTemperature2;
    @Column(name = "wind_speed")
    private Double windSpeed;

    public Facility_1() {
    }

    public Facility_1(String component) {
        this.component = component;
    }

    public String getComponent() {
        return component;
    }

    public void setComponent(String component) {
        this.component = component;
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
        hash += (component != null ? component.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Facility_1)) {
            return false;
        }
        Facility_1 other = (Facility_1) object;
        if ((this.component == null && other.component != null) || (this.component != null && !this.component.equals(other.component))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Facility_1[ component=" + component + " ]";
    }
    
}
