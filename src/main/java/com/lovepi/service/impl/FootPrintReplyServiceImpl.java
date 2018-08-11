package com.lovepi.service.impl;

import com.lovepi.bean.FootPrintExample;
import com.lovepi.bean.FootPrintReply;
import com.lovepi.bean.FootPrintReplyExample;
import com.lovepi.dao.FootPrintReplyMapper;
import com.lovepi.service.FootPrintReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FootPrintReplyServiceImpl implements FootPrintReplyService {

    @Autowired
    public FootPrintReplyMapper footPrintReplyMapper;

    @Override
    public List<FootPrintReply> findByImg(String id) {

        FootPrintReplyExample footPrintReplyExample = new FootPrintReplyExample();

        footPrintReplyExample.createCriteria().andImgEqualTo(id);

        return footPrintReplyMapper.selectByExample(footPrintReplyExample);
    }

    @Override
    public boolean listAdd(FootPrintReply footPrintReply) {
        boolean state = false;
        int result = footPrintReplyMapper.insert(footPrintReply);
        if(result == 1) {
            state = true;
        }
        return state;
    }


}
