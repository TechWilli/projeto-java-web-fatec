<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.control.DisciplinaControl"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.bean.Disciplina"%>
<%
    String prof = request.getParameter("PROFESSOR");
    Disciplina dis = new Disciplina(0,"","","",prof);
    DisciplinaControl discont = new DisciplinaControl();
    List<Disciplina> diss = discont.listaDisciplina(dis);
    Aluno aluLogado = (Aluno) session.getAttribute("AlunoLogado");
    String url = "DBUSCA=" + prof + "&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA DISCIPLINAS</title>
    <body>
        <div style="position: absolute;align-self: normal;background-color: white;width: 800px;margin-top: 40px; width: 1300px;">
            <h1>CONSULTAR DISCIPLINA</h1>  
        </div>
        <div style="border-radius: 25px;border: 5px;background-color: white;display: block;align-items: center;justify-content: center;padding: 10px 0px 10px 0px;width: 1300;height: 150px;">
             <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Turma">Truma</th>
                  <th data-field="Nome">Disciplina</th>
                  <th data-field="Periodo">Periodo</th>
                  <th data-field="Profesor">Professor</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Modificar">Modificar</th>
              </tr>
            </thead>
            <% if (!(diss.isEmpty())) { %>    
                <tbody>
                    <% for (Disciplina listaDisciplinas : diss) { %>
                        <tr>
                            <td><%=listaDisciplinas.getId()%></td>
                            <td><%=listaDisciplinas.getTurma()%></td>
                            <td><%=listaDisciplinas.getNomeDis()%></td>
                            <td><%=listaDisciplinas.getPeriodo()%></td>
                            <td><%=listaDisciplinas.getProf()%></td>
                            <% if (aluLogado.getRa().equals("ADM")) { %>
                                <td><a href="excluirDisciplina.jsp?<%=url + listaDisciplinas.getId()%>">Excluir</a></td>
                                <td><a href="alterarDisciplina.jsp?<%=url + listaDisciplinas.getId()%>">Modificar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
        </div>
       
    </body>
</html>