package org.util;

public class CamelCase 
{
	public static String toCamelCase(String s)
	{
		
		
		try
		{
			 return s.substring(0, 1).toUpperCase() +s.substring(1).toLowerCase();
			
		}catch (StringIndexOutOfBoundsException  e) {
			System.out.println(e);

			return "";
		}
			
		
		
	}
}
