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
                        
                        <form action="register" method="post">
                            
                            <div><input type="text" name="nome" placeholder="Nome" /></div>
                            <div><input type="text" name="endereco" placeholder="Endereço" /></div>
                            <div><input type="text" name="email" placeholder="E-mail" /></div>
                            <div><input type="text" name="login" placeholder="Login" /></div>
                            <div><input type="password" name="senha" placeholder="Senha" /></div>
                            <div><input type="submit" value="Cadastrar" /></div>
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
                        <a class="d-block small mt-3" href="login.html">Pagina de Login</a>
                        <!-- <a class="d-block small" href="forgot-password.html">Esqueceu a Senha?</a> -->
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="components/footer.jsp" flush="true"></jsp:include>

    </body>

</html>
