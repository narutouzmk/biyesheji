package com.org.design.controller.test;

import com.org.design.controller.RegisterController;
import com.org.design.domain.user.User;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by BIN on 2018/5/16.
 */
public class RegisterTest {
    public static  void main(String...args){
        ModelAndView modelAndView2;
//        HttpSession httpSession = new HttpSession() {
//        }
        RegisterController registerController = new RegisterController();
        User user = new User();
        ModelAndView modelAndView1 = new ModelAndView();
        user.setUser_id(10);
        user.setLogin_name("zoubin");
        user.setPassword("123456789zzzz");
        user.setE_mail("316324334@qq.com");
        user.setPhone_number("18840818956");
        user.setRole("user");
        user.setHead_img("hashiqi2.jpg");

        //modelAndView2 = registerController.register(user,modelAndView1，);
        //System.out.println(modelAndView2.getViewName());
    }
}
