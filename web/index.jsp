<%-- 
    Document   : index
    Created on : 16/09/2019, 15:05:00
    Author     : leoomoreira
--%>
<%@page import="model.produto.Produto"%>
<%@page import="java.util.List"%>
<% List<Produto> produtos = (List<Produto>) request.getAttribute("produtos"); %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        
        <html lang="en">

        <jsp:include page="components/head.jsp" flush="true"></jsp:include>
        <body>

            <jsp:include page="components/nav.jsp" flush="true"></jsp:include>
            <jsp:include page="components/header.jsp" flush="true"></jsp:include>

            <!-- Page Content -->
            <div class="container">

                <h1 class="my-4">Digiovos Disponiveis</h1>

                <jsp:include page="components/busca.jsp" flush="true"></jsp:include>

                <!-- Marketing Icons Section -->
                <div class="row">
                    <% for( Produto produto : produtos ) { %>
                        <jsp:include page="components/cards.jsp" flush="true">
                            <jsp:param name="nome" value="<%= produto.getNome() %>"/>
                            <jsp:param name="descricao" value="<%= produto.getDescricao()%>"/>
                            <jsp:param name="preco" value="<%= produto.getPreco()%>"/>
                        </jsp:include>
                    
                    <% } %>
                </div>
                <jsp:include page="components/pages.jsp" flush="true"></jsp:include>
            </div>
            <!-- /.container -->
            
            <jsp:include page="components/footer.jsp" flush="true"></jsp:include>   

        </body>

       </html>