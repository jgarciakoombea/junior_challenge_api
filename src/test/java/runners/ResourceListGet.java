package runners;

import com.intuit.karate.junit5.Karate;


public class ResourceListGet {
    @Karate.Test
    Karate testSample() {
        return Karate.run("src/test/resources/features/get/resource-list-get.feature");
    }
}
