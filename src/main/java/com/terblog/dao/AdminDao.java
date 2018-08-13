package com.terblog.dao;

import com.terblog.model.Inform;

import java.util.List;

public interface AdminDao {

    public String useramount();

    public String articleamount();

    public Inform inform();


    public String informamount();

    public List<Inform> allinforma();

}
