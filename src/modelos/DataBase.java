package modelos;

import java.sql.*;
import javax.swing.JOptionPane;

public class DataBase {
    private String url;
    private String driver;
    private Connection conexion;
    
    /*
    public DataBase(){
        this.driver = "jdbc:sqlserver";
        this.url = "DESKTOP-IICNPJO:1433;databaseName=bdAbarrotes";
    }
    
    protected void conectar() throws SQLException{
        this.conexion = DriverManager.getConnection(this.driver+":"+this.url);
        if (!this.conexion.isClosed())
            System.out.println("Conectado");
    }
    
    protected void cerrar() throws SQLException {
        if (!this.conexion.isClosed())
            this.conexion.close();
    }*/

    protected Connection getConexion() {
        String url = "jdbc:sqlserver://DESKTOP-IICNPJO:1433;databaseName=bdAbarrotes";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null, "No se puede establacer la conexion..revisar Drive" + e.getMessage(),
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
