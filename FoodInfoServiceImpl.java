package com.food.foodweb.service.iml;

import com.food.foodweb.mapper.FoodInfoMapper;
import com.food.foodweb.model.Comment;
import com.food.foodweb.model.Food;
import com.food.foodweb.model.OrderedFood;
import com.food.foodweb.service.FoodInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class FoodInfoServiceImpl implements FoodInfoService {

    public FoodInfoMapper foodinfoMapper;

    @Autowired
    public void setFoodInfoDao(FoodInfoMapper foodinfoMapper) {
        this.foodinfoMapper = foodinfoMapper;
    }

    @Override
    public Food findFoodByName(String name) {
        return foodinfoMapper.findfood(name);
    }
}
