package bdconexion;

import java.sql.DriverManager;
import java.sql.Connection;

public class conexion {

private static Connection c;
    
    static {
        conexion.c = null;
    }
    
    public static Connection getConnection() {
        if (conexion.c != null) {
            return conexion.c;
        }
        try {
            final String driver = "org.postgresql.Driver";
            final String url = "jdbc:postgresql://localhost:5433/SistemaHotel";
            final String user = "postgres";
            final String password = "uacm123";
            Class.forName(driver);
            conexion.c = DriverManager.getConnection(url, user, password);
        }
        catch (Exception e) {
            System.out.print(e);
        }
        return conexion.c;
    }
}
