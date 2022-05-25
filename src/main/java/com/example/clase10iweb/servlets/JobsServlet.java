package com.example.clase10iweb.servlets;

import com.example.clase10iweb.beans.BJob;
import com.example.clase10iweb.daos.JobDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "JobsServlet", urlPatterns = {"/JobsServlet", "/trabajos", ""})
public class JobsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        JobDao jobDao = new JobDao();
        request.setAttribute("listaTrabajos",jobDao.listarTrabajos());
        request.setAttribute("saludo","un saludo para los conectados");

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("jobs/lista.jsp");
        requestDispatcher.forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
