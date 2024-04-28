package atvdd3.uc9;

import java.util.ArrayList;

public class Consulta {
    private int Id;
    private String Nome;
    public String Cpf;
    private String Telefone;
    private String Data;
    private String Paciente;
    private boolean ConsultaRealizada;
    private String Observacao;

    public Consulta() {
    }

    public Consulta(int Id, String Nome, String Cpf, String Telefone, String Data, String Paciente, boolean ConsultaRealizada) {
        this.Id = Id;
        this.Nome = Nome;
        this.Cpf = Cpf;
        this.Telefone = Telefone;
        this.Data = Data;
        this.Paciente = Paciente;
        this.ConsultaRealizada = ConsultaRealizada;
    }
    
    public int getId() {
        return Id;
    }
    
    public void setId(int Id) {
        this.Id = Id;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    public String getCpf() {
        return Cpf;
    }

    public void setCpf(String Cpf) {
        this.Cpf = Cpf;
    }

    public String getTelefone() {
        return Telefone;
    }

    public void setTelefone(String Telefone) {
        this.Telefone = Telefone;
    }

    public String getData() {
        return Data;
    }

    public void setData(String Data) {
        this.Data = Data;
    }

    public String getPaciente() {
        return Paciente;
    }

    public void setPaciente(String Paciente) {
        this.Paciente = Paciente;
    }

    public boolean getConsultaRealizada() {
        return ConsultaRealizada;
    }

    public void setConsultaRealizada(boolean ConsultaRealizada) {
        this.ConsultaRealizada = ConsultaRealizada;
    } 
    
    public String getObservacao() {
        return Observacao;
    }

    public void setObservacao(String Observacao) {
        this.Observacao = Observacao;
    }
}