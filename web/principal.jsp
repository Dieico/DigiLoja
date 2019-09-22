<%-- 
    Document   : principal
    Created on : 16/09/2019, 15:16:08
    Author     : leoomoreira
--%>
<%@page import="model.cliente.Cliente"%>
<%
    Cliente cliente = (Cliente) session.getAttribute("cliente");
    if (cliente != null) {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Inicial</title>
    </head>
    <body>
        <h1>Olá, <%= cliente.getLogin() %></h1>
        <div><a href="Logout">Sair</a></div>
    </body>
</html>
<% } else {
        request.setAttribute("mensagem", "Sua sessão está inválida");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>