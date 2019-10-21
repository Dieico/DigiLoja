/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.categoria;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.categoria.CategoriaModel;

/**
 *
 * @author aluno
 */
public class createCategoriaservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String descricao = request.getParameter("descricao");
        CategoriaModel dao = new CategoriaModel();
        
        boolean sucesso = dao.inserir(descricao);
        
        if (sucesso) {
            request.setAttribute("mensagem", "Categoria cadastrada com sucesso");
            request.getRequestDispatcher("/adminPages/categoria/addCategoria.jsp").forward(request, response);
        } else {
            request.setAttribute("mensagem", "Não foi possível cadastrar essa categoria");
            request.getRequestDispatcher("/adminPages/categoria/addCategoria.jsp").forward(request, response);
        }
        
    }
}
