package bean;

public class Students {
    private String sno;
    private String name;
    private String password;
    private String age;
    private String sex;
    private String tel;
    private String cno;
    private String email;
    private  String address;

    public Students(){}

    public String getSno(){
        return sno;
    }
    public void setSno(String sno){
        this.sno = sno;
    }

    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }

    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }

    public String getAge(){
        return age;
    }
    public void setAge(String age){
        this.age = age;
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


