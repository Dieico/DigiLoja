<%-- 
    Document   : login
    Created on : 18/09/2019, 16:40:00
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="components/head.jsp" flush="true"></jsp:include>
        <body>
        <jsp:include page="components/nav.jsp" flush="true"></jsp:include>            

            <div class="container">
                <div class="card card-login mx-auto mt-5">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" 
                               role="tab" aria-controls="home" aria-selected="true">Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" 
                               role="tab" aria-controls="profile" aria-selected="false">Administrador</a>
                        </li>                
                    </ul>

                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <jsp:include page="components/login.jsp" flush="true"></jsp:include></div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <jsp:include page="components/loginAdmin.jsp" flush="true"></jsp:include></div>
                        </div>                
                    </div>
                
                </div>
            </div>
        <jsp:include page="components/footer.jsp" flush="true"></jsp:include>
    </body>


</html>

