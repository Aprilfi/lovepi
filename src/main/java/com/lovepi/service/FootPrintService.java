package com.lovepi.service;

import com.lovepi.bean.FootPrint;
import com.lovepi.bean.FootPrintExample;

import java.util.List;

public interface FootPrintService {

    List<FootPrint> list();

    boolean listAdd(FootPrint footPrint);

}
