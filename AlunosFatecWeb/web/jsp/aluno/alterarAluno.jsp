<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Aluno alu = new Aluno(id,"","","","");
    AlunoControl aluCont = new AlunoControl();
    alu = aluCont.buscaAluno(alu);
    String abusca = request.getParameter("ABUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ALUNO</title>
    <body>
       <div class="container"/>
       <div class="jooj">
           <h1>ALTERAR ALUNO</h1>
        <form name="alterarAluno" action="validaAlterarAluno.jsp" method="post" style = "margin-left: 100px; width: 300px;">
            Login: <input type="text" name="LOGIN" value="<%=alu.getLogin()%>"> <br>
            Senha: <input type="password" name="SENHA" value="<%=alu.getSenha()%>"> <br>
            Curso: <input type="text" name="CURSO" value="<%=alu.getCurso()%>"> <br>
            RA: <input type="text" name="RA" value="<%=alu.getRa()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=alu.getIdAlu()%>"> <br>
            <input type="HIDDEN" name="ABUSCA" value="<%=abusca%>"> <br>
            <input type="submit" name="Enviar" value="OK" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px">
        </form>
       </div>
       
        <div>
    </body>
</html>