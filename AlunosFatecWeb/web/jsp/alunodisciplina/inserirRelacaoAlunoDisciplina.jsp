<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>
<%@page import="backalunos.bean.Disciplina"%>
<%@page import="backalunos.control.DisciplinaControl"%>

<%
    DisciplinaControl disCont = new DisciplinaControl();
    Disciplina di = new Disciplina(0,"","","","");
    List<Disciplina> diss = disCont.listaDisciplina(di); // 

    AlunoControl aluCont = new AlunoControl();
    Aluno aluEnt = new Aluno(0,"","");
    List<Aluno> alus = aluCont.ListaAluno(aluEnt);

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR ALUNO DISCIPLINA</title>
    <body>
        <div class="container"/>
        <div class="jooj" style="padding-top: 0px;height: 640px;
">
            <h1>Inserir Aluno Disciplina</h1>
            <form name="inseriAlunoDisciplina" action="validaRelacaoAlunoDisciplina.jsp" method="POST" style = "margin-left: 55px; width: 400px">
                <table>
                    <tr>
                        <td>Disciplina:</td>
                        <td>
                            <select NAME ="ID_DISCIPLINA" class="browser-default">
                                <% for (Disciplina dis : diss) { %>
                                    <option value="<%=dis.getId()%>"><%=dis.getNomeDis()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Aluno:</td>
                        <td>
                            <select NAME="ID_ALUNO" class="browser-default">
                                <% for (Aluno alu : alus) { %>
                                    <option value="<%=alu.getIdAlu()%>"><%=alu.getLogin()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>P1:</td>
                        <td><input type="number" name="P1" value=""></td>
                    </tr>
                    <tr>
                        <td>P2:</td>
                        <td><input type="number" name="P2" value=""></td>
                    </tr>
                    <tr>
                        <td>Situação Final:</td>
                        <td><input type="text" name="SITUFINAL" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px"> <br>
            </form>
        </div>
        </div>                     
    </body>
</html>
