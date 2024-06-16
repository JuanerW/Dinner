package com.food.foodweb.controller;

import com.food.foodweb.model.Admin;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.User;
import com.food.foodweb.service.AdminService;
import com.food.foodweb.service.FoodService;
import com.food.foodweb.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
