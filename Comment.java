package com.food.foodweb.model;
import lombok.*;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
    private String username;
    private String comment;
    private String date;
}
