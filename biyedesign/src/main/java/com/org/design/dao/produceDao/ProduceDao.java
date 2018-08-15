package com.org.design.dao.produceDao;

import com.org.design.domain.produce.Produce;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface ProduceDao {
    List<Produce> selectProduceByProduceSuit(String produce_suit);
    List<Produce> selectProduceByDate(Produce produce);
    List<Produce> selectProduceByCompany(Produce produce);
    List<Produce> selectAllProduce();
    Integer insertCompanyProduce(Produce produce);
    Integer updateProduceById(Produce produce);
    Integer deleteProduceById(Produce produce);
}

