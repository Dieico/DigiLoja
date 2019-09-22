<%-- 
    Document   : compras
    Created on : 22/09/2019, 16:09:42
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
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Produto</th>
                                    <th scope="col">Descrição</th>
                                    <th scope="col">Quantidade</th>
                                    <th scope="col">Valores</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td><img src="http://placehold.it/50x50" class="img-fluid img-thumbnail max-width: 10%"
                                             alt="Responsive image"></td>
                                    <td>Nome do Item</td>
                                    <td>
                                        <div class="col">
                                            <!-- <input type="text" class="form-control" style="max-width:100px" placeholder="0" > -->
                                            <div class="col">2</div>
                                        </div>
                                    </td>
                                    <td>R$ 0.00</td>
                                </tr>
                            </tbody>                        
                        </table>

                    <jsp:include page="../components/pages.jsp" flush="true"></jsp:include>                    

                </div>

            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   

    </body>

</html>


