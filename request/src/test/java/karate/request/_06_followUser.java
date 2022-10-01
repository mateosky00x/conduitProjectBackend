package karate.request;

import com.intuit.karate.junit5.Karate;

public class _06_followUser {
    @Karate.Test
    Karate testSample(){
        return  Karate.run("classpath:karate/request/06_followUser/followUser.feature").relativeTo(getClass());
    }
}
