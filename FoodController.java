package com.food.foodweb.controller;

import com.food.foodweb.model.Food;
import com.food.foodweb.service.FoodService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class FoodController {
    public FoodService foodService;

    @Autowired
    public void setFoodService(FoodService foodService) {
        this.foodService = foodService;
    }

    @GetMapping("/sy")
    public String tosy() {
        return "sy";
    }
