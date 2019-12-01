<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - DISCIPLINA</title>
    <body>
       <div class="container"/>
       <div class="jooj">
           <h1>ADD DISCIPLINA</h1>
        <form name="inserirDisciplina" action="validaInserirDisciplina.jsp" method="post" style = "margin-left: 100px; width: 300px">
            Turma: <input type="text" name="TURMA" value=""> <br>
            Nome: <input type="text" name="NOME" value=""> <br>
            Periodo: <input type="text" name="PERIODO" value=""> <br>
            Professor: <input type="text" name="PROFESSOR" value=""> <br>
            <input type="submit" name="Enviar" value="OK" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px">
        </form>
       </div>
        </div>
    </body>
</html>
