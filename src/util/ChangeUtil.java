package util;

public class ChangeUtil {
	public static String getStringParameter(String str, String defaultValue) {
		String id;
		
		try {
			id = str;
		} catch (Exception e) {
			id = defaultValue;
		}
		return id;
	}
	
	public static int getIntParameter(int num, int defaultValue) {
		int id;
		
		try {
			id = num;
		} catch (Exception e) {
			id = defaultValue;
		}
		return id;
	}

}
