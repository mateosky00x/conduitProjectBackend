package karate.request;

import com.intuit.karate.junit5.Karate;

public class _02_loginUser {
    @Karate.Test
    Karate testSample(){
        return  Karate.run("classpath:karate/request/02_loginUser/loginUser.feature").relativeTo(getClass());
    }
}
