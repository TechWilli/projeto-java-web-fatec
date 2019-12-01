<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - ALUNO</title>
    <body>
       <div class="container"/>
       <div class="jooj">
           <h1>INSERIR ALUNO</h1>
            <form name="inserirAluno" action="validaInserirAluno.jsp" method="post" style = "margin-left: 100px; width: 300px">
            Login: <input type="text" name="LOGIN" value=""> <br>
            Senha: <input type="password" name="SENHA" value=""> <br>
            Curso: <input type="text" name="CURSO" value=""> <br>
            RA: <br> Se for aluno, digite "ALUNO-" + RA <input type="text" name="RA" value=""> <br>
            <input type="submit" name="Enviar" value="OK" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px">
        </form>
       </div>
        </div>
    </body>
</html>
