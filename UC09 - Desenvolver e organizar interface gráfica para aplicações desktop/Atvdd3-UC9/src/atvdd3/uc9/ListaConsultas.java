package atvdd3.uc9;

import java.util.ArrayList;
import javax.swing.JOptionPane;

public class ListaConsultas {

    public static ArrayList<Consulta> lista = new ArrayList<Consulta>();

    public static boolean CadastrarConsulta(Consulta c) {
        try {
            if (c.getNome() == null || c.getNome().isEmpty() || c.getCpf() == null || c.getCpf().isEmpty() || c.getData() == null || c.getData().isEmpty() || c.getTelefone() == null || c.getTelefone().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Preencha todos os campos para cadastrar a consulta!");
                return false;
            } else if (c.getTelefone().length() < 8 || c.getTelefone().length() > 11) {
                JOptionPane.showMessageDialog(null, "O telefone deve conter no mínimo 8 caracteres!");
                return false;
            } else if (c.getCpf().length() != 11) {
                JOptionPane.showMessageDialog(null, "O documento deve conter 11 caracteres!");
                return false;
            } else if (c.getData().length() != 8) {
                JOptionPane.showMessageDialog(null, "A data deve conter 8 caracteres (dia, mês e ano)!");
                return false;
            }  else {
                c.setId(lista.size() + 1);
                lista.add(c);
                return true;
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Ocorreu um erro ao cadastrar a consulta!");
            return false;
        }
    }

    public static ArrayList<Consulta> Listar() {
        return lista;
    }

    public static boolean ExcluirConsulta(int Id) {
        try {
            if (Id < 0) {
                JOptionPane.showMessageDialog(null, "Selecione um item da tabela!");
                return false;
            } else {
                lista.remove(Id);
                JOptionPane.showMessageDialog(null, "Excluído com sucesso!");
                return true;
            }
        } catch (Exception e) {
            System.out.println("Ocorreu um erro ao excluir o registro!");
        }
        return false;
    }
}
