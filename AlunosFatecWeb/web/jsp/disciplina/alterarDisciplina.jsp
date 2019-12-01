<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Disciplina"%>
<%@page import="backalunos.control.DisciplinaControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Disciplina dis = new Disciplina(id,"","","","");
    DisciplinaControl disCont = new DisciplinaControl();
    dis = disCont.buscaDisciplina(dis);
    String dbusca = request.getParameter("DBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - disSOA</title>
    <body>
       <div class="container"/>
       <div class="jooj">
            <h1>ALTERAR DISCIPLINA</h1>
        <form name="alterarDisciplina" action="validaAlterarDisciplina.jsp" method="post" style = "margin-left: 100px; width: 300px;">
            Turma <input type="text" name="TURMA" value="<%=dis.getTurma()%>"> <br>
            Nome: <input type="text" name="NOME" value="<%=dis.getNomeDis()%>"> <br>
            Período <input type="text" name="PERIODO" value="<%=dis.getPeriodo()%>"> <br>
            Professor <input type="text" name="PROFESSOR" value="<%=dis.getProf()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=dis.getId()%>"> <br>
            <input type="HIDDEN" name="DBUSCA" value="<%=dbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px">
        </form>
       </div>
       
        <div>
    </body>
</html>