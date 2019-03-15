 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;

/// <summary>
/// Summary description for time
/// </summary>
//test taktaz
public class time
{
    static string d2;
		public string time1(DateTime s)
        {
            



            PersianCalendar d = new PersianCalendar();

            if (Convert.ToInt32(d.GetMonth(s)) > 9 && Convert.ToInt32(d.GetDayOfMonth(s)) > 9)
            {
                d2 = d.GetYear(s).ToString() + "/" + d.GetMonth(s).ToString() + "/" + d.GetDayOfMonth(s).ToString();
                
            }
            else if (Convert.ToInt32(d.GetMonth(s)) <= 9 && Convert.ToInt32(d.GetDayOfMonth(s)) <= 9)
            {
                d2 = d.GetYear(s).ToString() + "/0" + d.GetMonth(s).ToString() + "/0" + d.GetDayOfMonth(s).ToString();
                
            }
            if (Convert.ToInt32(d.GetDayOfMonth(s)) > 9 && Convert.ToInt32(d.GetMonth(s)) <= 9)
            {
                d2 = d.GetYear(s).ToString() + "/0" + d.GetMonth(s).ToString() + "/" + d.GetDayOfMonth(s).ToString();
                
            }
            else if (Convert.ToInt32(d.GetDayOfMonth(s)) <= 9 && Convert.ToInt32(d.GetMonth(s)) > 9)
            {
                d2 = d.GetYear(s).ToString() + "/" + d.GetMonth(s).ToString() + "/0" + d.GetDayOfMonth(s).ToString();
                
            }

            return d2;

           

        }
	
}
