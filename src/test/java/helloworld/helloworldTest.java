package helloworld;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.Test;

public class helloworldTest {

    private helloworld sut;

    @Before
    public void setUp() {
        sut = new helloworld();
    }

    @Test
    public void test() {
        assertEquals(3, sut.add(1, 2));
    }

}
