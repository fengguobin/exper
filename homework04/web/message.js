/**
 * Created by a on 2017/4/15.
 */

function check(){
    if (document.form1.name.value=="")
    {window.alert("姓名不能为空");
        document.form1.name.focus();
        return false;
    }
    if (document.form1.pwd.value=="")
    {window.alert("密码不能为空");
        document.form1.pwd.focus();
        return false;
    }
    if (document.form1.age.value=="")
    {window.alert("年龄不能为空");
        document.form1.age.focus();
        return false;
    }
    return true;
}
