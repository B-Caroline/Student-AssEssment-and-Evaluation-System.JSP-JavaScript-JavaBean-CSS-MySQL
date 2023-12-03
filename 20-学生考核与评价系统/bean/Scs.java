package bean;

public class Scs {
    private String sno;
    private String scno;
    private String score;
    private String scname;
    private String tno;

    public Scs(){}

    public String getSno(){
        return sno;
    }
    public void setSno(String sno){
        this.sno = sno;
    }

    public String getScno(){
        return scno;
    }
    public void setScno(String scno){
        this.scno = scno;
    }

    public String getScore(){
        return score;
    }
    public void setScore(String score){
        this.score = score;
    }

    public String getScname() {
        return scname;
    }
    public void setScname(String scname) {
        this.scname = scname;
    }

    public String getTno() {
        return tno;
    }
    public void setTno(String tno) {
        this.tno = tno;
    }
}
