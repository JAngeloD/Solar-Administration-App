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
public class Inverter {

    /**
     * the variables used to store the inverters' hardware and efficiency data.
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
    private double dcRealPower;
    private double dcVolts;
    private double dcCurrent;
    private double efficiency;

    /**
     * Empty constructor that initializes all variables in this class.
     */
    public Inverter() {
        this.acOutputLifeTimeEnergy = 0;
        this.acOutputYearToDateEnergy = 0;
        this.acOutputMonthToDateEnergy = 0;
        this.acOutputDailyEnergy = 0;
        this.acOutputRealPower = 0;
        this.acOutputApparentPower = 0;
        this.acOutputReactivePower = 0;
        this.acOutputPowerFactor = 0;
        this.acOutputPhaseACurrent = 0;
        this.acOutputPhaseBCurrent = 0;
        this.acOutputPhaseCCurrent = 0;
        this.acOutputPhaseABVoltage = 0;
        this.acOutputPhaseBCVoltage = 0;
        this.acOutputPhaseCAVoltage = 0;
        this.dcRealPower = 0;
        this.dcVolts = 0;
        this.dcCurrent = 0;
        this.efficiency = 0;
    }

    /**
     * @return - All AC energy outputed to date.
     */
    public double getAcOutputLifeTimeEnergy() {
        return acOutputLifeTimeEnergy;
    }

    /**
     * @param acOutputLifeTimeEnergy - the value of the AC energy outputed to
     * date to be set.
     */
    public void setAcOutputLifeTimeEnergy(double acOutputLifeTimeEnergy) {
        this.acOutputLifeTimeEnergy = acOutputLifeTimeEnergy;
    }

    /**
     * @return - All AC energy outputed in the past year
     */
    public double getAcOutputYearToDateEnergy() {
        return acOutputYearToDateEnergy;
    }

    /**
     * @param acOutputYearToDateEnergy - the value of the AC energy outputed in
     * the past year to be set.
     */
    public void setAcOutputYearToDateEnergy(double acOutputYearToDateEnergy) {
        this.acOutputYearToDateEnergy = acOutputYearToDateEnergy;
    }

    /**
     * @return - the value of the AC energy outputed in the last month
     */
    public double getAcOutputMonthToDateEnergy() {
        return acOutputMonthToDateEnergy;
    }

    /**
     * @param acOutputMonthToDateEnergy - the value of the AC energy outputed in
     * the last month to be set.
     */
    public void setAcOutputMonthToDateEnergy(double acOutputMonthToDateEnergy) {
        this.acOutputMonthToDateEnergy = acOutputMonthToDateEnergy;
    }

    /**
     * @return - the daily AC energy output
     */
    public double getAcOutputDailyEnergy() {
        return acOutputDailyEnergy;
    }

    /**
     * @param acOutputDailyEnergy - the value of the daily AC energy output to
     * be set.
     */
    public void setAcOutputDailyEnergy(double acOutputDailyEnergy) {
        this.acOutputDailyEnergy = acOutputDailyEnergy;
    }

    /**
     * @return the real AC power output
     */
    public double getAcOutputRealPower() {
        return acOutputRealPower;
    }

    /**
     * @param acOutputRealPower - the value of the real AC power outputto be
     * set.
     */
    public void setAcOutputRealPower(double acOutputRealPower) {
        this.acOutputRealPower = acOutputRealPower;
    }

    /**
     * @return - the apparent AC power output.
     */
    public double getAcOutputApparentPower() {
        return acOutputApparentPower;
    }

    /**
     * @param acOutputApparentPower - the value of the apparent AC power output
     * to be set.
     */
    public void setAcOutputApparentPower(double acOutputApparentPower) {
        this.acOutputApparentPower = acOutputApparentPower;
    }

    /**
     * @return the reactive AC reactive power.
     */
    public double getAcOutputReactivePower() {
        return acOutputReactivePower;
    }

    /**
     * @param acOutputReactivePower - the value of the reactive AC reactive
     * power to be set.
     */
    public void setAcOutputReactivePower(double acOutputReactivePower) {
        this.acOutputReactivePower = acOutputReactivePower;
    }

    /**
     * @return the Power factor of the AC output.
     */
    public double getAcOutputPowerFactor() {
        return acOutputPowerFactor;
    }

    /**
     * @param acOutputPowerFactor - the value of the Power factor of the AC
     * output to be set.
     */
    public void setAcOutputPowerFactor(double acOutputPowerFactor) {
        this.acOutputPowerFactor = acOutputPowerFactor;
    }

    /**
     * @return the Phase A current of the AC output.
     */
    public double getAcOutputPhaseACurrent() {
        return acOutputPhaseACurrent;
    }

    /**
     * @param acOutputPhaseACurrent - the value of the Phase A current of the AC
     * output to be set.
     */
    public void setAcOutputPhaseACurrent(double acOutputPhaseACurrent) {
        this.acOutputPhaseACurrent = acOutputPhaseACurrent;
    }

    /**
     * @return the Phase B current of the AC output
     */
    public double getAcOutputPhaseBCurrent() {
        return acOutputPhaseBCurrent;
    }

    /**
     * @param acOutputPhaseBCurrent -the value of the Phase B current of the AC
     * output to be set.
     */
    public void setAcOutputPhaseBCurrent(double acOutputPhaseBCurrent) {
        this.acOutputPhaseBCurrent = acOutputPhaseBCurrent;
    }

    /**
     * @return the Phase C current of the AC output
     */
    public double getAcOutputPhaseCCurrent() {
        return acOutputPhaseCCurrent;
    }

    /**
     * @param acOutputPhaseCCurrent - the value of the Phase C current of the AC
     * output to be set.
     */
    public void setAcOutputPhaseCCurrent(double acOutputPhaseCCurrent) {
        this.acOutputPhaseCCurrent = acOutputPhaseCCurrent;
    }

    /**
     * @return the Phase AB voltage of the AC output.
     */
    public double getAcOutputPhaseABVoltage() {
        return acOutputPhaseABVoltage;
    }

    /**
     * @param acOutputPhaseABVoltage - the value of the Phase AB voltage of the
     * AC output to be set.
     */
    public void setAcOutputPhaseABVoltage(double acOutputPhaseABVoltage) {
        this.acOutputPhaseABVoltage = acOutputPhaseABVoltage;
    }

    /**
     * @return the Phase BC voltage of the AC output.
     */
    public double getAcOutputPhaseBCVoltage() {
        return acOutputPhaseBCVoltage;
    }

    /**
     * @param acOutputPhaseBCVoltage - the value of the Phase BC voltage of the
     * AC output to be set.
     */
    public void setAcOutputPhaseBCVoltage(double acOutputPhaseBCVoltage) {
        this.acOutputPhaseBCVoltage = acOutputPhaseBCVoltage;
    }

    /**
     * @return the Phase CA voltage of the AC output.
     */
    public double getAcOutputPhaseCAVoltage() {
        return acOutputPhaseCAVoltage;
    }

    /**
     * @param acOutputPhaseCAVoltage - the value of the Phase CA voltage of the
     * AC output to be set.
     */
    public void setAcOutputPhaseCAVoltage(double acOutputPhaseCAVoltage) {
        this.acOutputPhaseCAVoltage = acOutputPhaseCAVoltage;
    }

    /**
     * @return the Real DC power
     */
    public double getDcRealPower() {
        return dcRealPower;
    }

    /**
     * @param dcRealPower - the value of the real DC power to be set.
     */
    public void setDcRealPower(double dcRealPower) {
        this.dcRealPower = dcRealPower;
    }

    /**
     * @return amount of DC volts
     */
    public double getDcVolts() {
        return dcVolts;
    }

    /**
     * @param dcVolts - the value of the amount of DC volts produced to be set.
     */
    public void setDcVolts(double dcVolts) {
        this.dcVolts = dcVolts;
    }

    /**
     * @return the amount of DC current produced
     */
    public double getDcCurrent() {
        return dcCurrent;
    }

    /**
     * @param dcCurrent - the value of the amount of DC current produced to be
     * set.
     */
    public void setDcCurrent(double dcCurrent) {
        this.dcCurrent = dcCurrent;
    }

    /**
     * @return the efficiency of the facility as percentage
     */
    public double getEfficiency() {

        return efficiency;
    }

    /**
     * @param efficiency the value of the efficiency to be set.
     */
    public void setEfficiency(double efficiency) {
        this.efficiency = efficiency;
    }

    /**
     * calculates facility efficiency and records it as an efficiency attribute.
     */
    public void calculateEfficiency() {
        double result = 0;
        this.setEfficiency(result);
    }
}
