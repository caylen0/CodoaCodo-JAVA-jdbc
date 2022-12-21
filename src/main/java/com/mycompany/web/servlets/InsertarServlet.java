package com.mycompany.web.servlets;

import com.mycompany.web.models.Orador;

import java.io.IOException;
import java.time.temporal.TemporalAccessor;

import com.mycompany.web.models.AccionesOrador ;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/nuevo_orador")
public class InsertarServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nombre , apellido, contacto,tema;

        nombre = req.getParameter("nombre");

        apellido = req.getParameter("apellido");

        contacto = req.getParameter("contacto");

        tema = req.getParameter("tema");

        Orador nuevo_orador = new Orador();

        nuevo_orador.set_nombre(nombre);
        nuevo_orador.set_apellido(apellido);
        nuevo_orador.set_contacto(contacto);
        nuevo_orador.set_tema(tema);

        System.out.println(nombre+apellido+contacto+tema);
        int estado = AccionesOrador.registrar_orador(nuevo_orador);

        if (estado == 1){
            resp.sendRedirect( "exito.jsp");
            System.out.println("todo ok");
        } else {
            System.out.print( estado);
            resp.sendRedirect("error.jsp");
        }



    }
}
