@Controller
public class UserController {
    @GetMapping("/edituser")
    public String toEdit(String username, Model model) {
        User user = userService.findUserByName(username);
        model.addAttribute("u", user);
        return "usercenter";
    }

    @PostMapping("/edituser")
    public String doEdit(User user, Model model) {
        boolean ret = userService.updateuser(user);
        System.out.println(ret);
        if (ret) {
            return "redirect:usersy";
        } else {
            return "usercenter";
        }
    }

    @GetMapping("/UserManageSy")
    public String CommentManageSy(Model model) {
        List<User> users = userService.findAllUser();
        model.addAttribute("users", users);
        return "usermanagesy";
    }

    @GetMapping("/userDel")
    public String userDel(String name) {
        boolean ret = userService.delUserByName(name);
        return "redirect:UserManageSy";
    }

    @GetMapping("/userEditByManager")
    public String userEdit(String username, Model model) {
        User user = userService.findUserByName(username);
        model.addAttribute("userE", user);
        return "useredit";
    }

    @PostMapping("/userEditByManager")
    public String doUserEdit(User user) {
        boolean ret = userService.updateuser(user);
        if (ret) {
            return "redirect:UserManageSy";
        } else {
            return "useredit";
        }
    }
}