package com.group4travels.controller;

import com.group4travels.dao.UserDao;
import com.group4travels.model.Login;
import com.group4travels.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value="/")
public class HomeController {
    @Autowired
    UserDao userDao;

    @RequestMapping(method = RequestMethod.GET)
    public String home(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("home");
        return "redirect:/index";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/index")
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("index");
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.GET, value = "/contactus")
    public ModelAndView contactus(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("contactus");
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.GET, value = "/cars")
    public ModelAndView cars(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("cars");
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.GET, value = "/hotels")
    public ModelAndView hotels(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("hotels");
        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/login")
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("login");
        modelAndView.addObject("login", new Login());
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.POST, value = "/login")
    public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response , @ModelAttribute("login") Login login) {
        ModelAndView modelAndView = new ModelAndView();
        final User user = userDao.get(login.getUsername());
        if(user.getUsername().equals(login.getUsername()) && user.getPassword().equals("password")) {
            modelAndView.setViewName ("index");
        } else {
            modelAndView.setViewName("logout");
        }
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.GET, value = "/signup")
    public ModelAndView signup(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("signup");
        modelAndView.addObject("user", new User());
        return modelAndView;
    }
    @RequestMapping(method = RequestMethod.POST, value = "/signup")
    public ModelAndView signupProcess(HttpServletRequest request, HttpServletResponse response , @ModelAttribute("user") User user) {
        userDao.save(user);
        ModelAndView modelAndView = new ModelAndView("index");
        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/logout")
    public ModelAndView logout() {
        ModelAndView modelAndView = new ModelAndView("logout");
        return modelAndView;
    }
}

