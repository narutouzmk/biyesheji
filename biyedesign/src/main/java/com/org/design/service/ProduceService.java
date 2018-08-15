package com.org.design.service;

import com.org.design.dao.produceDao.ProduceDao;
import com.org.design.domain.produce.Produce;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/17.
 */

@Service("ProduceService")
public class ProduceService {
    private final static Logger log = LogManager.getLogger(ProduceService.class);

    @Autowired
    private ProduceDao produceDao;

    public List<Produce> selectProduceByProduceSuit(String produce_suit){
        return produceDao.selectProduceByProduceSuit(produce_suit);
    }

    public List<Produce> selectProduceByDate(Produce produce){
        return produceDao.selectProduceByDate(produce);
    }

    public List<Produce> selectProduceByCompany(Produce produce){
        return produceDao.selectProduceByCompany(produce);
    }

    public List<Produce> selectAllProduce(){
        return produceDao.selectAllProduce();
    }

    public Integer insertCompanyProduce(Produce produce){
        return produceDao.insertCompanyProduce(produce);
    }

    public Integer updateProduceById(Produce produce){
        return produceDao.updateProduceById(produce);
    }

    public Integer deleteProduceById(Produce produce){
        return produceDao.deleteProduceById(produce);
    }

}