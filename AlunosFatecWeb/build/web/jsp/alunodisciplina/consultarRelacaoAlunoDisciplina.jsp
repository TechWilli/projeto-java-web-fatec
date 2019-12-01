<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR ALUNO - DISCIPLINA</title>
    <body>
       <div style="margin-top: 120px" class="container"/>
        <div class="jooj">
            <h1>CONSULTAR ALUNO DISCIPLINA</h1>
            <form name="consultarAluno" action="validaConsultarRelacaoAlunoDisciplina.jsp" method="post" style = "margin-left: 100px; width: 300px">
           Situação Final <input type="text" name ="SITUFINAL" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px"> <br>
            </form>
        </div>
      </div>
    </body>
</html>
