package com.example.lab10.dao;

import com.example.lab10.entidad.Jugador;

import java.sql.*;
import java.util.ArrayList;

public class DaoJugador {

    public static ArrayList<Jugador> listar(){

        ArrayList<Jugador> lista = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        String url = "jdbc:mysql://localhost:3306/lab7";
        String username = "root";
        String password = "root";

        String sql = "select idJugador, nombre, edad, posicion, club, sn_idSeleccion\n" +
                "from jugador;";


        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Jugador jugador = new Jugador();
                jugador.setIdJugador(rs.getInt(1));
                jugador.setNombre(rs.getString(2));
                jugador.setEdad(rs.getInt(3));
                jugador.setPosicion(rs.getString(4));
                jugador.setClub(rs.getString(5));
                jugador.setSeleccion(rs.getString(6));

                lista.add(jugador);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return lista;
    }

}
