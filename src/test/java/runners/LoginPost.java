package runners;

import com.intuit.karate.junit5.Karate;


public class LoginPost {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/post/login-post.feature");
    }
}
