package com.awh.backend.service;

import com.awh.backend.model.user;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    public user addUser(user user);

    public List<user> getUser();

    public user getUserByid(long id);

    public user updateUser(long id , user user);

    public void deleteUser(long id);

}
