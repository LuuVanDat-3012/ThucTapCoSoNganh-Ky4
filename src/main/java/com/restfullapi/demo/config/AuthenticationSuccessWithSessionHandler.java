package com.restfullapi.demo.config;

import com.restfullapi.demo.Entity.User;
import com.restfullapi.demo.Service.UserJPA;
import lombok.extern.java.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationSuccessWithSessionHandler extends SavedRequestAwareAuthenticationSuccessHandler implements
        AuthenticationSuccessHandler, LogoutSuccessHandler {
    public static final String USERNAME = "username";
    public static final String PASSWORD = "password";
    @Autowired
    UserJPA userJPA;

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        request.getSession().removeAttribute(USERNAME);
        request.getSession().removeAttribute(PASSWORD);
    }

//    @Override
//    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authentication) throws IOException, ServletException {
//
//        HttpSession session = request.getSession();
//        String username = request.getParameter(USERNAME);
//        String userId = userJPA.findIdByUsername(username);
//        request.getSession().setAttribute(USERNAME, request.getParameter(USERNAME));
//        request.getSession().setAttribute("userid", userId);
//        session.setAttribute("messageLoginError", "");
//        response.sendRedirect("/getPhone");
//        chain.doFilter(request, response );
//    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = request.getParameter(USERNAME);
        request.getSession().setAttribute(USERNAME, userName );
        session.setAttribute("messageLoginError", "");
        String url = (String) session.getAttribute("url");
        if (url == null){
            response.sendRedirect("/getPhone");
        }else {
            response.sendRedirect(url);
        }
        super.onAuthenticationSuccess(request, response, authentication);
    }
}
