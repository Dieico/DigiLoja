/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.cliente;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.produto.Produto;
import model.produto.ProdutoDAO;

/**
 *
 * @author aluno
 */
public class BuscaInicialServlet extends HttpServlet {

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
        String busca = (String) request.getParameter("busca");
        System.out.println(busca);
        try {
            int page = Integer.parseInt( request.getParameter("page") );
            if( busca == null || busca.trim().length() == 0 )
                busca = "";
            
            System.out.println(page);
            ProdutoDAO dao = new ProdutoDAO();
            List<Produto> produtos = dao.listar(busca, page);
            System.out.println(produtos);
            request.setAttribute("produtos", produtos);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        catch(Exception ex){
            int page = 1;
            if( busca == null || busca.trim().length() == 0 )
                busca = "";
                
            System.out.println(page);
            ProdutoDAO dao = new ProdutoDAO();
            List<Produto> produtos = dao.listar(busca, page);
            System.out.println(produtos);
            request.setAttribute("produtos", produtos);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

}
