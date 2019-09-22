<%-- 
    Document   : arrecadacao
    Created on : 21/09/2019, 11:40:54
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
                        <h2>Arrecadação do dia</h2>        
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <label for="example-date-input" class="col-6 col-form-label">Data Inicial</label>
                                        <div class="col-12">
                                            <input class="form-control" type="date" value="2019-08-19" id="example-date-input">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-label-group">
                                        <label for="example-date-input" class="col-6 col-form-label">Data Final</label>
                                        <div class="col-12">
                                            <input class="form-control" type="date" value="2019-09-19" id="example-date-input">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- </div> -->
                        <!-- <div class="col-lg-9 mb-4"> -->
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Data</th>
                                    <th scope="col">Valor Total</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td>19/08/2019</td>
                                    <td>R$ 20.000</td>
                                </tr>

                            </tbody>
                        </table>
                        <jsp:include page="/components/pages.jsp" flush="true"></jsp:include>   
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <!-- /.container -->

            <!-- Footer -->
        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   


    </body>

</html>
