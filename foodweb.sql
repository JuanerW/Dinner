SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin`  (
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_comment`;
CREATE TABLE `tb_comment`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO `tb_comment` VALUES ('Zhou Jie', 'Yangzhou Fried Rice', '2024-05-20 22:16:58');
INSERT INTO `tb_comment` VALUES ('Xiao Zhang', 'It should be Beggar’s Chicken~', '2024-05-20 22:17:13');
INSERT INTO `tb_comment` VALUES ('Xiao Zhang', 'Everything is delicious!!!', '2024-05-20 22:17:26');

-- ----------------------------
-- Table structure for tb_food
-- ----------------------------
DROP TABLE IF EXISTS `tb_food`;
CREATE TABLE `tb_food`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `popularity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `steps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `culture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recipe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_food
-- ----------------------------
INSERT INTO `tb_food` VALUES ('Cumin Prawn 2nd Gen', 'images/wan/sql/st2.jpg', '6 minutes', 'Home Cooking', 'Average', '9 steps', 'Cumin Prawn Description', 'Cumin Prawn Recipe');
INSERT INTO `tb_food` VALUES ('Stir-fried Water Spinach', 'images/wan/sql/16.3.jpg', '6 minutes', 'Home Cooking', 'Average', '6 steps', 'Stir-fried Water Spinach Description', 'Stir-fried Water Spinach Recipe');
INSERT INTO `tb_food` VALUES ('Zhajiang Noodles 3rd Gen', 'images/wan/sql/16.1.1.jpg', '10 minutes', 'Noodles', 'Average', '6 steps', 'Zhajiang Noodles 3rd Gen Description', 'Zhajiang Noodles 3rd Gen Recipe');
INSERT INTO `tb_food` VALUES ('Zhajiang Noodles 2nd Gen', 'images/wan/sql/16.1.jpg', '10 minutes', 'Noodles', 'Average', '6 steps', 'Zhajiang Noodles 2nd Gen Description', 'Zhajiang Noodles 2nd Gen Recipe');
INSERT INTO `tb_food` VALUES ('Zhajiang Noodles 5th Gen', 'images/wan/sql/16.1.2.jpg', '10 minutes', 'Noodles', 'Average', '7 steps', 'Zhajiang Noodles 5th Gen Description', 'Zhajiang Noodles 5th Gen Recipe');
INSERT INTO `tb_food` VALUES ('Zhajiang Noodles 6th Gen', 'images/wan/sql/16.1.3.jpg', '10 minutes', 'Noodles', 'Average', '7 steps', 'Zhajiang Noodles 6th Gen Description', 'Zhajiang Noodles 6th Gen Recipe');
INSERT INTO `tb_food` VALUES ('Zhajiang Noodles 4th Gen', 'images/wan/sql/16.1.4.jpg', '10 minutes', 'Noodles', 'Average', '6 steps', 'Zhajiang Noodles 4th Gen Description', 'Zhajiang Noodles 4th Gen Recipe');
INSERT INTO `tb_food` VALUES ('Baked Eggs with Tomatoes', 'images/wan/sql/4.3.jpg', '6 minutes', 'Home Cooking', 'Average', '7 steps', 'Baked Eggs with Tomatoes Description', 'Baked Eggs with Tomatoes Recipe');
INSERT INTO `tb_food` VALUES ('Simple Version Shaanxi Oil-splashed Noodles', 'images/wan/sql/21.2.jpg', '16 minutes', 'Noodles', 'Hot', '15 steps', 'Simple Version Shaanxi Oil-splashed Noodles Description', 'Simple Version Shaanxi Oil-splashed Noodles Recipe');
INSERT INTO `tb_food` VALUES ('Wife Cake', 'images/wan/sql/14.3.jpg', '21 minutes', 'Dessert', 'Average', '7 steps', 'Wife Cake Description', 'Wife Cake Recipe');
INSERT INTO `tb_food` VALUES ('Minced Pork with Eggplant', 'images/wan/sql/st1.jpg', '9 minutes', 'Home Cooking', 'Hot', '5 steps', 'Minced Pork with Eggplant Description', 'Minced Pork with Eggplant Recipe');
INSERT INTO `tb_food` VALUES ('Homemade Tujia Flavored Pancake', 'images/wan/sql/21.1.jpg', '20 minutes', 'Pancake', 'Average', '16 steps', 'Homemade Tujia Flavored Pancake Description', 'Homemade Tujia Flavored Pancake Recipe');
INSERT INTO `tb_food` VALUES ('Sesame Crispy Snack', 'images/wan/sql/14.1.jpg', '17 minutes', 'Dessert', 'Average', '10 steps', 'Sesame Crispy Snack Description', 'Sesame Crispy Snack Recipe');
INSERT INTO `tb_food` VALUES ('Stir-fried Tofu with Bean Paste', 'images/wan/sql/10.3.jpg', '16 minutes', 'Home Cooking', 'Average', '9 steps', 'Stir-fried Tofu with Bean Paste Description', 'Stir-fried Tofu with Bean Paste Recipe');
INSERT INTO `tb_food` VALUES ('Sweet and Sour Pork with Pineapple', 'images/wan/sql/10.2.jpg', '45 minutes', 'Home Cooking', 'Hot', '14 steps', 'Sweet and Sour Pork with Pineapple Description', 'Sweet and Sour Pork with Pineapple Recipe');
INSERT INTO `tb_food` VALUES ('Stir-fried Lamb with Scallions', 'images/wan/sql/10.1.jpg', '90 minutes', 'Hot Dish', 'Hot', '15 steps', 'Stir-fried Lamb with Scallions Description', 'Stir-fried Lamb with Scallions Recipe');
INSERT INTO `tb_food` VALUES ('Crispy Five-Spice Fried Potato Chips', 'images/wan/sql/14.2.jpg', '18 minutes', 'Fried Snack', 'Hot', '6 steps', 'Crispy Five-Spice Fried Potato Chips Description', 'Crispy Five-Spice Fried Potato Chips Recipe');
INSERT INTO `tb_food` VALUES ('Shaanxi Pasta', 'images/wan/sql/21.3.jpg', '15 minutes', 'Pasta', 'Average', '14 steps', 'Shaanxi Pasta Description', 'Shaanxi Pasta Recipe');
INSERT INTO `tb_food` VALUES ('Green Pepper and Eggplant Steamed Bun', 'images/wan/sql/4.1.jpg', '10 minutes', 'Home Cooking', 'Average', '4 steps', 'Green Pepper and Eggplant Steamed Bun Description', 'Green Pepper and Eggplant Steamed Bun Recipe');
INSERT INTO `tb_food` VALUES ('Steamed Pork Ribs with Mushrooms', 'images/wan/sql/16.2.jpg', '11 minutes', 'Home Cooking', 'Average', '12 steps', 'Steamed Pork Ribs with Mushrooms Description', 'Steamed Pork Ribs with Mushrooms Recipe');

-- ----------------------------
-- Table structure for tb_orderedfood
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderedfood`;
CREATE TABLE `tb_orderedfood`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_orderedfood
-- ----------------------------
INSERT INTO `tb_orderedfood` VALUES ('Zhou Jie', 'Shaanxi Pasta', '2024-05-20 14:06:53');
INSERT INTO `tb_orderedfood` VALUES ('Zhou Jie', 'Wife Cake', '2024-05-20 14:16:52');
INSERT INTO `tb_orderedfood` VALUES ('Zhou Jie', 'Baked Eggs with Tomatoes', '2024-05-20 19:55:25');
INSERT INTO `tb_orderedfood` VALUES ('Zhou Jie', 'Zhajiang Noodles 3rd Gen', '2024-05-20 20:55:51');
INSERT INTO `tb_orderedfood` VALUES ('Xiao Zhang', 'Zhajiang Noodles', '2024-05-20 22:14:37');
INSERT INTO `tb_orderedfood` VALUES ('Xiao Zhang', 'Zhajiang Noodles 6th Gen', '2024-05-20 22:14:46');
INSERT INTO `tb_orderedfood` VALUES ('Xiao Zhang', 'Stir-fried Water Spinach', '2024-05-20 22:15:05');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
                            `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `age` int(255) NULL DEFAULT NULL,
                            `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                            PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1234', '456', 'Male', 14, '42.5 kg', '160 cm');
INSERT INTO `tb_user` VALUES ('456', '456', 'Male', 17, '56 kg', '175 cm');
INSERT INTO `tb_user` VALUES ('aa', 'aa', 'Male', 36, '45 kg', '185 cm');
INSERT INTO `tb_user` VALUES ('user', '13', 'Male', 0, '7 kg', '173 cm');
INSERT INTO `tb_user` VALUES ('Zhou Jie', 'zhoujie', 'Male', 21, '54 kg', '174 cm');
INSERT INTO `tb_user` VALUES ('Xiao Zhang', '123', 'Male', 22, '56 kg', '192 cm');
INSERT INTO `tb_user` VALUES ('Guo Yunqi', '123', 'Male', 21, '50 kg', '175 cm');

SET FOREIGN_KEY_CHECKS = 1;