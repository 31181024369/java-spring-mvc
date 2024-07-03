package vn.hoidanit.laptopshop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;

    public DashboardController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/admin")
    public String getDashboard(Model model) {
        model.addAttribute("user", this.userService.countUsers());
        model.addAttribute("product", this.userService.countProduct());
        model.addAttribute("order", this.userService.countOrder());
        return "admin/dashboard/show";
    }

}
