package karate.request;

import com.intuit.karate.junit5.Karate;

public class _03_createArticle {
    @Karate.Test
    Karate testSample(){
        return  Karate.run("classpath:karate/request/03_createArticle/createArticle.feature").relativeTo(getClass());
    }
}
