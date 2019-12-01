/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.bean;

import java.io.Serializable;

/**
 *
 * @author William
 */
public class AlunoDisciplina implements Serializable {
 
  private int idAluDis;
  private int idAluno;
  private int idDis;
  private double p1;
  private double p2;
  private String sitFinal;
  private Aluno alu;
  private Disciplina dis;

    public AlunoDisciplina(int idAluDis, int idAluno, int idDis, double p1, double p2, String sitFinal) {
        this.idAluDis = idAluDis;
        this.idAluno = idAluno;
        this.idDis = idDis;
        this.p1 = p1;
        this.p2 = p2;
        this.sitFinal = sitFinal;
    }

    public int getIdAluDis() {
        return idAluDis;
    }

    public void setIdAluDis(int idAluDis) {
        this.idAluDis = idAluDis;
    }

    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public int getIdDis() {
        return idDis;
    }

    public void setIdDis(int idDis) {
        this.idDis = idDis;
    }

    public double getP1() {
        return p1;
    }

    public void setP1(double p1) {
        this.p1 = p1;
    }

    public double getP2() {
        return p2;
    }

    public void setP2(double p2) {
        this.p2 = p2;
    }

    public String getSitFinal() {
        return sitFinal;
    }

    public void setSitFinal(String sitFinal) {
        this.sitFinal = sitFinal;
    }

    public Aluno getAlu() {
        return alu;
    }

    public void setAlu(Aluno alu) {
        this.alu = alu;
    }

    public Disciplina getDis() {
        return dis;
    }

    public void setDis(Disciplina dis) {
        this.dis = dis;
    }
    
}
