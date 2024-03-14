package com.awh.backend.controller;

import com.awh.backend.model.user;
import com.awh.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("users")
public class ClientController {

    @Autowired
    private UserService userService;

    @PostMapping("/user/add")
    public String adduser(@RequestBody user user){
        userService.addUser(user);
        return "User Added Successfully...";
    }

    @GetMapping("")
    public List<user> getUsers(){
        System.out.println("Users..");
        return userService.getUser();
    }

    @GetMapping("/user/{id}")
    public user getUserById(@PathVariable("id") long id){
        return userService.getUserByid(id);
    }

    @PutMapping("/user/update/{id}")
    public String updateUser(@PathVariable("id") long id, @RequestBody user user){
        userService.updateUser(id, user);
        return "User Updated Successfully...";
    }

    @DeleteMapping("/user/delete/{id}")
    public String deleteUser(@PathVariable("id") long id){
        userService.deleteUser(id);
        return "User Deleted Successfully...";
    }

}
