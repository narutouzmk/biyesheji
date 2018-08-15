package com.org.design.dao.imageDao;

import com.org.design.domain.image.Head_image;

import java.util.List;

/**
 * Created by BIN on 2018/5/25.
 */
public interface ImageDao {
    List<Head_image> selectAllHeadImage();
}
