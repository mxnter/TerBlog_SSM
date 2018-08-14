package com.terblog.service;

import com.terblog.model.Register;
import com.terblog.model.User;

import java.util.List;

public interface RegisterService {
    List<Register> Register();

    void Register(User user);
}
