/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Imc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author alunoinf
 */
@WebServlet("/imcMVC")
public class Controller extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String peso1 = req.getParameter("peso");
      
        String altura1 = req.getParameter("altura");
     
        String sexo = req.getParameter("sexo");
        
        Float peso = Float.parseFloat(peso1);
        Float altura = Float.parseFloat(altura1);
        
        Model resposta = new Model();
        String resultado = resposta.calcular(peso, altura, sexo);
        req.setAttribute("resultado", resultado);
        req.getRequestDispatcher("View.jsp").forward(req, resp);
    }
}
