<%-- 
    Document   : register
    Created on : 22/09/2019, 16:05:49
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="components/head.jsp" flush="true"></jsp:include>

        <body>

        <jsp:include page="components/nav.jsp" flush="true"></jsp:include>


            <div class="container">
                <div class="card card-register mx-auto mt-5">
                    <div class="card-header">Cadastrar</div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <div class="form-label-group">
                                    <input type="text" id="firstName" class="form-control" placeholder="Nome" required="required"
                                           autofocus="autofocus">
                                    <label for="firstName">Nome</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="form-label-group">
                                    <input type="email" id="inputEmail" class="form-control" placeholder="Email Virtual" required="required">
                                    <label for="inputEmail">Email Virtual</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="form-label-group">
                                    <input type="text" id="inputEndereco" class="form-control" placeholder="Endereço" required="required">
                                    <label for="inputEndereco">Endereço</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="form-label-group">
                                    <input type="text" id="inputLogin" class="form-control" placeholder="Login" required="required">
                                    <label for="inputLogin">Login</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <input type="password" id="inputSenha" class="form-control" placeholder="Senha"
                                                   required="required">
                                            <label for="inputSenha">Senha</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-label-group">
                                            <input type="password" id="confirmarSenha" class="form-control" placeholder="Confirme Senha"
                                                   required="required">
                                            <label for="confirmarSenha">Confirme Senha</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <!-- <a class="btn btn-primary btn-block" href="login.html">Register</a> -->
                                        <button type="submit" class="btn btn-primary btn-block" href="login.html">Registrar</button>
                                    </div>
                                    <div class="col-md-6">
                                        <a class="btn btn-primary btn-block" href="index.html">Cancelar</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="text-center">
                            <a class="d-block small mt-3" href="login.html">Pagina de Login</a>
                            <!-- <a class="d-block small" href="forgot-password.html">Esqueceu a Senha?</a> -->
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="components/footer.jsp" flush="true"></jsp:include>

    </body>

</html>
