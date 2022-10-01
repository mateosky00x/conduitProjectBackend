package karate.request;

import com.intuit.karate.junit5.Karate;

public class _05_commentArticle {
    @Karate.Test
    Karate testSample(){
        return  Karate.run("classpath:karate/request/05_commentArticle/commentArticle.feature").relativeTo(getClass());
    }
}

