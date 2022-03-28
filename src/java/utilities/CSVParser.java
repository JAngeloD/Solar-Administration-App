package utilities;

import com.opencsv.CSVWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import services.DBAccess;

// todo: implement into a servlet, grab the contents from the database and call writeToCSV
public class CSVParser
{
    /**
     * Writes content to a CSV file
     * @param list Takes in a list of String arrays, each string array representing a single line in the CSV
     * @param fileName Output of the file for the user to download
     * @return true if operation was successful, false otherwise
     */
    public boolean writeToCSV( ArrayList<String[]> list, String fileName )
    {   
        // todo: consult with group to see if file naming matters, if not, just randomly generate a file name to avoid duplicates and sanitizing
        try
        {
            // "web\\resources\\fileName.csv"
            FileWriter outputFile = new FileWriter( new File( String.format( "web\\resources\\%s.csv", fileName ) ) );
            try (CSVWriter writer = new CSVWriter( outputFile ))
            {
                writer.writeAll( list );
            }
            return true;
        }
        catch( IOException ex )
        {
            ex.printStackTrace();
        }

        return false;
    }
    
    /**
     * 
     * @param getterMethods - 
     * @return 
     */
    public static ArrayList<String[]> getData(String[] getterMethods) {
        
        ArrayList<String[]> CSVList = new ArrayList<>();
        try {
            DBAccess db = new DBAccess();
            Method[] models = db.getClass().getDeclaredMethods();
            
            int line = 0;
            String currentModel = "";
            int currentSubModel = 0;
            
            ArrayList<String> labelLine = new ArrayList<>(); //
            ArrayList<String> dataLine = new ArrayList<>(); //2
            for (String get : getterMethods) {
                
                //Splits the getterMethod String into 3 different parts: modelName, operation (get), and request attribute
                String modelName = get.substring(0, get.indexOf("_"));
                String operation = get.substring(get.indexOf("_") + 1, get.lastIndexOf("_"));
                String attribute = get.substring(get.lastIndexOf("_") + 1);
                String timestamp = "4192"; //TEMPORARY

                //Retrieves the data from the DB 
                String data = "";
                for (Method m : models) {
                    if (m.getName().equals(modelName + operation)) {
                        Object[] args = {attribute, timestamp};
                        data = String.valueOf(m.invoke(db, args));
                    }
                }
                
                //
                if(true) {
                    
                }
                
                //Checks if label exists. If it does place it on the same index in the data line. If it doesn't add a new one and append
                attribute = attribute.replaceAll("\\d","");
                int index = labelLine.indexOf(attribute);
                if(index > 0) {
                    dataLine.add(index, data);
                }
                else {
                    labelLine.add(attribute);
                    dataLine.add(data);
                }
                
                currentModel = modelName;
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        
        return null;
    }
}