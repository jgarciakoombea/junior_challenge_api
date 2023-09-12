package runners;

import com.intuit.karate.junit5.Karate;


public class UserPut {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/put/user-put.feature");
    }
}
