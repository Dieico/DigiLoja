<%-- 
    Document   : editarDados
    Created on : 22/09/2019, 16:19:14
    Author     : diego
--%>
<%@page import="model.cliente.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cliente cliente = (Cliente) session.getAttribute("cliente");                        
    if (cliente != null) {
%>
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
                        <h2>Editar dados pessoais</h2>
                        <form>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nome</label>
                                <input type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomehelp"
                                       placeholder= <%= cliente.getNome()%>>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Login</label>
                                <input type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomehelp"
                                       placeholder= <%= cliente.getLogin()%> >
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email Virtual</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                       placeholder=" <%= cliente.getEmail()%> ">
                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Endereço</label>
                                <input type="text" class="form-control" id="exampleInputEndereco1" aria-describedby="emailHelp"
                                       placeholder=" <%= cliente.getEndereco()%> ">
                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Senha Atual</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="<%= cliente.getSenha()%>">
                            </div>
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <label for="exampleInputPassword1">Nova Senha</label>
                                            <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Nova Senha">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <label for="exampleInputPassword1">Confirmar Nova Senha</label>
                                            <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Confirmar Nova Senha">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="form-check">
                              <input type="checkbox" class="form-check-input" id="exampleCheck1">
                              <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div> -->
                            <button type="submit" class="btn btn-primary">Alterar Dados</button>
                        </form>

                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

            <!-- Footer -->
            <<jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   

    </body>

</html>

<% } else {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
%>