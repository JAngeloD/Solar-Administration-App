package utilities;

import com.opencsv.CSVWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

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
     * @param options - 
     * @return 
     */
    private static ArrayList<String[]> getData(String[] options) {
        
        
        
        return null;
    }
}