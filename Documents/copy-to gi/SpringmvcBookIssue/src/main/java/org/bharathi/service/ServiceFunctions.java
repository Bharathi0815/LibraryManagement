package org.bharathi.service;

import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import org.bharathi.model.*;
public class ServiceFunctions {
	
	SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
	Calendar cal= Calendar.getInstance();
	 long fineperday=20l;;
		long fine;
		long daysDiff=0;
		String date = new SimpleDateFormat("MM/dd/yyyy").format(new Date());
		
		Date dateBefore=new Date();
		Date dateAfter=new Date();
		String bookstatus=null;
	
	public String calculateDuedate(String issuedate)
	{
		
		
		
		
		//calculate DueDate
		
		
		
		 try{  
	           cal.setTime(sdf1.parse(issuedate));  
	        }catch(ParseException e){  
	            e.printStackTrace();  
	         }  

		// use add() method to add the days to the given date  
        cal.add(Calendar.DAY_OF_MONTH, 15);  
	        String addedDate = sdf1.format(cal.getTime());  
	          	
		System.out.println("Date after adding 15 Days "+addedDate);
		
		
		return addedDate;
	}
	
	
	public long calculateFine(String dueDate)
	{
		
		try {
			// Convert `String` to `Date`
			    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
			     dateBefore = sdf.parse(dueDate);
			     dateAfter = sdf.parse(date);

			// Calculate the number of days between dates
			    long timeDiff = Math.abs(dateAfter.getTime() - dateBefore.getTime());
			     daysDiff = TimeUnit.DAYS.convert(timeDiff, TimeUnit.MILLISECONDS);
			   // System.out.println("The number of days between dates: " + daysDiff);
			}catch(Exception e){
			    e.printStackTrace();
			}
		
		
		if(dateBefore.compareTo(dateAfter)>=0)
		{
			return fine=0;
		}
		else
		{
		fine=daysDiff * fineperday;
		
		return  fine;
		}
		
		
	}
	
	
	public String bookStatus()
	{
		if(fine>0)
		
		bookstatus="Overdue";	
		else
			bookstatus="Nodue";
		return bookstatus;
		
		
	}
	
}
