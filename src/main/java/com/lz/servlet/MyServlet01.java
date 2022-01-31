package com.lz.servlet;

import com.lz.domain.Student;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MyServlet01 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入到doGet方法，处理get请求");
        String name=request.getParameter("name");
        System.out.println("name:"+name);
        Student student=new Student("A0001","zs","23");
        String str="{\"id\":\""+student.getId()+"\",\"name\":\""+ student.getName()+"\",\"age\":"+student.getAge()+"}";
        response.getWriter().print(str);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入到doPost方法，处理get请求");
    }
}
