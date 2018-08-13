package com.terblog.service;

import com.terblog.model.User;

import java.util.List;

public interface UserService {

    List<User> findInformationByUserName();

    List<User> findInformationByUserName(User param);

    User findInformationByUserName(String username);

    User findInformationByUserId(String userid);

    List<User> allUser();

    List<User> forbiddenUser();

    void StartUser(String UserId);

    void BlockUser(String UserId);

    void DeleteUser(String UserId);

    void ChangePassword(String username, String password);

    void InNewUser(User user);

    void InAlterUser(User user);

}
