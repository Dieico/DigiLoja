<%-- 
    Document   : nav
    Created on : 18/09/2019, 14:04:29
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Vila dos Digiovos</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item">
                    <a class="nav-link" href="/DigiLoja/login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/DigiLoja/register.jsp">Cadastro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/DigiLoja/sacola.jsp">Sacola de Compras</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/DigiLoja/perfilPages/perfil.jsp">Perfil</a>
                </li>                
                <li class="nav-item">
                    <a class="nav-link" href="/DigiLoja/admin.jsp">Administração</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
