package itp_library;

import com.mysql.cj.xdevapi.Result;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import javax.swing.JOptionPane;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
    private static Connection conn;
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String user = "c2110488_PrIspc";
    private static final String pass = "98movadoDO";
    private static final String db = "c2110488_PrIspc";
    private static final String url = "jdbc:mysql://168.197.48.110:3306/"+db+"";
    
//         this.URL = "jdbc:mysql://168.197.48.110:3306/c2110488_PrIspc";
//        this.USER = "c2110488_PrIspc";
//        this.CLAVE = "98movadoDO";   
    
//    private static final String driver = "com.mysql.jdbc.Driver";
//    private static final String user = "root";
//    private static final String pass = "";
//    private static final String db = "library";
//    private static final String url = "jdbc:mysql://localhost:3306/"+db+"";    
    
    public Connect(){
        conn = null;
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, pass);
            
            // Connect?
            if(conn != null)
                System.out.println("Conexión establecida exitosamente");
        }catch (ClassNotFoundException | SQLException ex){
            System.out.println("Conexión Fallida:\n\n"+ex);
        }
    }
    
    public Connection getConnection(){
        return conn;
    }
}
