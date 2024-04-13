package vn.hoidanit.laptopshop;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String index(){
        return "hello spring boot";
    }

    @GetMapping("/admin")
    public String adminPage(){
        return "admin page";
    }

    @GetMapping("/user")
    public String userPage(){
        return "user page";
    }
    
}
