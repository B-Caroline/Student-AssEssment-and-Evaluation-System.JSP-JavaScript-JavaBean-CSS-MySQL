package bean;
import java.sql.*;

public class stu {
    Connection con;                                              //java.sql.Connection接口的对象con
    ResultSet rs;                                                     //ResultSet结果集对象rs
    PreparedStatement ps = null;                      //PreparedStatement对象ps

    //构造方法，加载驱动
    public stu() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("驱动加载成功!!!");
        } catch (Exception e) {
            System.out.println("The Database Driver Loading failed !!!");
            e.printStackTrace();
        }
    }

    //定义连接方法
    public void CreateConnection() {
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

    //传入scno查询course表
    public ResultSet QueryCourse(String scno) {
        try {
            if (con == null) {
                this.CreateConnection();
            }
            ps = con.prepareStatement("select* from course where scno = ? ");      //预编译SQL语句
            ps.setString(1, scno);                                              //对占位符'？'赋值
            rs = ps.executeQuery();                                             //执行预编译查询语句
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    //传入sno和scno查询sc表
    public ResultSet QuerySC(String sno, String scno) {
        try {
            if (con == null) {
                this.CreateConnection();
            }
            ps = con.prepareStatement("select* from sc where sno = ? and scno = ?");      //预编译SQL语句
            ps.setString(1, sno);                    //对占位符'？'赋值
            ps.setString(2, scno);
            rs = ps.executeQuery();                                             //执行预编译查询语句
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    //传入sno查询student表 （动态查询方法）
    public ResultSet QueryStudent(String sno) {
        try {
            if (con == null) {
                this.CreateConnection();
            }
            ps = con.prepareStatement("select* from student where sno = ? ");      //预编译SQL语句
            ps.setString(1, sno);                                              //对占位符'？'赋值
            rs = ps.executeQuery();                                             //执行预编译查询语句
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    //传入tno查询teacher表 （动态查询方法）
    public ResultSet QueryTeacher(String tno) {
        try {
            if (con == null) {
                this.CreateConnection();
            }
            ps = con.prepareStatement("select* from teacher where tno = ? ");      //预编译SQL语句
            ps.setString(1, tno);                                              //对占位符'？'赋值
            rs = ps.executeQuery();                                             //执行预编译查询语句
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    //传入任意SQL查询（静态查询方法）
    public ResultSet Query(String sql) {
        try {
            if (con == null) {
                CreateConnection();
            }
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);                                      //执行静态SQL语句
            return rs;
        } catch (Exception e) {
            return null;
        }
    }

    //Student学生修改部分个人信息(静态SQL语句）
    public ResultSet UpdatePartOfStudent(String sql, String sno) {
        try {
            if (con == null) {
                CreateConnection();
            }
            Statement stmt = con.createStatement();
            stmt.executeUpdate(sql);
            rs = QueryStudent(sno);
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    //teacher教师修改部分个人信息(静态SQL语句）
    public ResultSet UpdatePartOfTeacher(String sql, String tno) {
        try {
            if (con == null) {
                CreateConnection();
            }
            Statement stmt = con.createStatement();
            stmt.executeUpdate(sql);
            rs = QueryTeacher(tno);
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    //Manager管理员修改学生表(预编译SQL语句)
    public ResultSet UpdateToStudent(String sno, String name, String password, String age, String sex, String tel, String cno, String email, String address) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("update student set sno = ?,name = ?,password = ?, age = ?,sex = ?,tel = ?,cno = ?,email = ?,address = ? where sno = ?");
            ps.setString(1, sno);                        //对第一个占位符赋值sno
            ps.setString(2, name);
            ps.setString(3, password);
            ps.setString(4, age);
            ps.setString(5, sex);
            ps.setString(6, tel);
            ps.setString(7, cno);
            ps.setString(8, email);                  //对第八个占位符赋值email
            ps.setString(9, address);             //对第九个占位符赋值address
            ps.setString(10, sno);
            ps.executeUpdate();                                                    //执行预编译查询语句
            rs = QueryStudent(sno);
            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    //Manager管理员修改教师表(预编译SQL语句)
    public ResultSet UpdateToTeacher(String tno, String tname, String password, String sex, String tel, String cno, String email, String address) {
        if (con == null) {
            CreateConnection();
        }
        try {
            /* 预编译SQL语句 */
            ps = con.prepareStatement("update teacher set tno = ?,tname = ?,password = ?,sex = ?,tel = ?,cno = ?,email = ?,address = ? where tno = ?");
            ps.setString(1, tno);                        //对第一个占位符赋值sno
            ps.setString(2, tname);
            ps.setString(3, password);
            ps.setString(4, sex);
            ps.setString(5, tel);
            ps.setString(6, cno);
            ps.setString(7, email);
            ps.setString(8, address);             //对第八个占位符赋值address
            ps.setString(9, tno);                      //对第九个占位符赋值address
            ps.executeUpdate();                                                     //执行预编译查询语句
            rs = QueryTeacher(tno);
            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    //Teacher教师更新成绩sc表(预编译SQL语句)
    public Boolean UpdateSc(String scno, String sno, String score) {
        if (con == null) {
            CreateConnection();
        }
        try {
            /* 预编译SQL语句 */
            ps = con.prepareStatement("update sc set score = ? where scno = ? and sno = ?");
            ps.setString(1, score);                        //对第一个占位符赋值sno
            ps.setString(2, scno);
            ps.setString(3, sno);
            ps.executeUpdate();                                                     //执行预编译查询语句
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    //Teacher教师添加成绩sc表(预编译SQL语句)
    public Boolean InsertSc(String scno, String sno, String score) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("insert into sc(scno,sno,score)" + "values(?,?,?)");
            ps.setString(1, scno);
            ps.setString(2, sno);
            ps.setString(3, score);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //Manager管理员向学生表添加(预编译SQL语句)
    public ResultSet InsertToStudent(String sno, String name, String password, String age, String sex, String tel, String cno, String email, String address) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("insert into student(sno,name,password,age,sex,tel,cno,email,address)" + "values(?,?,?,?,?,?,?,?,?)");  //预编译SQL语句
            ps.setString(1, sno);                        //对第一个占位符赋值sno
            ps.setString(2, name);
            ps.setString(3, password);
            ps.setString(4, age);
            ps.setString(5, sex);
            ps.setString(6, tel);
            ps.setString(7, cno);
            ps.setString(8, email);                  //对第八个占位符赋值email
            ps.setString(9, address);            //对第九个占位符赋值address
            ps.executeUpdate();                                                    //执行预编译查询语句
            rs = Query("select * from student");               //查询插入数据后的student表，返回结果集rs
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    //Manager管理员向教师表添加(预编译SQL语句)
    public ResultSet InsertToTeacher(String tno, String tname, String password, String sex, String tel, String cno, String email, String address) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("insert into teacher(tno,tname,password,sex,tel,cno,email,address)" + "values(?,?,?,?,?,?,?,?)");  //预编译SQL语句
            ps.setString(1, tno);                        //对第一个占位符赋值tno
            ps.setString(2, tname);
            ps.setString(3, password);
            ps.setString(4, sex);
            ps.setString(5, tel);
            ps.setString(6, cno);
            ps.setString(7, email);
            ps.setString(8, address);
            ps.executeUpdate();                                                    //执行预编译查询语句
            rs = Query("select * from teacher");               //查询插入数据后的teacher表，返回结果集rs
            return rs;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    //Manager管理员向课程表添加(预编译SQL语句)
    public Boolean InsertToCourse(String scno, String scname, String tno) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("insert into course(scno,scname,tno)" + "values(?,?,?)");  //预编译SQL语句
            ps.setString(1, scno);                        //对第一个占位符赋值tno
            ps.setString(2, scname);
            ps.setString(3, tno);
            ps.executeUpdate();                                                    //执行预编译查询语句
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //Manager管理员向班级表添加(预编译SQL语句)
    public Boolean InsertToClass(String cno, String cname, String major, String tno) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("insert into class(cno,cname,major,tno)" + "values(?,?,?,?)");  //预编译SQL语句
            ps.setString(1, cno);                        //对第一个占位符赋值tno
            ps.setString(2, cname);
            ps.setString(3, major);
            ps.setString(4, tno);
            ps.executeUpdate();                                                    //执行预编译查询语句
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //Manager管理员删除学生表(预编译SQL语句)
    public Boolean DeleteStudent(String sno) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("delete from student where sno = ?");
            ps.setString(1, sno);
            ps.executeUpdate();                                                 //执行预编译查询语句
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //Manager管理员删除教师表(预编译SQL语句)
    public Boolean DeleteTeacher(String tno) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("delete from teacher where tno = ?");
            ps.setString(1, tno);
            ps.executeUpdate();                                                 //执行预编译查询语句
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    //关闭
    public void closeConnection() {
        try {
            if (rs != null) rs.close();
            if (rs != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //学生修改密码
    public Boolean UpdateStuPassword(String pwd, String sno) {
        if (con == null) {
            CreateConnection();
        }
            try {
                ps = con.prepareStatement("update student set password = ? where sno = ?");
                ps.setString(1, pwd);
                ps.setString(2, sno);
                ps.executeUpdate();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

    //教师修改密码
    public Boolean UpdateTeaPassword(String pwd, String tno) {
        if (con == null) {
            CreateConnection();
        }
        try {
            ps = con.prepareStatement("update teacher set password = ? where tno = ?");
            ps.setString(1, pwd);
            ps.setString(2, tno);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}