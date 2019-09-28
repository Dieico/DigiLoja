<%-- 
    Document   : login
    Created on : 18/09/2019, 16:49:33
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card card-login mx-auto mt-5">
    <div class="card-header">Login</div>
    <div class="card-body">
        <form>
            <div class="form-group">
                <div class="form-label-group">
                    <input type="text" name="login" id="inputLogin" class="form-control" placeholder="Login" required="required" autofocus="autofocus">
                    <label for="inputEmail">Login</label>
                </div>
            </div>
            <div class="form-group">
                <div class="form-label-group">
                    <input type="password" name="senha" id="inputPassword" class="form-control" placeholder="Senha" required="required">
                    <label for="inputPassword">Senha</label>
                </div>
            </div>
            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Lembre a Senha
                    </label>
                </div>
            </div>
            <a class="btn btn-primary btn-block" type="submit" value="Login">Login</a>
            <a class="btn btn-primary btn-block" href="index.sgp">Cancelar</a>
        </form>
        <div class="text-center">
            <a class="d-block small mt-3" href="register.html">Registre uma conta</a>
            <!-- <a class="d-block small" href="forgot-password.html">Esqueceu a Senha?</a> -->
        </div>
    </div>
</div>
