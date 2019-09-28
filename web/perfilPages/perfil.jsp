<%-- 
    Document   : perfil
    Created on : 22/09/2019, 16:08:14
    Author     : diego
--%>

<%@page import="model.cliente.Cliente"%>
<% Cliente cliente = (Cliente) request.getAttribute("cliente"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="../components/head.jsp" flush="true"></jsp:include>
        <body>
        <jsp:include page="../components/nav.jsp" flush="true"></jsp:include>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <h1 class="mt-4 mb-3">Perfil
                <!-- <small>O Seu pequeno aqui</small> -->
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item active">Perfil</li>
            </ol>

            <!-- Content Row -->
            <div class="row">

                <!-- Sidebar Column -->
                <div class="col-lg-3 mb-4">
                    <jsp:include page="menuLateral.jsp" flush="true"></jsp:include>                    
                </div>

                <!-- Content Column -->
                <div class="col-lg-9 mb-4">
                    <h2>Informações do Usuário</h2>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Nome: <b> <%= cliente.getNome() %> </b></li>
                        <li class="list-group-item">Login: <b> <%= cliente.getLogin() %> </b></li>
                        <!-- <li class="list-group-item">Senha <b>Senha</b></li> -->
                        <li class="list-group-item">Email cadastrado: <b> <%= cliente.getEmail() %> </b></li>
                        <li class="list-group-item">Endereço: <b> <%= cliente.getEndereco() %> </b></li>
                    </ul>

                </div>

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
        <<jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   

    </body>

</html>

