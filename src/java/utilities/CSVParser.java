package utilities;

import com.opencsv.CSVWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import services.DBAccess;

// todo: implement into a servlet, grab the contents from the database and call writeToCSV
public class CSVParser {

    /**
     * Writes content to a CSV file
     *
     * @param list Takes in a list of String arrays, each string array representing a single line in the CSV
     * @param fileName Output of the file for the user to download
     * @return true if operation was successful, false otherwise
     */
    public static boolean writeToCSV(ArrayList<String[]> list, String filePath, String fileName) {
        // todo: consult with group to see if file naming matters, if not, just randomly generate a file name to avoid duplicates and sanitizing
        try {
            // "web\\resources\\fileName.csv"
            FileWriter outputFile = new FileWriter(new File(String.format(filePath + "%s.csv", fileName)));
            try (CSVWriter writer = new CSVWriter(outputFile)) {
                writer.writeAll(list);
            }
            return true;
        } catch (IOException ex) {
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

        ArrayList<String[]> CSVList = new ArrayList<>(); //The entire CSV will be placed here and pushed at the end
        try {
            //Gets dbaccess and a list of its models
            DBAccess db = new DBAccess();
            Method[] models = db.getClass().getDeclaredMethods();

            String previousModel = "";
            int previousDevice = -1;

            ArrayList<String> labelLine = new ArrayList<>(); //
            ArrayList<String> dataLine = new ArrayList<>();
            ArrayList<String[]> dataLines = new ArrayList<>(); //2
            for (String get : getterMethods) {

                //Splits the getterMethod String into 3 different parts: modelName and request attribute
                String modelName = get.substring(0, get.indexOf("_"));
                String attribute = get.substring(get.lastIndexOf("_") + 1);
                String timestamp = "4192"; //TEMPORARY

                //Retrieves the data from the DB 
                String data = "";
                for (Method m : models) {
                    if (m.getName().equals(modelName + "Get")) {
                        Object[] args = {attribute, timestamp};
                        data = String.valueOf(m.invoke(db, args));
                    }
                }

                //If a change has occured in device numbers. Push into complete dataline array
                String deviceNum = attribute.replaceAll("[^\\d]", "");
                if (!deviceNum.equals("") && Integer.parseInt(deviceNum) != previousDevice) {
                    dataLines.add(convertListToArray(dataLine));
                    dataLine.clear();
                    
                    //Fills dataLine
                    for(int i = 0; i < labelLine.size(); i++) {
                        dataLine.add("");
                    }
                    
                }

                //If the type of model has changed push into the final CSV and resets the 3 buffer arrays.
                if (!previousModel.equals("") && !modelName.equals(previousModel)) {
                    System.out.println("GAY");
                    dataLines.add(convertListToArray(dataLine)); //Flushes out any remaining lines into the full line

                    CSVList.add(convertListToArray(labelLine)); //Label goes in first
                    for (int i = 0; i < dataLines.size(); i++) {
                        CSVList.add(dataLines.get(i));
                    }

                    labelLine.clear();
                    dataLine.clear();
                    dataLines.clear();
                    previousModel = "";
                    previousDevice = -1;
                }

                //Checks if label exists. If it does place it on the same index in the data line. If it doesn't add a new one and append
                attribute = attribute.replaceAll("\\d", "");
                int index = labelLine.indexOf(attribute);
                if (index > 0) {
                    dataLine.add(index, data);
                } else {
                    labelLine.add(attribute);
                    dataLine.add(labelLine.size() - 1, data);
                }

                previousModel = modelName;
                previousDevice = (deviceNum.equals("")) ? -1 : Integer.parseInt(deviceNum);
            }

            dataLines.add(convertListToArray(dataLine)); //Flushes out any remaining lines into the full line
            CSVList.add(convertListToArray(labelLine)); //Label goes in first
            for (int i = 0; i < dataLines.size(); i++) {
                CSVList.add(dataLines.get(i));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return CSVList;
    }

    private static String[] convertListToArray(ArrayList<String> list) {

        String[] array = new String[list.size()];
        for (int i = 0; i < array.length; i++) {
            array[i] = list.get(i);
        }

        return array;
    }

}
