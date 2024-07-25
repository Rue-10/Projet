/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package location;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
/**
 *
 * @author HP
 */
public class connecte {
    Connection con;
    public connecte(){
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/location","root","");
          // JOptionPane.showMessageDialog(null, "Connection etablie");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Echec de Connection a la BDD"+e);
        }
    }
    
}
