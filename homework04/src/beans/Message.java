package beans;

import util.DBUtil;

import java.util.List;
import java.util.Map;

/**
 * Created by a on 2017/4/15.
 */
public class Message {
    //数据库和表的基本信息
    private String id;
    private String name;
    private String pwd;
    private String age;
    private DBUtil db;
    public Message(){
        db = new DBUtil();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }
    public List getAllMessages(){
        List messages = null;
        String sql = "select * from message_info";
        messages = db.getList(sql,null);
        return messages;
    }
    public int addMessage(){
        int result = 0;
        String sql = "insert into message_info values(null,?,?,?)";
        String[] params ={name,pwd,age};
        result = db.update(sql,params);
        return result;
    }
    public Map getMessage(){
        Map message = null;
        String sql = "select * from message_info where id=?";
        String[] params ={id};
        message = db.getMap(sql,params);
        return message;
    }
    public Map getNameMessage(){
        Map message = null;
        String sql = "select * from message_info where namw=?";
        String[] params = {name};
        message = db.getMap(sql,params);
        return message;
    }
    public int updateMessage(){
        int result = 0;
        String sql = "update message_info set name=?,pwd=?,age=? where id=?";
        String[] params = {name,pwd,age,id};
        result = db.update(sql,params);
        return result;
    }
    public int delMessage(){
        int result = 0;
        String sql = "delete from message_info where id=?";
        String[] params = {id};
        result = db.update(sql, params);
        return result;
    }
}
