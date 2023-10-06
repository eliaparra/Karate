package karate;

import com.intuit.karate.junit5.Karate;



public class TestRunner {






    @Karate.Test
    Karate testOne() {
        return Karate.run("sample").relativeTo(getClass());
       // return Karate.run("classpath:sample");
    }


}






