/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author 856622
 */
public class Facility {

    /**
     * the variables used to store the facility hardware and environmental data.
     */
    private double solarIrridinacePOA;
    private double solarIrridinaceGHI;
    private double ambientTemperature;
    private double backOfPanelTemperature1;
    private double backOfPanelTemperature2;
    private double windSpeed;

    /**
     * An Empty constructor that initializes all variables in this class.
     */
    public Facility() {
        this.solarIrridinacePOA = 0;
        this.solarIrridinaceGHI = 0;
        this.ambientTemperature = 0;
        this.backOfPanelTemperature1 = 0;
        this.backOfPanelTemperature2 = 0;
        this.windSpeed = 0;
    }

    /**
     * @return the Solar irridiance POA value.
     */
    public double getSolarIrridinacePOA() {
        return solarIrridinacePOA;
    }

    /**
     * @param solarIrridinacePOA - the solar irridiance POA value to be set.
     */
    public void setSolarIrridinacePOA(double solarIrridinacePOA) {
        this.solarIrridinacePOA = solarIrridinacePOA;
    }

    /**
     * @return the Solar irridiance GHI value
     */
    public double getSolarIrridinaceGHI() {
        return solarIrridinaceGHI;
    }

    /**
     * @param solarIrridinaceGHI - the solar irridiance GHI value to be set.
     */
    public void setSolarIrridinaceGHI(double solarIrridinaceGHI) {
        this.solarIrridinaceGHI = solarIrridinaceGHI;
    }

    /**
     * @return the ambient temperature
     */
    public double getAmbientTemperature() {
        return ambientTemperature;
    }

    /**
     * @param ambientTemperature - the ambient temperature value o be set.
     */
    public void setAmbientTemperature(double ambientTemperature) {
        this.ambientTemperature = ambientTemperature;
    }

    /**
     * @return the temperature at the back of panel number 1.
     */
    public double getBackOfPanelTemperature1() {
        return backOfPanelTemperature1;
    }

    /**
     * @param backOfPanelTemperature1 - the value to be set as the temperature
     * for the back of panel 1.
     */
    public void setBackOfPanelTemperature1(double backOfPanelTemperature1) {
        this.backOfPanelTemperature1 = backOfPanelTemperature1;
    }

    /**
     * @return the temperature at the back of panel number 2.
     */
    public double getBackOfPanelTemperature2() {
        return backOfPanelTemperature2;
    }

    /**
     * @param backOfPanelTemperature2 - the value to be set as the temperature
     * for the back of panel 2.
     */
    public void setBackOfPanelTemperature2(double backOfPanelTemperature2) {
        this.backOfPanelTemperature2 = backOfPanelTemperature2;
    }

    /**
     * @return the current wind speed.
     */
    public double getWindSpeed() {
        return windSpeed;
    }

    /**
     * @param windSpeed - the wind speed value to be set.
     */
    public void setWindSpeed(double windSpeed) {
        this.windSpeed = windSpeed;
    }
}
