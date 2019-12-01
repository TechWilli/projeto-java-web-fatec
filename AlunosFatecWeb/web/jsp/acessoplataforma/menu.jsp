<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Aluno alu = new Aluno(0,login,senha);
    AlunoControl alucont = new AlunoControl();
    alu = alucont.validaLogin(alu);
    session.setAttribute("AlunoLogado",alu);
%>


<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA</title>
    <body style="height: 650px;">    
        <% if (!alu.getCurso().equals("")) { %>
            <div style="position: absolute;align-self: normal;background-color: white;width: 870px;margin-top: 40px;">
                <h1>MENU DO SISTEMA</h1>  
            </div>
            <!-- Dropdown1 Trigger -->
            <div style="display: grid;">
                <img src = "../img/aluno2.png" alt = "imagem login aluno" height = "200px" width = "205px" style = "margin-bottom: 10px">
                <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1' style="margin-right: 100px; background-color: black">Controlar Aluno</a>
            </div>
            
            <div style="display: grid;">
                <img src = "../img/disciplina.png" alt = "imagem login aluno" height = "200px" width = "246px" style = "margin-bottom: 10px">
                <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2' style="margin-right: 100px; background-color: black">Controlar Disciplinas</a>
            </div>
            
            <div style="display: grid;">
                <img src = "../img/aluno4.png" alt = "imagem login aluno" height = "200px" width = "215px" style = "margin-bottom: 10px;">
                <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3' style="background-color: black">Controlar Acesso</a>
            </div>
                    
                    
                    

            <% if (alu.getRa().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../aluno/inserirAluno.jsp"> Inserir Aluno </a></li>
                    <li><a href="../aluno/consultarAluno.jsp"> Consultar Aluno </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../aluno/consultarAluno.jsp"> Consultar Aluno </a></li>
                </ul>
            <% } %>
            <% if (alu.getRa().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../disciplina/inserirDisciplina.jsp"> Inserir Disciplina </a></li>
                    <li><a href="../disciplina/consultarDisciplina.jsp"> Consultar Disciplina </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../disciplina/consultarDisciplina.jsp"> Consultar Disciplina </a></li>
                </ul>
            <% } %>
            <% if (alu.getRa().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../alunodisciplina/inserirRelacaoAlunoDisciplina.jsp"> Inserir Aluno Disciplina </a></li>
                    <li><a href="../alunodisciplina/consultarRelacaoAlunoDisciplina.jsp"> Consultar Aluno Disciplina </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../alunodisciplina/consultarRelacaoAlunoDisciplina.jsp"> Consultar Aluno Disciplina </a></li>
                </ul>
            <% } %>
            <% } else { %>
                <h1>ALUNO INVÁLIDO</h1>
        <% } %>
    </body>
</html>