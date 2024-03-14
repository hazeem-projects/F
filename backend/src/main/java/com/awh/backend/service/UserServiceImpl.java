package com.awh.backend.service;

import com.awh.backend.model.user;
import com.awh.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{


    @Autowired
    private UserRepository userRepository;

    @Override
    public user addUser(user user) {
        return userRepository.save(user);
    }

    @Override
    public List<user> getUser() {
        return (List<user>) userRepository.findAll();
    }

    @Override
    public user getUserByid(long id) {
        return userRepository.findById(id).get();
    }

    @Override
    public user updateUser(long id, user user) {
        user user1 = userRepository.findById(id).get();
        user1.setEmail(user.getEmail());
        user1.setpNo(user.getpNo());
        user1.setAddress(user.getAddress());
        return userRepository.save(user1);
    }

    @Override
    public void deleteUser(long id) {
        userRepository.deleteById(id);
    }
}
