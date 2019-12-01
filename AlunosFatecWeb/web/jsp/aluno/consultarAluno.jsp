<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR ALUNO</title>
    <body>
       <div style = "margin-top: 130px" class="container"/>
       <div class="jooj">
       <h1>CONSULTAR ALUNO</h1>
       <form name="consultarAluno" action="validaConsultarAluno.jsp" method="post" style = "margin-left: 100px; width: 300px">
           LOGIN <input type="text" name ="LOGIN" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px"> <br>
       </form>
       </div>
       </div>
    </body>
</html>
