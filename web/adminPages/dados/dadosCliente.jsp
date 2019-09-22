<%-- 
    Document   : dadosCliente
    Created on : 18/09/2019, 18:13:40
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
                        <h2>Dados dos Clientes</h2>
                        
                        <jsp:include page="/components/busca.jsp" flush="true"></jsp:include>
                        
                        <form>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Nome</label>
                                <input type="text" class="form-control" id="exampleInputNome1" aria-describedby="nomehelp"
                                       placeholder="Nome">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email Virtual</label>
                                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                       placeholder="Email Virtual">
                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone -->
                                <!-- else.</small> -->
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Endereço</label>
                                <input type="text" class="form-control" id="exampleInputEndereco1" aria-describedby="emailHelp"
                                       placeholder="Endereço">
                                <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone -->
                                <!-- else.</small> -->
                            </div>
                            <!-- <div class="form-group">
                                <label for="exampleInputPassword1">Senha Atual</label>
                                <input type="password" class="form-control" id="exampleInputPassword1"
                                    placeholder="Senha Atual">
                            </div> -->
                            <!-- <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <label for="exampleInputPassword1">Nova Senha</label>
                                            <input type="password" class="form-control" id="exampleInputPassword2"
                                                placeholder="Nova Senha">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <label for="exampleInputPassword1">Confirmar Nova Senha</label>
                                            <input type="password" class="form-control" id="exampleInputPassword3"
                                                placeholder="Confirmar Nova Senha">
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                            <!-- <div class="form-check">
                                  <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                </div> -->
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Alterar Dados</button>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1">Deletar Conta</label>
                                <div class="form-row">
                                    <div class="col-md-10 mb-3">
                                        <div class="form-label-group">
                                            <!-- <label for="exampleInputPassword1">Confirmar Nova Senha</label> -->
                                            <label for="inputPassword2" class="sr-only">Senha</label>
                                            <input type="password" class="form-control" id="inputPassword2" placeholder="Senha">
                                        </div>
                                    </div>
                                    <div class="col-md-2 mb-3">
                                        <div class="form-label-group">
                                            <!-- <label for="exampleInputPassword1">Confirmar Nova Senha</label> -->
                                            <button type="submit" class="btn btn-primary mb-2" style="float: right;">Excluir
                                                Conta</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>

    </body>

</html>


