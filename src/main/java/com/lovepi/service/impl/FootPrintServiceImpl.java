package com.lovepi.service.impl;

import com.lovepi.bean.FootPrint;
import com.lovepi.bean.FootPrintExample;
import com.lovepi.dao.FootPrintMapper;
import com.lovepi.service.FootPrintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FootPrintServiceImpl implements FootPrintService {

    @Autowired
    public FootPrintMapper footPrintMapper;

    @Override
    public List<FootPrint> list() {
        FootPrintExample footPrintExample1 = new FootPrintExample();

        footPrintExample1.setOrderByClause("rand()");

        List<FootPrint> footPrintList = footPrintMapper.selectByExample(footPrintExample1);

        List<FootPrint> footPrints = new ArrayList<>();

        footPrintList.get(0).setReplyBody(footPrints);
        return footPrintList;
    }

    @Override
    public boolean listAdd(FootPrint footPrint) {
        boolean state = false;
        int result = footPrintMapper.insert(footPrint);
        if(result == 1) {
            state = true;
        }
        return state;
    }

}

