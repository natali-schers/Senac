package atvdd2.uc9;

public class Imc {
    private double Altura;
    
    private double Peso;
    
    public Imc() {}

    public Imc(double Altura, double Peso) {
        this.Altura = Altura;
        this.Peso = Peso;
    }   

    public double getAltura() {
        return Altura;
    }

    public void setAltura(double Altura) {
        this.Altura = Altura;
    }

    public double getPeso() {
        return Peso;
    }

    public void setPeso(double Peso) {
        this.Peso = Peso;
    }
    
    public double CalculoImc() {
        return Peso / (Altura * Altura);
    }
}