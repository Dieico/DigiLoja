/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.cliente;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.cliente.Cliente;
import model.cliente.ClienteModel;

/**
 *
 * @author diego
 */
public class ClientePerfilServlet extends HttpServlet {

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
        ClienteModel clienteGet = new ClienteModel();
        int id = Integer.parseInt( request.getParameter("id") );
        
        Cliente cliente = clienteGet.showPerfil(id);
        request.setAttribute("cliente", cliente);
        request.getRequestDispatcher("/perfilPages/perfil.jsp").forward(request, response);
    }

    

}
