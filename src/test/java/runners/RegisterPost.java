package runners;

import com.intuit.karate.junit5.Karate;


public class RegisterPost {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/post/register-post.feature");
    }
}
