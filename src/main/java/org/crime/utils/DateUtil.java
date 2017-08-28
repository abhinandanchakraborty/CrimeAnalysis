package org.crime.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class DateUtil {
	static SimpleDateFormat df = new SimpleDateFormat("mm/dd/yyyy", Locale.ENGLISH);
	static SimpleDateFormat monthdf = new SimpleDateFormat("MMMM");
	static SimpleDateFormat yeardf = new SimpleDateFormat("YYYY");
	
	public String getMonth(String date){
		String month="";
		try {
			month = monthdf.format(df.parse(date)).toString();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return month;
	}
	
	
	public String getYear(String date){
		String Year="";
		try {
			Year = monthdf.format(df.parse(date)).toString();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Year;
	}

}
