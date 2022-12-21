package com.mycompany.web.servlets;

import java.io.IOException;

import com.mycompany.web.models.AccionesOrador;
import com.mycompany.web.models.Orador;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ver_orador")

public class MostrarServlet extends HttpServlet {
    @Override 
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        int id = Integer.parseInt(req.getParameter("buscar_id"));

        Orador registro = AccionesOrador.obtener_datos_id(id);

        req.setAttribute("o", registro);

        RequestDispatcher respuesta = req.getRequestDispatcher("/verID.jsp");
        respuesta.forward(req, resp);
    }
}
