package com.lovepi.service;

import com.lovepi.bean.FootPrintReply;

import java.util.List;

public interface FootPrintReplyService {

    List<FootPrintReply> findByImg(String id);

    boolean listAdd(FootPrintReply footPrintReply);

}
