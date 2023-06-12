package bdconexion;

import java.sql.DriverManager;
import java.sql.Connection;

public class conexion {

public static Connection c;
    
    static {
        conexion.c = null;
    }
    
    public static Connection getConnection() {
        if (conexion.c != null) {
            return conexion.c;
        }
        try {
             String driver = "org.postgresql.Driver";
             String url = "jdbc:postgresql://localhost:5433/SistemaHotel";
             String user = "postgres";
             String password = "uacm123";
            Class.forName(driver);
            conexion.c = DriverManager.getConnection(url, user, password);
        }
        catch (Exception e) {
            System.out.print(e);
        }
        return conexion.c;
    }
}
