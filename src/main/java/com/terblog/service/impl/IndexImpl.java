package com.terblog.service.impl;

import com.terblog.model.Index;
import com.terblog.dao.IndexDao;
import com.terblog.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.apache.log4j.Logger;
import javax.annotation.Resource;
import java.util.List;

@Service
public class IndexImpl implements IndexService {
    private Logger log = Logger.getLogger(this.getClass().getName());
    @Resource
    IndexDao indexDao;

    public List<Index> list(){
        log.info("返回：" + indexDao.list());
        return indexDao.list();
    }

}
