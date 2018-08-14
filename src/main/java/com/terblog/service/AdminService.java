package com.terblog.service;

import com.terblog.model.Inform;

import java.util.List;

public interface AdminService {

    String useramount();

    String articleamount();

    Inform inform();

    String informamount();

    List<Inform> allinforma();

    void InInform(String InformId);

    void OutInform(String InformId);

    void DeleteInform(String InformId);

    void InNewInform(Inform inform);

    void InAlterInform(Inform inform);

    Inform InformById(String InformId);

}
