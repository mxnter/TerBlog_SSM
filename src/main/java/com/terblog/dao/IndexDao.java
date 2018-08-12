package com.terblog.dao;

import com.terblog.model.Index;

import java.util.List;

public interface IndexDao {

    public int add(Index indexInfo);


    public void delete(int id);


    public Index get(int id);


    public int update(Index indexInfo);

    public List<Index> list();

    public int count();

    public List<Index> ll();


}
