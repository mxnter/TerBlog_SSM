package com.terblog.dao;

import com.terblog.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {


    List<User> findInformationByUserName();

    List<User> findInformationByUserName(User param);

    User findInformationByUserName(String username);

    User findInformationByUserId(String userid);

    List<User> allUser();

    List<User> forbiddenUser();

    void StartUser(String UserId);

    void BlockUser(String UserId);

    void DeleteUser(String UserId);

    void ChangePassword(@Param("username") String username, @Param("password") String password);

    void InNewUser(User user);

    void InAlterUser(User user);


}
