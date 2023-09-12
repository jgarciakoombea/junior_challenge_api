package runners;

import com.intuit.karate.junit5.Karate;


public class GetUserList {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/get/user-list-get.feature");
    }
}
