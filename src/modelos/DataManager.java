package modelos;

import java.sql.*;
import java.util.*;

public class DataManager extends DataBase {
    
    private Connection conexion;
    private Statement consulta;
    private ResultSet resultados;
    
    public DataManager(){
        super();
        this.conexion = super.getConexion();
    }
    
    public void ejecutarConsulta(String sql) throws SQLException{
        
        this.conexion = super.getConexion();
        consulta = conexion.createStatement();
        consulta.execute(sql);
       
    }
    
    public ResultSet obtenerDatos(String sql) throws SQLException {
        
        this.consulta = conexion.createStatement();
        this.resultados = consulta.executeQuery(sql);
        return this.resultados;
    }
    
    public List<Object> resultado(String sql) throws SQLException {
        List<Object> retorno = new ArrayList<>();
        this.consulta = this.conexion.createStatement();
        this.resultados = this.consulta.executeQuery(sql);
        if (this.resultados.next()){
            for (int i = 1; i <= this.resultados.getMetaData().getColumnCount(); i++){
                retorno.add(this.resultados.getObject(i));
            }
        }
        return retorno;
    }

}
