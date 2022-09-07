package modelos;

import java.sql.*;
import java.util.*;
//manejador de Datos - DataManager 
public class DataManager extends DataBase {
    //hereda de la clase Database
    private Connection conexion;//atributo de puntero
    private Statement consulta;//para ejecutar una consulta a BD
    private ResultSet resultados;
    
    public DataManager(){
        super();//de encarga de admin los accesos a la BD segun un control
        this.conexion = super.getConexion();//genera la conexion
    }
    /*método para hacer insert a BD*/
    public void ejecutarConsulta(String sql) throws SQLException{
        //método recibe una consulta , recibe de parámetro una intruccion tipo sql
        this.conexion = super.getConexion();//atraves del super invoco al método de conectar
        consulta = conexion.createStatement();//creo una consulta para la conexion, y a la vez guarda el puntero conexion
        consulta.execute(sql);//ejecuta la consulta SQL
       
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
