package org.crime.utils;

import java.text.DecimalFormat;

public class Sample {
	
	public static void main(String args[]){
		Double a = -122.4215816814;
		Double b = 37.761700718;
		
		DecimalFormat df = new DecimalFormat();
		df.setMaximumFractionDigits(4);
		
		System.out.println(df.format(a));
		
	}

}
