/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.bean;

/**
 *
 * @author William
 */
public class Aluno {
    
    private int idAlu;
    private String login;
    private String senha;
    private String curso; /*status*/
    private String ra; /*tipo*/


    public Aluno(int idAlu, String login, String senha) {
        this.idAlu = idAlu;
        this.login = login;
        this.senha = senha;
    }

    public Aluno(int idAlu, String login, String senha, String curso, String ra) {
        this.idAlu = idAlu;
        this.login = login;
        this.senha = senha;
        this.curso = curso;
        this.ra = ra;
    }

    public int getIdAlu() {
        return idAlu;
    }

    public void setIdAlu(int idAlu) {
        this.idAlu = idAlu;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getRa() {
        return ra;
    }

    public void setRa(String ra) {
        this.ra = ra;
    }


}
