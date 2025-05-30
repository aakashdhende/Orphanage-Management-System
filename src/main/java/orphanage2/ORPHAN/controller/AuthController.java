package orphanage2.ORPHAN.controller;

import orphanage2.ORPHAN.model.User;
import orphanage2.ORPHAN.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AuthController {

    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/register")
    public String registerForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user, Model model) {
        try {
            userService.register(user); 
            return "redirect:/login";
        } catch (RuntimeException e) {
            model.addAttribute("error", e.getMessage()); 
            model.addAttribute("user", user); 
            return "register"; 
        }
    }


    @GetMapping("/login")
    public String loginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
        User user = userService.login(username, password);
        if (user != null) {
            session.setAttribute("loggedInUser", user);
            return "redirect:/orphans";
        }
        model.addAttribute("error", "Invalid username or password.");
        return "login";
    }
}