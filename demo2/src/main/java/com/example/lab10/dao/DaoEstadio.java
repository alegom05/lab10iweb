package com.example.lab10.dao;

import com.example.lab10.entidad.Estadio;

import java.sql.*;
import java.util.ArrayList;

public class DaoEstadio {

    public static ArrayList<Estadio> listar(){

        ArrayList<Estadio> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        String url = "jdbc:mysql://localhost:3306/lab7";
        String username = "root";
        String password = "root";

        String sql = "select idEstadio, nombre, provincia, club\n" +
                "from estadio;";


        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Estadio estadio = new Estadio();
                estadio.setIdEstadio(rs.getInt(1));
                estadio.setNombre(rs.getString(2));
                estadio.setProvincia(rs.getString(3));
                estadio.setClub(rs.getString(4));

                lista.add(estadio);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }

}
