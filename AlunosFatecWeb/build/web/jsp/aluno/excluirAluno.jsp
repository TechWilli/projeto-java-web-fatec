<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Aluno alu = new Aluno(id,"","","","");
    AlunoControl aluCont = new AlunoControl();
    alu = aluCont.excluiAluno(alu);
    String abusca = request.getParameter("ABUSCA");
    
    // REDIRECIONA PARA A PAG
    String url = "validaConsultarAluno.jsp?LOGIN=" + abusca;
    response.sendRedirect(url);
%>