import com.lovepi.bean.FootPrint;
import com.lovepi.bean.FootPrintExample;
import com.lovepi.bean.FootPrintReply;
import com.lovepi.bean.FootPrintReplyExample;
import com.lovepi.dao.FootPrintMapper;
import com.lovepi.dao.FootPrintReplyMapper;
import com.lovepi.service.FootPrintReplyService;
import com.lovepi.service.impl.FootPrintReplyServiceImpl;
import com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.PrivateKeyResolver;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * 配置spring和junit整合，junit启动时加载springIOC容器 spring-test,junit
 */
@RunWith(SpringJUnit4ClassRunner.class)
// 告诉junit spring配置文件
@ContextConfiguration({ "classpath:spring/spring-orm.xml", "classpath:spring/spring-tx.xml" })
public class BaseTest {

    @Autowired
    private FootPrintMapper footPrintMapper;

    @Autowired
    private FootPrintReplyMapper footPrintReplyMapper;


    @Test
    public void getAll() {
        FootPrintExample footPrintExample = new FootPrintExample();

        List<FootPrint> printList = footPrintMapper.selectByExample(footPrintExample);

        for(FootPrint footPrint : printList) {
            System.out.printf("foorptint:%s;\n",footPrint.toString());
        }
    }

    @Test
    public void listById() {
        FootPrintReplyExample footPrintReplyExample = new FootPrintReplyExample();

        footPrintReplyExample.createCriteria().andIdEqualTo(13);

        List<FootPrintReply> footPrintReplies = footPrintReplyMapper.selectByExample(footPrintReplyExample);

        System.out.println(footPrintReplies.size());

        for(FootPrintReply footPrint : footPrintReplies) {
            System.out.printf("foorptintreply:%s;\n",footPrint.toString());
        }

    }

    @Test
    public void test1() {
        FootPrintReplyService footPrintReplyService = new FootPrintReplyServiceImpl();

        List<FootPrintReply> footPrintReplies = footPrintReplyService.findByImg("12");

        System.out.printf("%s:", footPrintReplies.get(0).toString());
    }

}
