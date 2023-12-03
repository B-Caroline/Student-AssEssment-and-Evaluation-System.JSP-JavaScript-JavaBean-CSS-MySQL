package bean;
import java.sql.*;

public class JDBCConnection {

    Connection con;                                                              //java.sql.Connection接口的对象con
    ResultSet rs;
    PreparedStatement ps = null;                                            //PreparedStatement对象ps

    public JDBCConnection() {                                               //构造方法，加载驱动
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("驱动加载成功The Database Driver Loading successfully !!!");
        }catch(Exception e) {
            System.out.println("The Database Driver Loading failed !!!");
            e.printStackTrace();
        }
    }

    public void creatConnection() {                                     //定义连接方法
        try {
            String url = "jdbc:mysql://localhost:3306/client?useUnicode=true&characterEncoding=UTF-8";
            String userName = "root";
            String password = "123456";
            con=DriverManager.getConnection(url, userName, password);
            con.setAutoCommit(true);
            if(con != null) {
                System.out.println("数据库连接成功connection successful !!!");
            }
        }catch(SQLException e) {
            System.out.println("failed !!!");
            e.printStackTrace();
        }
    }

    public ResultSet update(String name,String address,String sex, String birthday,String tel) {   //定义修改方法
        if(con==null) {
            creatConnection();
        }try {
            //预编译SQL语句
            ps = con.prepareStatement("update users set address = ?,sex = ?,birthday = ?,tel = ? where name = ?");
            ps.setString(1, address);                                             //对第二个占位符赋值Address......
            ps.setString(2, sex);                                                  //对第一个占位符赋值Name
            ps.setString(3, birthday);
            ps.setString(4, tel);
            ps.setString(5, name);
            ps.executeUpdate();                                                    //执行预编译查询语句
            rs = executeQuery("select * from users");                        //查询插入数据后的users表，返回结果集rs
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public ResultSet executeQuery(String sql) {                          //定义静态查询方法
        try {
            if (con == null) {
                creatConnection();
            }
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);                                      //执行静态SQL语句
            return rs;
        }catch (Exception e) {
            return null;
        }
    }

    public ResultSet executeQuery3(String name) {                     //定义动态查询方法
        try {
            if (con == null) {
                creatConnection();
            }
            ps = con.prepareStatement("select* from users where name = ? ");      //预编译SQL语句
            ps.setString(1, name);                                              //对占位符'？'赋值
            rs = ps.executeQuery();                                             //执行预编译查询语句
        }catch(Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    public ResultSet insert(String name,String address,String sex, String birthday,String tel ) {       //定义动态新增数据方法
        if(con == null) {
            creatConnection();
        }try {
            ps = con.prepareStatement("insert into users(name,address,sex,birthday,tel)"+"values(?,?,?,?,?)");  //预编译SQL语句
            ps.setString(1, name);                                                //对第一个占位符赋值Name
            ps.setString(2, address);                                             //对第二个占位符赋值Address......
            ps.setString(3, sex);
            ps.setString(4, birthday);
            ps.setString(5, tel);
            ps.executeUpdate();                                                    //执行预编译查询语句
            rs = executeQuery("select * from users");                        //查询插入数据后的users表，返回结果集rs
        }catch(Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    public ResultSet delete(String name) {                               //定义删除方法
        if(con == null) {
            creatConnection();
        }try {
            ps = con.prepareStatement("delete from users where name = ?");
            ps.setString(1, name);
            ps.executeUpdate();                                          //执行预编译查询语句
            rs = executeQuery("select * from users");                //查询删除数据后的users表，返回结果集rs
        }catch(Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    public Boolean exit(String name) {
        try {
            if(executeQuery3(name).next()) {
                return true;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void closeConnection() {                                              //关闭
        try {
            if(rs != null) rs.close();
            if(rs != null) con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

