package runners;

import com.intuit.karate.junit5.Karate;


public class UserPatch {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/patch/user-patch.feature");
    }
}
