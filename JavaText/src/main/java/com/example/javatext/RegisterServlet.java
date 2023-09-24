package com.example.javatext;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          // 设置响应的内容类型
        response.setContentType("text/html;charset=UTF-8");

        // 获取表单数据
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("confirm_password");
        String gender = request.getParameter("gender");
        String occupation = request.getParameter("occupation");
        String[] hobbies = request.getParameterValues("hobbies");
        String resume = request.getParameter("resume");
        // 密码验证
        if (password.length() < 3 || !password.equals(confirm_password)) {
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<head><title>注册失败</title></head>");
            out.println("<body>");
            out.println("<h1>注册失败！</h1>");
            out.println("<p>密码不得低于3位，并且两次输入的密码必须一致。</p>");
            out.println("</body>");
            out.println("</html>");
            return; // 如果密码验证失败，不继续进行注册
        }
        // 在控制台上输出收到的数据（用于调试）
        System.out.println("用户名: " + username);
        System.out.println("密码: " + password);
        System.out.println("性别: " + gender);
        System.out.println("职业: " + occupation);
        System.out.print("爱好: ");
        if (hobbies != null) {
            for (String hobby : hobbies) {
                System.out.print(hobby + " ");
            }
        }
        System.out.println();
        System.out.println("简历:\n" + resume);
        // 在响应中返回一条成功消息
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>注册成功</title></head>");
        out.println("<body>");
        out.println("<h1>注册成功！</h1>");
        out.println("<p>用户名: " + username + "</p>");
        out.println("<p>密码: " + password + "</p>");
        out.println("<p>性别: " + gender + "</p>");
        out.println("<p>职业: " + occupation + "</p>");
        out.println("<p>爱好: " + String.join(", ", hobbies) + "</p>");
        out.println("<p>简历:</p>");
        out.println("<pre>" + resume + "</pre>");
        out.println("</body>");
        out.println("</html>");


    }
}
