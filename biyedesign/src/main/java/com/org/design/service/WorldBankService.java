package com.org.design.service;

import com.org.design.dao.worldBankDao.WorldBankDao;
import com.org.design.domain.worldBank.WorldBank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/22.
 */
@Service("worldBankService")
public class WorldBankService {

    @Autowired
    WorldBankDao worldBankDao;

    public List<WorldBank> selectAllWorldBank(){
        return worldBankDao.selectAllWorldBank();
    }

    public WorldBank selectWorldBankById(WorldBank worldBank){
        return worldBankDao.selectWorldBankById(worldBank);
    }

    public Integer insertWorldBank(WorldBank worldBank){
        return worldBankDao.insertWorldBank(worldBank);
    }

    public Integer updateWorldBankById(WorldBank worldBank){
        return worldBankDao.updateWorldBankById(worldBank);
    }

    public Integer deleteWorldBankById(WorldBank worldBank){
        return worldBankDao.deleteWorldBankById(worldBank);
    }
}
