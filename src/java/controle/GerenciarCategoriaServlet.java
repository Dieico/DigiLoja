/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import model.categoria.CategoriaDAO;
import model.categoria.CategoriaNegocio;
import model.categoria.Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aluno
 */
public class GerenciarCategoriaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoriaNegocio categoriaNegocio = new CategoriaNegocio();
        List<Categoria> categorias = categoriaNegocio.listar();
        request.setAttribute("categorias", categorias);
        request.getRequestDispatcher("/adminPages/categoria/gerenciarCategoria.jsp").forward(request, response);
    }
}
