import com.lovepi.bean.FootPrint;
import com.lovepi.bean.FootPrintExample;
import com.lovepi.dao.FootPrintMapper;
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
    public FootPrintMapper footPrintMapper;


    @Test
    public void getAll() {
        FootPrintExample footPrintExample = new FootPrintExample();

        List<FootPrint> printList = footPrintMapper.selectByExample(footPrintExample);

        for(FootPrint footPrint : printList) {
            System.out.printf("foorptint:%s;\n",footPrint.toString());
        }
    }

}
