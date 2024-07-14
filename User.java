package com.food.foodweb.model;
import lombok.*;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private String username;
    private String password;
    private String sex;
    private int age;
    private String weight;
    private String height;
}
