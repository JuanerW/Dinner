package com.food.foodweb.controller;

import com.food.foodweb.model.Comment;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.OrderedFood;
import com.food.foodweb.service.FoodInfoService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FoodInfoController {
    public FoodInfoService foodinfoService;

    @Autowired
    public void setFoodInfoService(FoodInfoService foodinfoService) {
        this.foodinfoService = foodinfoService;
    }

    @GetMapping("/findinfo")
    public String findFoodinfoByName(String name, Model model) {
        Food food = foodinfoService.findFoodByName(name);
        model.addAttribute("food", food);
        return "make";
    }
}
