import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Locale;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Main {

    public static void main(String args[]) {
        JFrame tela = new JFrame();
        JPanel painel = new JPanel();
        JLabel texto = new JLabel("Digite o valor da venda: ");
        JTextField campo = new JTextField(10);
        JButton botao = new JButton("Registrar");

        // Adicionando um ouvite de ação ao botão
        botao.addActionListener(
                new ActionListener() {
            @Override

            // Executa o código abaixo quando o botão é clicado
            public void actionPerformed(ActionEvent e) {
                Double valor = Double.parseDouble(campo.getText());
                
                if(valor <= 0) {
                    JOptionPane.showMessageDialog(null, "Enrada inválida! O valor deve ser maior que 0.", "Erro!", 0);
                } else if (valor > 500){
                    Double desconto = Double.parseDouble(JOptionPane.showInputDialog("Digite o percentual de desconto: "));
                    
                    if(desconto > 0 && desconto <= 100) {
                        valor -= valor * desconto / 100;
                        JOptionPane.showMessageDialog(null, "O valor final da venda é: R$" + valor);
                    } else {
                        JOptionPane.showMessageDialog(null, "Entrada inválida! O percentual de desconto deve ser maior que 0 e menor ou igual a 100!", "Erro!", 0);
                    }
                } else {
                    JOptionPane.showMessageDialog(null, "O valor final da venda é: R$" + valor);
                }
            }
        });
        
        painel.add(texto);
        painel.add(campo);
        painel.add(botao);
        
        tela.add(painel);
        tela.setVisible(true);
        tela.setMinimumSize(new Dimension(350, 200));
        tela.setLocationRelativeTo(null);
        tela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        tela.pack();
    }
}