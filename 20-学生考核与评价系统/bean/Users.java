package bean;

public class Users {
    private String name;
    private String address;
    private String sex;
    private String birthday;
    private String tel;

    public Users() {
        super();
    }

    public Users(String name,String address,String sex,String birthday,String tel){
        this.name=name;
        this.address=address;
        this.sex=sex;
        this.birthday=birthday;
        this.tel=tel;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name=name;
    }
    //
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address=address;
    }
    //
    public String getBirthday() {
        return birthday;
    }
    public void setBirthday(String birthday) {
        this.birthday=birthday;
    }
    //
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex=sex;
    }
    //
    public String getTel() {
        return tel;
    }
    public void setTel(String tel) {
        this.tel=tel;
    }

    public String toString() {
        return "Users{"+"name="+name+"  address="+address+"  birthday="+birthday+"  sex="+sex+"  tel="+tel+"}";
    }
}

