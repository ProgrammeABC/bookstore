import com.bookstore.entity.User;
import com.bookstore.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring.xml")
public class test {

    @Resource
    private UserService userService;

    @Test
    public void test(){
        User user=userService.findByNameAndPassword("admin","15");
        System.out.println(user);


    }
}
