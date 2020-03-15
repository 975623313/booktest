package com.an.commons;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class DataUtil {
	
	public static Date addDate(Date date,long day) throws ParseException {
		 long time = date.getTime(); // 得到指定日期的毫秒数
		 day = day*24*60*60*1000; // 要加上的天数转换成毫秒数
		 time+=day; // 相加得到新的毫秒数
		 return new Date(time); // 将毫秒数转换成日期
		}
	public String trfDate(Date date){
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String timeFormat = sdf.format(date);
       return timeFormat;
    }

}
