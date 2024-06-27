package com.example.lab10.controlador;

import com.example.lab10.dao.DaoEstadio;
import com.example.lab10.dao.DaoJugador;
import com.example.lab10.entidad.Estadio;
import com.example.lab10.entidad.Jugador;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "EstadioController", value = "/EstadioController")
public class EstadioController extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        String action = request.getParameter("action");
        DaoEstadio daoEstadio = new DaoEstadio();
        //listasDao listaDao = new listasDao();
        //ArrayList<genero> listaGeneros = listaDao.listarGeneros();
        //ArrayList<streaming> listaStreaming = listaDao.listarStraming();

        switch (action) {
            case "listar":

                ArrayList<Estadio> listaPeliculas = daoEstadio.listar();
                request.setAttribute("lista", listaPeliculas);

                RequestDispatcher view = request.getRequestDispatcher("/estadio/list.jsp");
                view.forward(request,response);
                break;

            case "borrar":

                response.sendRedirect(request.getContextPath()+"/listaPeliculas?action=listar");
                break;

        }
    }

    /*public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        String action = request.getParameter("action");
        peliculaDao peliculaDao = new peliculaDao();
        //listasDao listaDao = new listasDao();
        //ArrayList<genero> listaGeneros = listaDao.listarGeneros();
        //ArrayList<streaming> listaStreaming = listaDao.listarStraming();

        switch (action) {


            case "filtrar":

                RequestDispatcher viewFiltro = request.getRequestDispatcher("listaPeliculas.jsp");
                viewFiltro.forward(request, response);
                break;

            case "editar":


                int idPelicula = Integer.parseInt(request.getParameter("idPelicula"));
                String titulo = request.getParameter("titulo");
                String director = request.getParameter("director");
                int anoPublicacion = Integer.parseInt(request.getParameter("anoPublicacion"));
                double rating = Double.parseDouble(request.getParameter("rating"));
                double boxOffice = Double.parseDouble(request.getParameter("boxOffice"));
                String genero = request.getParameter("genero");

                peliculaDao.editarPelicula(idPelicula, titulo, director, anoPublicacion, rating, boxOffice);
                response.sendRedirect(request.getContextPath() + "/listaPeliculas?action=listar");
                break;


        }
    }*/
}
