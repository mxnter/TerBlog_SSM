package com.terblog.service;

import com.terblog.model.Login;
import com.terblog.model.User;

import java.util.List;

public interface UserService {

    List<User> findInformationByUserName();

    List<User> findInformationByUserName(User param);

    List<User> findInformationByUserName(String username);

    List<User> findInformationByUserId(String userid);
}
