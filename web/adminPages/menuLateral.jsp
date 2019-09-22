<%-- 
    Document   : menuLateral
    Created on : 18/09/2019, 17:41:50
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Content Row -->

<!-- Sidebar Column -->

<h5 class="card-header">Dados pessoais</h5>                    
<div class="list-group">
    <a href="/DigiLoja/admin.jsp" class="list-group-item">Visualisar Meus Dados</a>
    <a href="/DigiLoja/adminPages/dados/alterarDados.jsp" class="list-group-item">Alterar Meus Dados</a>    
    
    <a href="/DigiLoja/adminPages/dados/dadosCliente.jsp" class="list-group-item">Dados dos Clientes</a>
</div>
<div class="list-group">
    <h5 class="card-header">Opções de Vendas</h5>
    <div class="list-group">
        <a href="/DigiLoja/adminPages/vendas/compraClientes.jsp" class="list-group-item">Compras dos Clientes</a>
        <a href="/DigiLoja/adminPages/vendas/compraPorCliente.jsp" class="list-group-item">Compras por Cliente</a>
        <a href="/DigiLoja/adminPages/vendas/arrecadacao.jsp" class="list-group-item">Arrecadação por Dia</a>
    </div>
</div>
<div class="list-group">
    <h5 class="card-header">Categoria</h5>
    <div class="list-group">
        <a href="/DigiLoja/adminPages/categoria/addCategoria.jsp" class="list-group-item">Adicionar categorias</a>
        <a href="/DigiLoja/adminPages/categoria/gerenciarCategoria.jsp" class="list-group-item">Gerenciar categorias</a>
    </div>
</div>
<div class="list-group">
    <h5 class="card-header">Produto</h5>
    <div class="list-group">
        <a href="/DigiLoja/adminPages/produto/addProduto.jsp" class="list-group-item">Adicionar Produtos</a>
        <a href="/DigiLoja/adminPages/produto/gerenciarProduto.jsp" class="list-group-item">Gerenciar Produtos</a>
        <a href="/DigiLoja/adminPages/produto/esgotadoProduto.jsp" class="list-group-item">Produtos Esgotados</a>
    </div>
</div>

