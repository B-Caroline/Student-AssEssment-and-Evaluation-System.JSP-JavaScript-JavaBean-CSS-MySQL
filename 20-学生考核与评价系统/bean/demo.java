package bean;

import java.sql.ResultSet;

public class demo {
    public static void main(String[] args) {
//        String sno = "11";
//        String tel = "1511586";
//        String email = "11222233333@qq.com";
//        String address = "天津市";
        tea con = new tea();
        ResultSet rs = con.Query2("select * from teacher where tno = 11");
        try{
            rs.next();
            System.out.println(rs.getString(4));
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}

