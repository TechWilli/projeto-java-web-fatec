<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backalunos.bean.Aluno"%>
<%@page import="backalunos.control.AlunoControl"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    String curso = request.getParameter("CURSO");
    String ra = request.getParameter("RA");
    String abusca = request.getParameter("ABUSCA");

    Aluno alu = new Aluno(id,login,senha,curso,ra);
    AlunoControl aluCont = new AlunoControl();
    alu = aluCont.alteraAluno(alu);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarAluno.jsp?LOGIN=" + abusca;
    response.sendRedirect(url);
%>