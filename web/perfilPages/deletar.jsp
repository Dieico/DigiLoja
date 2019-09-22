<%-- 
    Document   : deletar
    Created on : 22/09/2019, 16:19:33
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <h2>Excluir Conta</h2>

                        <!--<ul class="list-group list-group-flush">
                <li class="list-group-item">Nome <b>Leonardo Moreira</b></li>
                <li class="list-group-item">Login <b>Login</b></li>
                <li class="list-group-item">Senha <b>Senha</b></li>
                <li class="list-group-item">Email cadastrado <b>Email</b></li>
                <li class="list-group-item">Endereço <b>endereço</b></li>
            </ul>-->
                        <!-- <form>
                            <div class="col-lg-3 form-group">
                                <label for="staticEmail2" class="sr-only">Email</label>
                                <input type="text" readonly class="form-control-plaintext" id="staticEmail2"
                                    value="email@example.com">
                            </div>
                            <div class="col-lg-3 form-group">
                                <label for="inputPassword2" class="sr-only">Senha</label>
                                <input type="password" class="form-control" id="inputPassword2" placeholder="Senha">
                            </div>
                            <div class="col-lg-3 form-group">
                                <button type="submit" class="btn btn-primary mb-2">Excluir Conta</button>
                            </div>
                        </form> -->

                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <div class="form-label-group">
                                        <!-- <label for="exampleInputPassword1">Nova Senha</label> -->
                                        <label for="staticEmail2" class="sr-only">Email</label>
                                        <input type="text" readonly class="form-control-plaintext" id="staticEmail2"
                                               value="email@example.com">
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="form-label-group">
                                        <!-- <label for="exampleInputPassword1">Confirmar Nova Senha</label> -->
                                        <label for="inputPassword2" class="sr-only">Senha</label>
                                        <input type="password" class="form-control" id="inputPassword2" placeholder="Senha">
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-label-group">
                                        <!-- <label for="exampleInputPassword1">Confirmar Nova Senha</label> -->
                                        <button type="submit" class="btn btn-primary mb-2">Excluir Conta</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container -->

                <!-- Footer -->
                <<jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   

    </body>

</html>

