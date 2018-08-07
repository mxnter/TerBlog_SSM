package com.terblog.service;

import com.terblog.model.Login;

import java.util.List;

public interface LoginService {

    List<Login> findInformationByUserName();

    List<Login> findInformationByUserName(Login param);

}
