
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - DISCIPLINA</title>
    <body>
       <div style = "margin-top: 130px"  class="container"/>
       <div class="jooj">
       <h1>CONSULTAR DISCIPLINA</h1>
       <form name="consultarDisciplina" action="validaConsultarDisciplina.jsp" method="post" style = "margin-left: 100px; width: 300px">
           PROFESSOR <input type="text" name ="PROFESSOR" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px"> <br> <br>
       </form>
       </div>
       </div>
    </body>
</html>
