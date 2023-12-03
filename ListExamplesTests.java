import static org.junit.Assert.*;
import org.junit.*;
import java.util.*;
import java.util.ArrayList;

public class ListExamplesTests {
	// indent
	// here is some text
	// here is more text to indent
	@Test
		public void testEmptyMerge() {
			List<String> emptyList = new ArrayList<String>();
			List<String> l1 = new ArrayList<String>();
			List<String> l2 = new ArrayList<String>();

		}
	@Test(timeout = 500)
	public void testMerge1() {
    		List<String> l1 = new ArrayList<String>(Arrays.asList("x", "y"));
		List<String> l2 = new ArrayList<String>(Arrays.asList("a", "b"));
		assertArrayEquals(new String[]{ "a", "b", "x", "y"}, BuggyExample.merge(l1, l2).toArray());
	}
	
	@Test(timeout = 500)
        public void testMerge2() {
		List<String> l1 = new ArrayList<String>(Arrays.asList("a", "b", "c"));
		List<String> l2 = new ArrayList<String>(Arrays.asList("c", "d", "e"));
		assertArrayEquals(new String[]{ "a", "b", "c", "c", "d", "e" }, BuggyExample.merge(l1, l2).toArray());
        }

}
