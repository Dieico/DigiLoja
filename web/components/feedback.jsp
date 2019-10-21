<%-- 
    Document   : feedback
    Created on : 16/10/2019, 16:06:01
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String mensagem = (String) request.getAttribute("mensagem");
    if (mensagem != null && mensagem.trim().length() > 0) {
%>
<div style="color: #ff0000; font-weight: bold;"><%= mensagem%></div>
<%
    }
%>