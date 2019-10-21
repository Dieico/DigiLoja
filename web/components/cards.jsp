<%-- 
    Document   : cards
    Created on : 18/09/2019, 15:10:42
    Author     : aluno
--%>
<%@page import="model.produto.Produto"%>
<% String nome = (String) request.getParameter("nome"); %>
<% double preco = Double.parseDouble( request.getParameter("preco") ); %>
<% String descricao = (String) request.getParameter("descricao"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-4 mb-4">
    <div class="card h-100">
        <h4 class="card-header"><%= nome %></h4>
        <img class="card-img-top" src="http://placehold.it/700x450" alt="Card image cap">
        <div class="card-body">
            <p class="card-text"><%= descricao %></p>
            <a href="#" class="card-link">Data</a>
        </div>
        <div class="card-footer">
            <a href="#" class="btn alert-link-info disabled"><%= "R$ " + preco %></a>
            <a href="#" class="btn btn-primary">Comprar</a>
        </div>
    </div>
</div>
