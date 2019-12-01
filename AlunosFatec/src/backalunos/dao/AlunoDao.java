/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package backalunos.dao;

import backalunos.bean.Aluno;
import backalunos.util.ConexaoDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author William
 */

public class AlunoDao {

    private final Connection c;
    
    public AlunoDao() throws SQLException, ClassNotFoundException{
        this.c = new ConexaoDB().getConnection();
    }
    
    public Aluno busca(Aluno alu) throws SQLException{
        String sql = "select * from alunos WHERE id = ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
            // seta os valores
            stmt.setInt(1,alu.getIdAlu());
            // executa
            ResultSet rs = stmt.executeQuery();
            Aluno retorno = null;
            while (rs.next()) {      
            // criando o objeto Aluno
                retorno = new Aluno(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5));
            // adiciona o alu à lista de alus
            }
            stmt.close();
        return retorno;
   }
    
    public Aluno altera(Aluno alu) throws SQLException{
        String sql = "UPDATE alunos SET login = ?, senha = ?, curso = ?, ra = ? WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,alu.getLogin());
        stmt.setString(2,alu.getSenha());
        stmt.setString(3,alu.getCurso());
        stmt.setString(4,alu.getRa());
        stmt.setInt(5,alu.getIdAlu());

        // executa
        stmt.execute();
        stmt.close();
        return alu;
    }

    public Aluno exclui(Aluno alu) throws SQLException{
        String sql = "delete from alunos WHERE id = ?";
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql);
        // seta os valores
        stmt.setInt(1,alu.getIdAlu());
        // executa
        stmt.execute();
        stmt.close();
        c.close();
        return alu;
    }
    
    public Aluno validaLogin(Aluno alu) throws SQLException{
        // cria o select para ser executado no banco de dados 
        String sql = "select * from alunos WHERE login = ? AND senha = ?";
        // prepared statement para seleção
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,alu.getLogin());
        stmt.setString(2,alu.getSenha());
        // executa
        ResultSet rs = stmt.executeQuery();
        // percorrendo o rs
        Aluno retorno = null;
        while (rs.next()) {      
            // criando o objeto Aluno
            retorno = new Aluno(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5));
            // adiciona o alu à lista de alus
        }
        stmt.close();
        return retorno;
    }
    
    public List<Aluno> lista(Aluno aluEnt) throws SQLException{
         // alus: array armazena a lista de registros

        List<Aluno> alus = new ArrayList<>();
        
        String sql = "select * from alunos where login like ?";
        PreparedStatement stmt = this.c.prepareStatement(sql);
        // seta os valores
        stmt.setString(1,"%" + aluEnt.getLogin() + "%");
        
        ResultSet rs = stmt.executeQuery();
        
        while (rs.next()) {      
            // criando o objeto Aluno
            Aluno alu = new Aluno(
                rs.getInt(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5)
            );
            // adiciona o alu à lista de alus
            alus.add(alu);
        }
        
        rs.close();
        stmt.close();
        return alus;
        
    }
   
    public Aluno inseri(Aluno alu) throws SQLException{
        String sql = "insert into alunos" + " (login, senha, curso, ra)" + " values (?,?,?,?)";
    
        // prepared statement para inserção
        PreparedStatement stmt = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);

        // seta os valores
        stmt.setString(1,alu.getLogin());
        stmt.setString(2,alu.getSenha());
        stmt.setString(3,alu.getCurso());
        stmt.setString(4,alu.getRa());

        // executa
        stmt.executeUpdate();
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            int id = rs.getInt(1);
            alu.setIdAlu(id);
        }
        stmt.close();
        return alu;
    }

}
