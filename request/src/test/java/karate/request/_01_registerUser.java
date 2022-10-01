package karate.request;
import com.intuit.karate.junit5.Karate;

public class _01_registerUser {
    @Karate.Test
    Karate testSample(){
        return  Karate.run("classpath:karate/request/01_registerUser/registerUser.feature").relativeTo(getClass());
    }
}
