<%-- 
    Document   : addCategoria
    Created on : 21/09/2019, 11:41:59
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
                        <h2>Adicionar Categoria</h2>                        
                        <form action="/DigiLoja/createCategoriaservlet" method="post">
                            <div class="form-group">
                                <label for="descricao">Nome da Categoria</label>
                                <textarea class="form-control" name="descricao" rows="1" placeholder=""></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Adicionar Categoria</button>
                        </form>
                        <jsp:include page="../../components/feedback.jsp" flush="true"></jsp:include>
                    </div>  
                </div>

            </div>
            <!-- /.row -->
            <!-- /.container -->

            <!-- Footer -->
        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   


    </body>

</html>