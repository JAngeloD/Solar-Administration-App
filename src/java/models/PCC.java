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
public class PCC {

    /**
     * Data variables
     */
    private double acOutputLifeTimeEnergy;
    private double acOutputYearToDateEnergy;
    private double acOutputMonthToDateEnergy;
    private double acOutputDailyEnergy;
    private double acOutputRealPower;
    private double acOutputApparentPower;
    private double acOutputReactivePower;
    private double acOutputPowerFactor;
    private double acOutputPhaseACurrent;
    private double acOutputPhaseBCurrent;
    private double acOutputPhaseCCurrent;
    private double acOutputPhaseABVoltage;
    private double acOutputPhaseBCVoltage;
    private double acOutputPhaseCAVoltage;

    /**
     *
     * @return returns the life time energy output
     */
    public double getAcOutputLifeTimeEnergy() {
        return acOutputLifeTimeEnergy;
    }

    /**
     *
     * @param acOutputLifeTimeEnergy life time energy to be set
     */
    public void setAcOutputLifeTimeEnergy(double acOutputLifeTimeEnergy) {
        this.acOutputLifeTimeEnergy = acOutputLifeTimeEnergy;
    }

    /**
     *
     * @return returns the year to date energy output
     */
    public double getAcOutputYearToDateEnergy() {
        return acOutputYearToDateEnergy;
    }

    /**
     *
     * @param acOutputYearToDateEnergy year to date energy value to be set
     */
    public void setAcOutputYearToDateEnergy(double acOutputYearToDateEnergy) {
        this.acOutputYearToDateEnergy = acOutputYearToDateEnergy;
    }

    /**
     *
     * @return returns month to date energy output
     */
    public double getAcOutputMonthToDateEnergy() {
        return acOutputMonthToDateEnergy;
    }

    /**
     *
     * @param acOutputMonthToDateEnergy month to date energy value to be set
     */
    public void setAcOutputMonthToDateEnergy(double acOutputMonthToDateEnergy) {
        this.acOutputMonthToDateEnergy = acOutputMonthToDateEnergy;
    }

    /**
     *
     * @return returns daily energy ouput
     */
    public double getAcOutputDailyEnergy() {
        return acOutputDailyEnergy;
    }

    /**
     *
     * @param acOutputDailyEnergy daily energy value to be set
     */
    public void setAcOutputDailyEnergy(double acOutputDailyEnergy) {
        this.acOutputDailyEnergy = acOutputDailyEnergy;
    }

    /**
     *
     * @return output of power in W /KW
     */
    public double getAcOutputRealPower() {
        return acOutputRealPower;
    }

    /**
     *
     * @param acOutputRealPower - real power value to be set
     */
    public void setAcOutputRealPower(double acOutputRealPower) {
        this.acOutputRealPower = acOutputRealPower;
    }

    /**
     *
     * @return returns the Apparent power in VA
     */
    public double getAcOutputApparentPower() {
        return acOutputApparentPower;
    }

    /**
     *
     * @param acOutputApparentPower - apparent power value to be set
     */
    public void setAcOutputApparentPower(double acOutputApparentPower) {
        this.acOutputApparentPower = acOutputApparentPower;
    }

    /**
     *
     * @return returns the Reactive power in VARS
     */
    public double getAcOutputReactivePower() {
        return acOutputReactivePower;
    }

    /**
     *
     * @param acOutputReactivePower - reactive power value to be set
     */
    public void setAcOutputReactivePower(double acOutputReactivePower) {
        this.acOutputReactivePower = acOutputReactivePower;
    }

    /**
     *
     * @return returns the power factor
     */
    public double getAcOutputPowerFactor() {
        return acOutputPowerFactor;
    }

    /**
     *
     * @param acOutputPowerFactor - power factor value to be set
     */
    public void setAcOutputPowerFactor(double acOutputPowerFactor) {
        this.acOutputPowerFactor = acOutputPowerFactor;
    }

    /**
     *
     * @return returns the phase A current
     */
    public double getAcOutputPhaseACurrent() {
        return acOutputPhaseACurrent;
    }

    /**
     *
     * @param acOutputPhaseACurrent- phase A current value to be set
     */
    public void setAcOutputPhaseACurrent(double acOutputPhaseACurrent) {
        this.acOutputPhaseACurrent = acOutputPhaseACurrent;
    }

    /**
     *
     * @return returns the phase B current
     */
    public double getAcOutputPhaseBCurrent() {
        return acOutputPhaseBCurrent;
    }

    /**
     *
     * @param acOutputPhaseBCurrent - phase B current value to be set
     */
    public void setAcOutputPhaseBCurrent(double acOutputPhaseBCurrent) {
        this.acOutputPhaseBCurrent = acOutputPhaseBCurrent;
    }

    /**
     *
     * @return returns the phase C curent
     */
    public double getAcOutputPhaseCCurrent() {
        return acOutputPhaseCCurrent;
    }

    /**
     *
     * @param acOutputPhaseCCurrent - phase C current value to be set
     */
    public void setAcOutputPhaseCCurrent(double acOutputPhaseCCurrent) {
        this.acOutputPhaseCCurrent = acOutputPhaseCCurrent;
    }

    /**
     *
     * @return returns the phase AB voltage
     */
    public double getAcOutputPhaseABVoltage() {
        return acOutputPhaseABVoltage;
    }

    /**
     *
     * @param acOutputPhaseABVoltage -phase AB voltage value to be set
     */
    public void setAcOutputPhaseABVoltage(double acOutputPhaseABVoltage) {
        this.acOutputPhaseABVoltage = acOutputPhaseABVoltage;
    }

    /**
     *
     * @return returns phase BC voltage
     */
    public double getAcOutputPhaseBCVoltage() {
        return acOutputPhaseBCVoltage;
    }

    /**
     *
     * @param acOutputPhaseBCVoltage - phase BC voltage value to be set
     */
    public void setAcOutputPhaseBCVoltage(double acOutputPhaseBCVoltage) {
        this.acOutputPhaseBCVoltage = acOutputPhaseBCVoltage;
    }

    /**
     *
     * @return returns phase CA voltage
     */
    public double getAcOutputPhaseCAVoltage() {
        return acOutputPhaseCAVoltage;
    }

    /**
     *
     * @param acOutputPhaseCAVoltage - phase CA voltage value to be set
     */
    public void setAcOutputPhaseCAVoltage(double acOutputPhaseCAVoltage) {
        this.acOutputPhaseCAVoltage = acOutputPhaseCAVoltage;
    }

}
