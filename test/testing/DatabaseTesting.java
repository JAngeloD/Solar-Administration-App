/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testing;

import dbutil.FacilityDB;
import java.util.List;
import models.Facility_1;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author 856622
 */
public class DatabaseTesting {
    
    @Test
    public void fetchFacility() {
        FacilityDB facdb = new FacilityDB();
        try {
            List<Facility_1> facility = facdb.getAll();
            
            for(int i = 0; i < facility.size(); i++) {
                System.out.println(facility.get(i).toString());
            }
            
        }
        catch(Exception e) {
            System.out.println(e.toString());
        }
    }
    
}
