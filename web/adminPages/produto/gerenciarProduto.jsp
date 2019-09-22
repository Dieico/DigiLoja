<%-- 
    Document   : geremciarProduto
    Created on : 21/09/2019, 11:43:53
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
                        <h2>Produtos</h2>
                        <!-- Search form -->
                        <div class="col-lg-12 mb-4">
                            <form class="form-inline">
                                <input class="col-lg-10 form-control mr-sm-0" type="search" placeholder="Procurar Produto"
                                       aria-label="Search">
                                <button class="col-lg-2 btn btn-outline-success my-2 my-sm-0" type="submit">Procurar</button>
                            </form>
                        </div>
                        <!-- </div> -->
                        <!-- <div class="col-lg-9 mb-4"> -->
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Foto</th>
                                    <th scope="col">Nome</th>
                                    <th scope="col">Descrição</th>
                                    <th scope="col">Quantidade</th>
                                    <th scope="col">Valor</th>
                                    <th scope="col">Alterar</th>
                                    <th scope="col">Retirar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td><img src="http://placehold.it/50x50" class="img-fluid img-thumbnail max-width: 10%" alt="Responsive image"></td>
                                    <td>Nome do Item</td>
                                    <td>Nome do Item</td>
                                    <td>
                                        <div class="col">
                                            <input type="text" class="form-control" style="max-width:100px" placeholder="0">
                                        </div>
                                    </td>
                                    <td>R$ 0.00</td>
                                    <td><button type="button" class="btn btn-dark" data-toggle="collapse" data-target="#collapseExample2"
                                                aria-expanded="false" aria-controls="collapseExample2">Alterar</button></td>
                                    <td><button type="button" class="btn btn-dark">Retirar</button></td>
                                </tr>
                                <tr class="collapse" id="collapseExample2">
                                    <td colspan="8">
                                        <div class="card card-body">
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

                                                <button type="submit" class="btn btn-primary">Alterar Produto</button>
                                            </form>
                                        </div>
                                    </td>
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
