package com.mycompany.web.models;
import com.mycompany.web.models.Orador;

import java.sql.*;
import java.time.temporal.TemporalAccessor;
import java.util.ArrayList;
import java.util.List;



public class AccionesOrador {
//insertar registro
public static int registrar_orador(Orador o){
    int estado = 0;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/oradores", CredencialesBDD.usuario(),CredencialesBDD.contraseña());

        String query = "INSERT INTO orador(nombre,apellido,contacto,tema) VALUES (?,?,?,?)";

        
        String nombre = o.get_nombre();
        String apellido = o.get_apellido();
        String contacto = o.get_contacto();
        String tema = o.get_tema();

        PreparedStatement pst = conexion.prepareStatement(query);
        
        pst.setString(1, nombre);
        pst.setString(2, apellido);
        pst.setString(3, contacto);
        pst.setString(4, tema);

        estado = pst.executeUpdate();

        conexion.close();


    } catch (Exception e){
        System.out.println("excepcion: " + e);
    }

    return estado;
}

//actualizar registro

public static int actualizar_orador(Orador o){
    int estado = 0;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/oradores", CredencialesBDD.usuario(),CredencialesBDD.contraseña());

        String query = "UPDATE cliente SET nombre=?,apellido=?,contacto=?,tema=? WHERE id=?";

        int id = o.get_id();
        String nombre = o.get_nombre();
        String apellido = o.get_apellido();
        String contacto = o.get_contacto();
        String tema = o.get_tema();

        PreparedStatement pst = conexion.prepareStatement(query);
        
        pst.setString(1, nombre);
        pst.setString(2, apellido);
        pst.setString(3, contacto);
        pst.setString(4, tema);
        pst.setInt(5, id);

        estado = pst.executeUpdate();

        conexion.close();


    } catch (Exception e){
        System.out.println("excepcion: " + e);
    }

    return estado;
}

//consultar registro por id

public static Orador obtener_datos_id(int id_a_consultar){
    Orador orador_a_devolver = new Orador();

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/oradores", CredencialesBDD.usuario(),CredencialesBDD.contraseña());

        String query = "SELECT id,nombre,apellido,contacto,tema FROM orador WHERE id=?";

        PreparedStatement pst = conexion.prepareStatement(query);
        
        pst.setInt(1, id_a_consultar);

        ResultSet consulta_orador = pst.executeQuery();

        if (consulta_orador.next()){
            orador_a_devolver.set_id(consulta_orador.getInt(1));
            orador_a_devolver.set_nombre(consulta_orador.getString(2));
            orador_a_devolver.set_apellido(consulta_orador.getString(3));
            orador_a_devolver.set_contacto(consulta_orador.getString(4));
            orador_a_devolver.set_tema(consulta_orador.getString(5));
            conexion.close();
        }
    } catch (Exception e){
        System.out.println("excepcion: " + e);
    }

    return orador_a_devolver;
}    

//consultar todos los registros de una tabla

public static List<Orador> obtener_todos_los_oradores(){
    List<Orador> lista_oradores_a_devolver = new ArrayList<Orador>();
    

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/oradores", CredencialesBDD.usuario(),CredencialesBDD.contraseña());

        String query = "SELECT id,nombre,apellido,contacto,tema FROM orador";

        PreparedStatement pst = conexion.prepareStatement(query);

        ResultSet oradores = pst.executeQuery();

        while (oradores.next()){
            Orador orador_a_devolver = new Orador(); //EN CADA VUELTA NECESITAREMOS INSTANCIAR UN NUEVO OBJETO
            orador_a_devolver.set_id(oradores.getInt(1));
            orador_a_devolver.set_nombre(oradores.getString(2));
            orador_a_devolver.set_apellido(oradores.getString(3));
            orador_a_devolver.set_contacto(oradores.getString(4));
            orador_a_devolver.set_tema(oradores.getString(5));
            lista_oradores_a_devolver.add(orador_a_devolver);
        }
        conexion.close();
    } catch (Exception e){
        System.out.println("excepcion: " + e);
    }

    return lista_oradores_a_devolver;
} 
    
}
