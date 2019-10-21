<%-- 
    Document   : index
    Created on : 16/09/2019, 15:05:00
    Author     : leoomoreira
--%>

<%@page import="model.administrador.Administrador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Administrador administrador = (Administrador) session.getAttribute("administrador");                        
    if (administrador != null) {
%>
<html lang="en">

    <jsp:include page="components/head.jsp" flush="true"></jsp:include>

        <body>

        <jsp:include page="components/nav.jsp" flush="true"></jsp:include>


            <!-- Page Content -->
            <div class="container">

                <!-- Page Heading/Breadcrumbs -->
                <h1 class="mt-4 mb-3">Administrador
                    <!-- <small>O Seu pequeno aqui</small> -->
                </h1>

                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item active">Administrador</li>
                </ol>

                <!-- Content Row -->
                <div class="row">

                    <!-- Sidebar Column -->
                    <div class="col-lg-3 mb-4">
                    <jsp:include page="/adminPages/menuLateral.jsp" flush="true"></jsp:include>

                    </div>

                    <!-- Content Column -->
                    <div class="col-lg-9 mb-4">
                        <h2>Informações do Usuário</h2>
                        <ul class="list-group list-group-flush">
                            <!--<li class="list-group-item">Nome: <b>Leonardo Moreira</b></li>-->
                            <!--<li class="list-group-item">Login: <b>leo</b></li>-->
                            <!-- <li class="list-group-item">Senha <b>Senha</b></li> -->
                            <!--<li class="list-group-item">Email: <b>leomoreira@virtual.ufc.br</b></li>-->
                            <!-- <li class="list-group-item">Endereço <b>endereço</b></li> -->
                            <li class="list-group-item">Nome: <b> <%= administrador.getNome()%> </b></li>
                            <li class="list-group-item">Login: <b> <%= administrador.getLogin()%> </b></li>                        
                            <li class="list-group-item">Email: <b> <%= administrador.getEmail()%> </b></li>
                        </ul>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

        <jsp:include page="components/footer.jsp" flush="true"></jsp:include>   


    </body>

</html>
<% } else {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>