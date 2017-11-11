package calu;

public class javaBean {
    public double sum;
    public double f;
    public double s;
    public int n;
    public javaBean(){};
	public javaBean(double ff,double ss,int nn)
    {
    	this.f = ff;
    	this.s = ss;
    	this.n = nn;
    }
	
	public double getF() {
		return f;
	}
	public void setF(double f) {
		this.f = f;
	}
	public double getS() {
		return s;
	}
	public void setS(double s) {
		this.s = s;
	}
	public int getN() {
		return n;
	}
	public void setN(int n) {
		this.n = n;
	}
	public double getSum() {
		return sum;
	}
	public void setSum(double sum) {
		this.sum = sum;
	}
	
}
