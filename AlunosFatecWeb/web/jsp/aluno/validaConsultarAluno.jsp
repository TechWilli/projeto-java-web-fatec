
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>

<%
    String login = request.getParameter("LOGIN");
    Aluno  alu = new Aluno(0,login,"");
    AlunoControl alucont = new AlunoControl();
    List<Aluno> alus = alucont.ListaAluno(alu);
    Aluno aluLogado = (Aluno) session.getAttribute("AlunoLogado");
    String url = "ABUSCA=" + alu.getLogin()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ALUNO</title>
    <body>
        <div style="position: absolute;align-self: normal;background-color: white;width: 800px;margin-top: 40px; width: 1300px;">
            <h1>CONSULTAR ALUNO</h1>  
        </div>
        <div style = "border-radius: 25px;border: 5px;background-color: white;display: block;align-items: center;justify-content: center;padding: 10px 0px 10px 0px;width: 1300;height: 150px;">
            <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Login">Login</th>
                  <th data-field="Senha">Senha</th>
                  <th data-field="Curso">Curso</th>
                  <th data-field="RA">RA</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Modificar">Modificar</th>
              </tr>
            </thead>
            <% if (!(alus.isEmpty())) { %>    
                <tbody>
                    <% for (Aluno listaAluno : alus) { %>
                        <tr>
                            <td><%=listaAluno.getIdAlu()%></td>
                            <td><%=listaAluno.getLogin()%></td>
                            <td><%=listaAluno.getSenha()%></td>
                            <td><%=listaAluno.getCurso()%></td>
                            <td><%=listaAluno.getRa()%></td>
                            <% if (aluLogado.getRa().equals("ADM")) { %>
                                <td><a href="excluirAluno.jsp?<%=url + listaAluno.getIdAlu()%>">Excluir</a></td>
                                <td><a href="alterarAluno.jsp?<%=url + listaAluno.getIdAlu()%>">Modificar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
        </div>
        
    </body>
</html>