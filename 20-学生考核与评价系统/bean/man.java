package bean;
import java.sql.*;

public class man {
    Connection con;                                                              //java.sql.Connection接口的对象con
    ResultSet rs;
    PreparedStatement ps = null;                                            //PreparedStatement对象ps

    public man() {                                               //构造方法，加载驱动
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("驱动加载成功!!!");
        } catch (Exception e) {
            System.out.println("The Database Driver Loading failed !!!");
            e.printStackTrace();
        }
    }

    public void createConnection() {                                     //定义连接方法
        try {
            String url = "jdbc:mysql://localhost:3306/student?serverTimezone=GMT%2b8";
            String userName = "root";
            String password = "123456";
            con = DriverManager.getConnection(url, userName, password);
            con.setAutoCommit(true);
            if (con != null) {
                System.out.println("数据库连接成功!!!");
            }
        } catch (SQLException e) {
            System.out.println("failed !!!");
            e.printStackTrace();
        }
    }

    public ResultSet Query1(String mno) {                     //定义动态查询方法
        try {
            if (con == null) {
                createConnection();
            }
            ps = con.prepareStatement("select* from manager where mno = ? ");      //预编译SQL语句
            ps.setString(1, mno);                                              //对占位符'？'赋值
            rs = ps.executeQuery();                                             //执行预编译查询语句
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    public ResultSet Query2(String sql) {                          //定义静态查询方法
        try {
            if (con == null) {
                createConnection();
            }
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);                                      //执行静态SQL语句
            return rs;
        }catch (Exception e) {
            return null;
        }
    }

    public Boolean exit(String mno) {
        try {
            if (Query1(mno).next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void closeConnection() {                                              //关闭
        try {
            if (rs != null) rs.close();
            if (rs != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
