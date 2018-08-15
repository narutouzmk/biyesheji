package com.org.design.service;

import com.org.design.dao.imageDao.ImageDao;
import com.org.design.domain.image.Head_image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by BIN on 2018/5/25.
 */
@Service("getHeadImageService")
public class GetHeadImageService {

    @Autowired
    ImageDao imageDao;

    public List<Head_image> selectAllHeadImage(){
        return imageDao.selectAllHeadImage();
    }
}
