<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.AlunoDisciplina"%>
<%@page import="backalunos.control.AlunoDisciplinaControl"%>
<%@page import="java.util.List"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>
<%@page import="backalunos.bean.Disciplina"%>
<%@page import="backalunos.control.DisciplinaControl"%>

<%
DisciplinaControl disCont = new DisciplinaControl();
    Disciplina di = new Disciplina(0,"","","","");
    List<Disciplina> diss = disCont.listaDisciplina(di);

    AlunoControl aluCont = new AlunoControl();
    Aluno aluEnt = new Aluno(0,"","");
    List<Aluno> alus = aluCont.ListaAluno(aluEnt);
    
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    AlunoDisciplina aluDis = new AlunoDisciplina(id,0,0,0,0,"");
    AlunoDisciplinaControl aluDisCont = new AlunoDisciplinaControl();
    aluDis = aluDisCont.buscarAlunoDisciplina(aluDis);
    String adbusca = request.getParameter("ADBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - ALUNO DISCIPLINA</title>
    <body>
       <div class="container"/>
       <div class="jooj">
           <h1>ALTERAR - ALUNO DISCIPLINA</h1>
        <form name="alterarAlunoDisciplina" action="validaAlterarRelacaoAlunoDisciplina.jsp" method="post" style = "margin-left: 100px; width: 300px">
            <table>
                <tr>
                    <td>Aluno:</td>
                        <td>
                            <select NAME="ID_ALUNO" class="browser-default">
                                <% for (Aluno alu : alus) { %>
                                    <% if( alu.getIdAlu() == aluDis.getIdAluno() ) { %>
                                        <option selected value="<%=alu.getIdAlu()%>"><%=alu.getLogin()%></option>
                                    <% } else { %>
                                        <option value="<%=alu.getIdAlu()%>"><%=alu.getLogin()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Disciplina:</td>
                        <td>
                            <select NAME ="ID_DISCIPLINA" class="browser-default">
                                <% for (Disciplina dis : diss) { %>
                                    <% if( dis.getId()== aluDis.getIdDis() ) { %>
                                        <option selected value="<%=dis.getId()%>"><%=dis.getNomeDis()%></option>
                                    <% } else { %>
                                        <option value="<%=dis.getId()%>"><%=dis.getNomeDis()%></option>
                                    <% } %>
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
                    <tr>
                        <td>Situação Final:</td>
                        <td><input type="text" name="SITUFINAL" value="<%=aluDis.getSitFinal()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=aluDis.getIdAluDis()%>"> <br>
            <input type="HIDDEN" name="ADBUSCA" value="<%=adbusca%>">
            <input type="submit" name="Enviar" value="OK" style = "border-radius: 25px; background-color:black; color:white; width:136px; height:56px; border:0px">
        </form>
       </div>
        <div>
    </body>
</html>