package services;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 * Service to send emails using a Gmail account
 * @author hazco
 */
public class GmailService {
    
    /**
     * Creates the email body from a template
     * @param to email recepient
     * @param subject email subject
     * @param template template stored in emailtemplates folder located in WEB-INF
     * @param tags tags for hashmap
     * @throws Exception 
     */
    public static void sendMail(String to, String subject, String template, HashMap<String, String> tags) throws Exception {
        //takes a template instead of the body. The templates are located in WEB-INF --> emailtempleates --> a html file
        //takes a HashMap object
        // {{firstname}} -> Anne   definition of the placeholder with a value
        // {{date}} -> Oct. 28
        String body = "";
        try {
            // read whole template into a single variable (body)
            BufferedReader br = new BufferedReader(new FileReader(new File(template)));

            String line = br.readLine();
            while (line != null) {
                body += line;
                line = br.readLine();
            }

            // replace all {{variable}} with the actual values
            for (String key : tags.keySet()) {
                body = body.replace("{{" + key + "}}", tags.get(key));
            }

        } catch (Exception e) {
            Logger.getLogger(GmailService.class.getName()).log(Level.SEVERE, null, e);
        }

        sendMail(to, subject, body, true);
    }

    /**
     * Connects to gmail account and sends the email
     * @param to email recepient
     * @param subject email subject
     * @param body body of the email
     * @param bodyIsHTML true when the body is HTML
     * @throws MessagingException 
     * @throws NamingException 
     */
    public static void sendMail(String to, String subject, String body, boolean bodyIsHTML) throws MessagingException, NamingException {
        Context env = (Context) new InitialContext().lookup("java:comp/env");    //Object to read from the web.xml file where we have stored username and password as env-entry 
        String username = (String) env.lookup("webmail-username");    
        String password = (String) env.lookup("webmail-password");

        Properties props = new Properties();                    //Create Properties object
        props.put("mail.transport.protocol", "smtps");          //set properties i the property object using put(propertyName, value)
        props.put("mail.smtps.host", "smtp.gmail.com");
        props.put("mail.smtps.port", 465);
        props.put("mail.smtps.auth", "true");                   //true: need to login to send messages
        props.put("mail.smtps.quitwait", "false");              //to prevent ssl exceptions from gmail
        Session session = Session.getDefaultInstance(props);
        session.setDebug(true);                                 //set to false when used in a production environment

        // create a message
        Message message = new MimeMessage(session);             //create a new message onject using Mime class
        message.setSubject(subject);                            //set the subject of the message
        if (bodyIsHTML) {                                       //set body to content or text only
            message.setContent(body, "text/html");
        } else {
            message.setText(body);
        }

        // address the message
        Address fromAddress = new InternetAddress(username);    //set addresses first create the Address object using InternetAddress("someone@site.ca") which is the user sending the message
        Address toAddress = new InternetAddress(to);
        message.setFrom(fromAddress);
        message.setRecipient(Message.RecipientType.TO, toAddress);  //setting the recipeint uses Message.recipientType.TO but could be CC and BCC as well

        // send the message
        Transport transport = session.getTransport();
        transport.connect(username, password);          //connect to the server, passes username and password for the sending account. Do not hard code the credentials but store them as anvironment variables located in the web.xml as <env-entry>
        transport.sendMessage(message, message.getAllRecipients()); //send the message
        transport.close();                              //close resources
    }
}
