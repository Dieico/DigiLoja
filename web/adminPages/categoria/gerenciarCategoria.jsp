<%-- 
    Document   : gerenciarCategoria
    Created on : 21/09/2019, 11:32:14
    Author     : diego
--%>

<%@page import="java.util.List"%>
<%@page import="entidades.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--Aqui eu to recebendo do Servlet--%>
<% List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias"); %>
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

                    <%= categorias %>
                    <!-- Content Column -->
                    <div class="col-lg-9 mb-4">
                        <h2>Categorias</h2>
                        <!-- Search form -->
                        <div class="col-lg-12 mb-4">
                            <form class="form-inline">
                                <input class="col-lg-10 form-control mr-sm-0" type="search" placeholder="Procurar Categoria"
                                       aria-label="Search">
                                <button class="col-lg-2 btn btn-outline-success my-2 my-sm-0" type="submit">Procurar</button>
                            </form>
                        </div>
                        <!-- </div> -->
                        <!-- <div class="col-lg-9 mb-4"> -->
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Categoria</th>
                                    <th scope="col">Descricao</th>
                                    <th scope="col">Alterar</th>
                                    <th scope="col">Remover</th>
                                </tr>
                            </thead>

                            <tbody>
                                <% for( Categoria categoria : categorias ) { %>
                                    <tr>
                                        <td><%= categoria.getDescricao() %></td>
                                        <td><button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#collapseExample"
                                                    aria-expanded="false" aria-controls="collapseExample">Alterar</button></td>
                                        <td><button type="button" class="btn btn-dark">Remover</button></td>
                                    </tr>
                                    <tr class="collapse" id="collapseExample">
                                        <td colspan="4">
                                            <div class="card card-body">
                                                <form>
    <!--                                                <div class="form-group">
                                                        <label for="exampleInputEmail1">Nome da Categoria</label>
                                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                                                               placeholder="Nome da Categoria">
                                                    </div>-->
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Descrição da Categoria</label>
                                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                                                                  placeholder="Descrição da Categoria"></textarea>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Alterar Categoria</button>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
            <!-- /.row -->
            <!-- /.container -->

            <!-- Footer -->
        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   


    </body>

</html>
