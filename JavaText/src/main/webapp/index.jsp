<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册页面</title>
     <style>
        /* 内部样式 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 300px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        /* 更多样式可在外部CSS文件中定义 */
    </style>
</head>
<body>
    <form action="RegisterServlet" method="post">
        <h2>注册页面</h2>
        <label for="username">姓名:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">密码:</label>
        <input type="password" id="password" name="password" required><br>

        <label for="confirm_password">确认密码:</label>
        <input type="password" id="confirm_password" name="confirm_password" required><br>
        <br>
        <label>性别:</label>
        <input type="radio" id="male" name="gender" value="male" required>
        <label for="male">男性</label>
        <input type="radio" id="female" name="gender" value="female" required>
        <label for="female">女性</label>
        <input type="radio" id="other" name="gender" value="other" required>
        <label for="other">其他</label><br>
        <br>
        <label for="occupation">职业:</label>
        <select id="occupation" name="occupation" required>
            <option value="student">学生</option>
            <option value="teacher">教师</option>
            <option value="worker">工人</option>
        </select><br>
        <br>
        <label>爱好:</label>
        <input type="checkbox" id="sports" name="hobbies" value="sports">
        <label for="sports">体育</label>
        <input type="checkbox" id="music" name="hobbies" value="music">
        <label for="music">音乐</label>
        <input type="checkbox" id="art" name="hobbies" value="art">
        <label for="art">美术</label>
        <input type="checkbox" id="other-hobby" name="hobbies" value="other">
        <label for="other-hobby">其他</label><br>
        <br>
        <label for="resume">简历:</label>
        <textarea id="resume" name="resume" rows="5" cols="40"></textarea><br>
        <br>
        <input type="submit" value="注册" style="width: 350px;height: 40px; background-color:forestgreen; border: none; border-radius: 5px">
    </form>
<%--4*4表格--%>



</body>
</html>
