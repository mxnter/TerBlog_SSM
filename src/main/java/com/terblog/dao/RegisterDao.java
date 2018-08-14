package com.terblog.dao;

import com.terblog.model.Register;
import com.terblog.model.User;

import java.util.List;

public interface RegisterDao {
    List<Register> Register();

    void Register(User user);

}
