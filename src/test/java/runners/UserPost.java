package runners;

import com.intuit.karate.junit5.Karate;


public class UserPost {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/post/user-post.feature");
    }
}
