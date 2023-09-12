package runners;

import com.intuit.karate.junit5.Karate;


public class ResourceGet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/get/resource-get.feature");
    }
}
