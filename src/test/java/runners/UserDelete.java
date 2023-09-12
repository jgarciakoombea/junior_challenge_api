package runners;

import com.intuit.karate.junit5.Karate;


public class UserDelete {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/delete/user-delete.feature");
    }
}
