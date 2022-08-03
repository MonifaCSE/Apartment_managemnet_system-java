
package Houserent;

import java.sql.DriverManager;
import java.sql.Connection;
/**
 *
 * @author user
 */
public class Myconnection {
     
      public static Connection getConnection(){
           Connection con = null;
         try {
             Class.forName("java.sql.DriverManager");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rent","root","");
            }   catch (Exception ex) {
                System.out.println(ex.getMessage());
      }      

      return con;      
}
      
}