/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import model.categoria.Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.categoria.CategoriaNegocio;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author diego
 */
public class ListarClientesServlet extends HttpServlet {

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
        String nome = (String) request.getParameter("nome");
  
        CategoriaNegocio categoriaNegocio = new CategoriaNegocio();
        List<Categoria> categorias = categoriaNegocio.listar();
       
        PrintWriter out = response.getWriter();
        JSONArray messages = new JSONArray();

        for(Categoria categoria : categorias) {
            JSONObject obj = new JSONObject();
            obj.put("descricao", categoria.getDescricao());
            messages.add(obj);
        }
        
        out.print(messages);
        
   }
    
}
