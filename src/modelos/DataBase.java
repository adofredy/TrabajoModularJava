package modelos;

import java.sql.*;
import javax.swing.JOptionPane;

public class DataBase {
    private String url;
    private String driver;
    private Connection conexion;
    
    //para obtner la conexion con la BD se necesita una funcion Get
    protected Connection getConexion() {
        String url = "jdbc:sqlserver://DESKTOP-L2A352G:1433;databaseName=bdAbarrotes";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "No se puede establacer la conexion..revisar Driver" + e.getMessage(),
                   "Error de conexion", JOptionPane.ERROR_MESSAGE);
        }
        try {
            conexion = DriverManager.getConnection(url, "sa", "123");

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error" + e.getMessage(),
                    "Error de conexion", JOptionPane.ERROR_MESSAGE);
        }
        
        return conexion;
    }
}
