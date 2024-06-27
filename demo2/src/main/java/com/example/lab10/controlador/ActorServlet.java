package com.example.lab10.controlador;

import com.example.lab10.dao.DaoJugador;
import com.example.lab10.entidad.Jugador;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "actor-servlet", value = "/listaActores")
public class ActorServlet extends HttpServlet {

    /*public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        int idPelicula = Integer.parseInt(request.getParameter("idPelicula"));
        DaoJugador daoJugador = new DaoJugador();
        ArrayList<Jugador> listaActores = actorDao.listarActores(idPelicula);
        request.setAttribute("listaActores", listaActores);

        peliculaDao peliculaDao = new peliculaDao();
        ArrayList<Jugador> listarjugadores = peliculaDao.listarjugadores();
        Jugador jugador = (jugador) listarjugadores.get(idPelicula-1);
        request.setAttribute("lista", jugador);

        RequestDispatcher view = request.getRequestDispatcher("actores.jsp");
        view.forward(request,response);
    }*/
}
