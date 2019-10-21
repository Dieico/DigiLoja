<%-- 
    Document   : login
    Created on : 18/09/2019, 16:49:33
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <div class="card-header">Login Administrador</div>
    <div class="card-body">        

<!--        <form action="AdminLogin" method="post">
            <div><input type="text" name="login" placeholder="Login" /></div>
            <div><input type="password" name="senha" placeholder="Senha" /></div>
            <div><input type="submit" value="Login" /></div>
        </form>-->

        <form action="AdminLogin" method="post">
            <div class="form-group">
                <div class="form-label-group">
                    <input type="text" name="login" id="inputLoginAdmin" class="form-control" 
                           placeholder="Login" required="required" autofocus="autofocus">
                    <label for="inputLoginAdmin">Login</label>
                </div>
            </div>
            <div class="form-group">
                <div class="form-label-group">
                    <input type="password" name="senha" id="inputPasswordAdmin" class="form-control" 
                           placeholder="Senha" required="required">
                    <label for="inputPasswordAdmin">Senha</label>
                </div>
            </div>
<!--            <div class="form-group">
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me">
                        Lembre a Senha
                    </label>
                </div>
            </div>-->
            <div><input class="btn btn-primary btn-block" type="submit" value="Login"></input></div>
            <!--<a class="btn btn-primary btn-block" href="index.sgp">Cancelar</a>-->
        </form>

        <%
            String mensagem = (String) request.getAttribute("mensagem");
            if (mensagem != null && mensagem.trim().length() > 0) {
        %>
        <div style="color: #ff0000; font-weight: bold;"><%= mensagem%></div>
        <%
            }
        %>

        <div class="text-center">
            <a class="d-block small mt-3" href="register.jsp">Registre uma conta</a>
            <!-- <a class="d-block small" href="forgot-password.html">Esqueceu a Senha?</a> -->
        </div>
    </div>

