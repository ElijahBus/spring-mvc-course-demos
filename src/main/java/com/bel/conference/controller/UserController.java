package com.bel.conference.controller;

import com.bel.conference.model.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {
    @GetMapping("user")
    public User getUser(@RequestParam(value = "firstname", defaultValue = "Elijah") String firstname,
                        @RequestParam(value = "lastname", defaultValue = "Bus") String lastname,
                        @RequestParam(value = "age", defaultValue = "25") Integer age) {

        User user = new User();
        user.setFirstname(firstname);
        user.setLastname(lastname);
        user.setAge(age);

        return user;
    }

    @PostMapping("user")
    public User postUser(User user) {
        System.out.println(user.getFirstname());

        return user;
    }


}
