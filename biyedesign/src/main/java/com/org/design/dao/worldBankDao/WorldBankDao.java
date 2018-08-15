package com.org.design.dao.worldBankDao;

import com.org.design.domain.worldBank.WorldBank;

import java.util.List;

/**
 * Created by BIN on 2018/5/14.
 */
public interface WorldBankDao {
    List<WorldBank> selectAllWorldBank();
    WorldBank selectWorldBankById(WorldBank worldBank);
    Integer insertWorldBank(WorldBank worldBank);
    Integer updateWorldBankById(WorldBank worldBank);
    Integer deleteWorldBankById(WorldBank worldBank);
}

/*
* selectAllWorldBank
* selectWorldBankById
* insertWorldBank
* updateWorldBankById
* deleteWorldBankById
* */
