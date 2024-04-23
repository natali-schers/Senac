package atvdd2.uc9;

public class Recomendacoes {
    public double Calorias;

    public Recomendacoes() {}
    
    public Recomendacoes(double Calorias) {
        this.Calorias = Calorias;
    }

    public double getCalorias() {
        return Calorias;
    }

    public void setCalorias(double Calorias) {
        this.Calorias = Calorias;
    }
    
    public double CalcCarboidrato() {
        return Calorias * 0.5 / 4;
    }
    
    public double CalcProteína() {
        return Calorias * 0.25 / 4;
    }
    
    public double CalcGordura() {
        return Calorias * 0.25 / 9;
    }
}
