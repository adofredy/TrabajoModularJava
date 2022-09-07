package controladores;

import java.sql.*;
import javax.swing.table.DefaultTableModel;
import modelos.DataManager;

public class FormularioCompraController {
    
    public void crearDetalleProducto(String... datos) throws SQLException{
        DataManager manejador = new DataManager();
        String sql = String.format("INSERT INTO detalleProducto("
                + "codigo,nombre,cantidad,precio_venta,fecha_venta" 
                + ") VALUES('%s', '%s', %s, %s,'%s')", datos);
        manejador.ejecutarConsulta(sql);
    }
    
}
