package com.terblog.dao;

import com.terblog.model.Inform;

import java.util.List;

public interface AdminDao {

    public String useramount();

    public String articleamount();

    public Inform inform();


    public String informamount();

    public List<Inform> allinforma();

    void InInform(String InformId);

    void OutInform(String InformId);

    void DeleteInform(String InformId);

    void InNewInform(Inform inform);

    void InAlterInform(Inform inform);

    Inform InformById(String InformId);


}
