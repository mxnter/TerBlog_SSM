package com.terblog.dao;

import com.terblog.model.Login;
import com.terblog.model.User;

import java.util.List;

public interface UserDao {


    List<User> findInformationByUserName();

    List<User> findInformationByUserName(User param);

    List<User> findInformationByUserName(String username);

    List<User> findInformationByUserId(String userid);

    List<User> allUser();

    List<User> forbiddenUser();

}
