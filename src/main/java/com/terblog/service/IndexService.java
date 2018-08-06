package com.terblog.service;

import com.terblog.model.Index;

import java.util.List;

public interface IndexService {
    String SERVICE_NAME = "IndexService";

    List<Index> list();
}
