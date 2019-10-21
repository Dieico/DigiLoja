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
import model.cliente.ClienteModel;

/**
 *
 * @author diego
 */
public class ClienteCadastrarServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // entrada
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String email = request.getParameter("email");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        // processamento
        ClienteModel clienteModel = new ClienteModel();
        boolean sucesso = clienteModel.inserir(nome, endereco, email, login, senha);
        // saída
        if (sucesso) {
            request.setAttribute("mensagem", "Cliente cadastrado com sucesso");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        } else {
            request.setAttribute("mensagem", "Não foi possível cadastrar este cliente");
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }

}
