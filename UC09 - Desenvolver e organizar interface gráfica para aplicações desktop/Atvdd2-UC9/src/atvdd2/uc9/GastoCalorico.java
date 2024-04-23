package atvdd2.uc9;

public class GastoCalorico {

    public String Genero;

    public double Peso;

    public double Altura;

    public int Idade;

    public String Nivel;

    public String getGenero() {
        return Genero;
    }

    public GastoCalorico() {
    }

    public GastoCalorico(String Genero, double Peso, double Altura, int Idade, String Nivel) {
        this.Genero = Genero;
        this.Peso = Peso;
        this.Altura = Altura;
        this.Idade = Idade;
        this.Nivel = Nivel;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public double getPeso() {
        return Peso;
    }

    public void setPeso(double Peso) {
        this.Peso = Peso;
    }

    public double getAltura() {
        return Altura;
    }

    public void setAltura(double Altura) {
        this.Altura = Altura;
    }

    public int getIdade() {
        return Idade;
    }

    public void setIdade(int Idade) {
        this.Idade = Idade;
    }

    public String getNivel() {
        return Nivel;
    }

    public void setNivel(String Nivel) {
        this.Nivel = Nivel;
    }

    public double GastoBasal() {
        if (Genero == "Mulher") {
            return 65 + (9.6 * Peso) + (1.9 * Altura) - (4.7 * Idade);
        } else {
            return 66 + (13.8 * Peso) + (5 * Altura) - (6.8 * Idade);
        }
    }

    public double GastoTotal() {
        double total = 0;

        switch (Nivel) {
            case "Sedentário":
                total = GastoBasal() * 1.2;
                break;
            case "Leve (exercício leve 1 a 3 dias/semana)":
                total = GastoBasal() * 1.375;
                break;
            case "Moderado (exercício moderado 3 a 5 dias/semana)":
                total = GastoBasal() * 1.55;
                break;
            case "Ativo (exercício pesado 5 a 6 dias/semana)":
                total = GastoBasal() * 1.725;
                break;
            case "Extremamente ativo (exercício pesado diário)":
                total = GastoBasal() * 1.9;
                break;
        }
        
        return total;
    }
}
