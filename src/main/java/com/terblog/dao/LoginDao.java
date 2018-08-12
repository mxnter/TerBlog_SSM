package com.terblog.dao;

import com.terblog.model.Login;

import java.util.List;

public interface LoginDao {

    //
    List<Login> findInformationByUserName();

    //
    List<Login> findInformationByUserName(Login param);
}
