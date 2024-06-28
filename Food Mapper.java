package com.food.foodweb.mapper;

import com.food.foodweb.model.Food;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface FoodMapper {
    @Select("select * from tb_food where name=#{name}")
    Food findByName(String name);

    @Select("select * from tb_food where name like concat(\"%\",#{name},\"%\")")
    List<Food>vagueFindByName(String name);

    @Select("select*from tb_food")
    List<Food> findAll();

    @Insert("insert into tb_food values(#{name},#{img},#{time},#{type},#{pop},#{way},#{culture},#{step})")
    boolean add(Food food);
}
