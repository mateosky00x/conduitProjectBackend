package karate.request;

import com.intuit.karate.junit5.Karate;

public class _04_favoriteArticle {
    @Karate.Test
    Karate testSample(){
        return  Karate.run("classpath:karate/request/04_favoriteArticle/favoriteArticle.feature").relativeTo(getClass());
    }
}
