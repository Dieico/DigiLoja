<%-- 
    Document   : alterarDados
    Created on : 18/09/2019, 17:47:50
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="../../components/head.jsp" flush="true"></jsp:include>

        <body>

        <jsp:include page="../../components/nav.jsp" flush="true"></jsp:include>

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
                        <h2>Alterar Meus Dados</h2>

                        <!--<ul class="list-group list-group-flush">
                        <li class="list-group-item">Nome <b>Leonardo Moreira</b></li>
                        <li class="list-group-item">Login <b>Login</b></li>
                        <li class="list-group-item">Senha <b>Senha</b></li>
                        <li class="list-group-item">Email cadastrado <b>Email</b></li>
                        <li class="list-group-item">Endereço <b>endereço</b></li>
                      </ul>-->
                        <form>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nome</label>
                                <input type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomehelp"
                                       placeholder="Nome">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Login</label>
                                <input type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomehelp"
                                       placeholder="Login">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email Virtual</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                       placeholder="Email Virtual">
                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Senha Atual</label>
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha Atual">
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
        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   


    </body>

</html>