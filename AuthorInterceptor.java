package com.food.foodweb.interceptor;

import com.food.foodweb.model.Admin;
import com.food.foodweb.model.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthorInterceptor extends HandlerInterceptorAdapter {
    @Override
    
