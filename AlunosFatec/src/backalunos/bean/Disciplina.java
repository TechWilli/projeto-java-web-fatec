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
public class Disciplina {
    
    private int id;
    private String turma;
    private String nomeDis;
    private String periodo;
    private String prof;

    public Disciplina(int id, String turma, String nomeDis, String periodo, String prof) {
        this.id = id;
        this.turma = turma;
        this.nomeDis = nomeDis;
        this.periodo = periodo;
        this.prof = prof;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTurma() {
        return turma;
    }

    public void setTurma(String turma) {
        this.turma = turma;
    }

    public String getNomeDis() {
        return nomeDis;
    }

    public void setNomeDis(String nomeDis) {
        this.nomeDis = nomeDis;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getProf() {
        return prof;
    }

    public void setProf(String prof) {
        this.prof = prof;
    }
    
    
    
}
