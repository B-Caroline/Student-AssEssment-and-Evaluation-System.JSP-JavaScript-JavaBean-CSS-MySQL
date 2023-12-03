package bean;

public class Teachers {
    private String tno;
    private String tname;
    private String password;
    private String sex;
    private String tel;
    private String cno;
    private String email;
    private  String address;

    public Teachers(){}

    public String getTno(){
        return tno;
    }
    public void setTno(String tno){
        this.tno = tno;
    }

    public String getTname(){
        return tname;
    }
    public void setTname(String tname){
        this.tname = tname;
    }

    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }

    public String getSex(){
        return sex;
    }
    public void setSex(String sex){
        this.sex = sex;
    }

    public String getTel(){
        return tel;
    }
    public void setTel(String tel){
        this.tel = tel;
    }

    public String getCno(){
        return cno;
    }
    public void setCno(String cno){
        this.cno = cno;
    }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }
}


