<%-- 
    Document   : esgotadoProduto
    Created on : 21/09/2019, 11:46:21
    Author     : diego
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
                        <h2>Produtos Esgotados</h2>
                        <!-- Search form -->
                        <!-- <div class="col-lg-9 mb-4">
                            <div class="form-group row">
                                <label for="example-date-input" class="col-2 col-form-label">Date</label>
                                <div class="col-10">
                                    <input class="form-control" type="date" value="2011-08-19" id="example-date-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-date-input" class="col-2 col-form-label">Date</label>
                                <div class="col-10">
                                    <input class="form-control" type="date" value="2011-08-19" id="example-date-input">
                                </div>
                            </div>
                        </div> -->
                        <!-- </div> -->
                        <!-- <div class="col-lg-9 mb-4"> -->
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Descrição</th>
                                    <th scope="col">Preço</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>1</th>
                                    <td>Lorial Ipson Lorial Ipson Lorial Ipson Lorial Ipson Lorial Ipson</td>
                                    <td>R$ 0.00</td>
                                </tr>
                                <tr>
                                    <td>2</th>
                                    <td>Calipso Calipso Calipso Calipso Calipso Calipso Calipso</td>
                                    <td>R$ 0.00</td>
                                </tr>
                                <tr>
                                    <td>3</th>
                                    <td>Apocalison Apocalison Apocalison Apocalison Apocalison Apocalison</td>
                                    <td>R$ 0.00</td>
                                </tr>
                            </tbody>
                        </table>
                    <jsp:include page="../../components/pages.jsp" flush="true"></jsp:include>

                    </div>
                </div>

            </div>
            <!-- /.row -->
            <!-- /.container -->

            <!-- Footer -->
        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   


    </body>

</html>
