package com.squirrel.utils.date;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils {
    /**
     * 获得对应时间天的开始时间
     */
    public static Date getDayStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }


    /**
     * 获得对应时间下一天的开始时间
     */
    public static Date getNextDayStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(getDayStart(date).getTime() + 3600 * 24 * 1000);
        return cal.getTime();
    }


    /**
     * 获得对应时间周的开始时间
     */
    public static Date getWeekStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.MILLISECOND, 0);
        cal.add(Calendar.DAY_OF_WEEK, 1);

        if (cal.getTime().getTime() > date.getTime()) {
            cal.add(Calendar.DAY_OF_WEEK, -7);
        }

        return cal.getTime();
    }


    /**
     * 获得对应时间下周的开始时间
     */
    public static Date getNextWeekStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getWeekStart(date));
        cal.add(Calendar.DAY_OF_WEEK, 7);
        return cal.getTime();
    }

    /**
     * 获得对应时间月的开始时间
     */
    public static Date getMonthStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.set(Calendar.DAY_OF_MONTH, cal.getActualMinimum(Calendar.DAY_OF_MONTH));
        cal.set(Calendar.HOUR_OF_DAY, 0);
        cal.set(Calendar.SECOND, 0);
        cal.set(Calendar.MINUTE, 0);
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }

    /**
     * 获得对应时间下月的开始时间
     */
    public static Date getNextMonthStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getMonthStart(date));
        cal.add(Calendar.MONTH, 1);
        return cal.getTime();
    }


    /**
     * 获得对应时间季度的开始时间
     */
    public static Date getQuarterStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getMonthStart(date));
        int currentMonth = cal.get(Calendar.MONTH)+1 ;
        SimpleDateFormat shortSdf = new SimpleDateFormat("yyyy-MM-dd");
        Date now = null;
        try {
            if (currentMonth >= 1 && currentMonth <= 3)
                cal.set(Calendar.MONTH, 0);
            else if (currentMonth >= 4 && currentMonth <= 6)
                cal.set(Calendar.MONTH, 3);
            else if (currentMonth >= 7 && currentMonth <= 9)
                cal.set(Calendar.MONTH, 6);
            else if (currentMonth >= 10 && currentMonth <= 12)
                cal.set(Calendar.MONTH, 9);
            cal.set(Calendar.DATE, 1);
            cal.set(Calendar.HOUR_OF_DAY, 0);
            cal.set(Calendar.SECOND, 0);
            cal.set(Calendar.MINUTE, 0);
            cal.set(Calendar.MILLISECOND, 0);
            now = shortSdf.parse(shortSdf.format(cal.getTime()) + " 00:00:00");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return now;
    }

    /**
     * 获得对应时间下个季度的开始时间
     */
    public static Date getNextQuarterStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getQuarterStart(date));
        cal.add(Calendar.MONTH, 3);
        return cal.getTime();
    }


    /**
     * 获得对应时间年的开始时间
     */
    public static Date getYearStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getQuarterStart(date));
        cal.set(cal.get(Calendar.YEAR), 0, 0, 0, 0, 0);
        cal.set(Calendar.DAY_OF_MONTH, cal.getActualMinimum(Calendar.YEAR));
        cal.set(Calendar.MILLISECOND, 0);
        return cal.getTime();
    }

    /**
     * 获得对应时间下一年的开始时间
     */
    public static Date getNextYearStart(Date date) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(getYearStart(date));
        cal.add(Calendar.YEAR, 1);
        return cal.getTime();
    }
}
