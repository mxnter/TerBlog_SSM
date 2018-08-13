package com.terblog.service;

import com.terblog.model.Inform;

import java.util.List;

public interface AdminService {

    String useramount();

    String articleamount();

    Inform inform();

    String informamount();

    List<Inform> allinforma();

}
