<%-- 
    Document   : sacola
    Created on : 18/09/2019, 16:52:38
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="components/head.jsp" flush="true"></jsp:include>

        <body>

        <jsp:include page="components/nav.jsp" flush="true"></jsp:include>

            <!-- Page Content -->
            <div class="container">

                <!-- Page Heading/Breadcrumbs -->
                <h1 class="mt-4 mb-3">Sacola de Compras
                    <!-- <small>O Seu pequeno aqui</small> -->
                </h1>

                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="index.html">Categoria</a>
                    </li>
                    <li class="breadcrumb-item active">About</li>
                </ol>

                <!-- Content Row -->
                <div class="row">

                    <!-- Sidebar Column -->
                    <div class="col-lg-3 mb-4">
                        <h5 class="card-header">Categorias</h5>



                        <div class="list-group">
                            <a href="#" class="list-group-item">Data</a>
                            <a href="#" class="list-group-item">Vaccine</a>
                            <a href="#" class="list-group-item">Virus</a>
                            <a href="#" class="list-group-item">Free</a>
                            <a href="#" class="list-group-item">Variable</a>
                        </div>
                    </div>

                    <!-- Content Column -->
                    <div class="col-lg-9 mb-4">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Produto</th>
                                    <th scope="col">Descrição</th>
                                    <th scope="col">Quantidade</th>
                                    <th scope="col">Valores</th>
                                    <th scope="col">Retirar</th>
                                </tr>
                            </thead>
                            <tbody>
                            <jsp:include page="components/itemComprado.jsp" flush="true"></jsp:include>
                            </tbody>

                            <tbody>
                                <tr>
                                    <th scope="row"></th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>R$ 0.00</td>
                                    <td><button type="button" class="btn btn-dark">Comprar</button></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->

        <jsp:include page="components/footer.jsp" flush="true"></jsp:include>

    </body>

</html>

