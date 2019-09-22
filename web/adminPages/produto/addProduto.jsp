<%-- 
    Document   : addProduto
    Created on : 21/09/2019, 11:42:59
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
                <h2>Adicionar Produto</h2>
                <form>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nome da Produto</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                            placeholder="Nome da Categoria">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Descrição do Produto</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"
                            placeholder="Descrição da Categoria"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Preço</label>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">R$</span>
                            </div>
                            <input type="text" class="form-control" aria-label="Quantia">
                            <div class="input-group-append">
                                <span class="input-group-text">.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Quantidade</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                            placeholder="Quantidade">
                    </div>
                    <div class="form-group">
                        <label for="validatedCustomFile">Foto</label>
                        <div class="custom-file">
                            <input type="file" class="form-control-file custom-file-input" id="validatedCustomFile"
                                required>
                            <label class="custom-file-label" for="validatedCustomFile">Escolher arquivo...</label>
                            <div class="invalid-feedback">Exemplo de feedback inválido para input file</div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="validatedCustomFile">Categoria</label>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Categoria" aria-label="Categoria"
                                aria-describedby="button-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Adicionar
                                    Categoria</button>
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Adicionar Produto</button>
                </form>
            </div>
                </div>

            </div>
            <!-- /.row -->
            <!-- /.container -->

            <!-- Footer -->
        <jsp:include page="/components/footer.jsp" flush="true"></jsp:include>   


    </body>

</html>
