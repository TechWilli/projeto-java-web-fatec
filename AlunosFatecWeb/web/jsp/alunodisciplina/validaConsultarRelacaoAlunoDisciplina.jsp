<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.bean.AlunoDisciplina"%>
<%@page import="backalunos.control.AlunoDisciplinaControl"%>

<%
    String sitFinal = request.getParameter("SITUFINAL");
    if (sitFinal == null) {
        sitFinal = "";
    }
    AlunoDisciplina aludis = new AlunoDisciplina(0,0,0,0,0,sitFinal);
    AlunoDisciplinaControl aludiscont = new AlunoDisciplinaControl();
    List<AlunoDisciplina> aludiss = aludiscont.listarAlunoDisciplina(aludis);
    Aluno aluLogado = (Aluno) session.getAttribute("AlunoLogado");
    String url = "ABUSCA=" + aludis.getSitFinal() +"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ALUDIS</title>
    <body>
        <div style="position: absolute;align-self: normal;background-color: white;width: 800px;margin-top: 40px; width: 1300px;">
            <h1>CONSULTAR ALUNO DISCIPLINA</h1>  
        </div>
        <div style = "border-radius: 25px;border: 5px;background-color: white;display: block;align-items: center;justify-content: center;padding: 10px 0px 10px 0px;width: 1300;height: 150px;">
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdAluDisciplina">Id</th>
                  <th data-field="IdDisicplina">Id Disciplina</th>
                  <th data-field="Turma">Turma</th>
                  <th data-field="NomeDiciplina">Disciplina</th>
                  <th data-field="IdAluno">Id Aluno</th>
                  <th data-field="NomeAluno">Login Aluno</th>
                  <th data-field="P1">P1</th>
                  <th data-field="P2">P2</th>
                  <th data-field="SituacaoFinal">Situação Final</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Modificar">Modificar</th>
              </tr>
            </thead>
            <% if (!(aludiss.isEmpty())) { %>    
                <tbody>
                    <% for (AlunoDisciplina listaAlunoDisciplina : aludiss) { %>
                        <tr>
                            <td><%=listaAlunoDisciplina.getIdAluDis()%></td>
                            <td><%=listaAlunoDisciplina.getIdDis()%></td>
                            <td><%=listaAlunoDisciplina.getDis().getTurma()%></td>
                            <td><%=listaAlunoDisciplina.getDis().getNomeDis()%></td>
                            <td><%=listaAlunoDisciplina.getIdAluno()%></td>
                            <td><%=listaAlunoDisciplina.getAlu().getLogin()%></td>
                            <td><%=listaAlunoDisciplina.getP1()%></td>
                            <td><%=listaAlunoDisciplina.getP2()%></td>
                            <td><%=listaAlunoDisciplina.getSitFinal()%></td>
                            <% if (aluLogado.getRa().equals("ADM")) { %>
                                <td><a href="excluirRelacaoAlunoDisciplina.jsp?<%=url + listaAlunoDisciplina.getIdAluDis()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoAlunoDisciplina.jsp?<%=url + listaAlunoDisciplina.getIdAluDis()%>">Modificar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>
        </div>
    </body>
</html>