package javaCh12.ex03;

import java.util.Collection;
import java.util.Iterator;
import java.util.Properties;

public class BasePage518 {

	public static void main(String[] args) {
		String osName = System.getProperty("os.name");
		String userName =System.getProperty("user.name");
		String userHome = System.getProperty("user.home");
		String javaHome = System.getProperty("java.home");
		String userDir = System.getProperty("user.dir");
		String jsversion = System.getProperty("java.specification.version");
		
		System.out.println( osName + "1.  " + userName + "2.  " + userHome + "3. " + javaHome);
		System.out.println( userDir + "4.  " + jsversion);

		Properties pp = System.getProperties();
		boolean isOsname = pp.containsKey("os.name");
		System.out.println( isOsname );
		
		int ppSize = pp.size();
		System.out.println( ppSize);
		
		Collection<Object>  ppV = pp.values();
		
		Iterator<Object> it = ppV.iterator();
		while(it.hasNext()) {
			System.out.println( it.next() );
		}
		
		
	}

}
