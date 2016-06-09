using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//required for EF DB Access
using COMP2007_LAB3_B.Models;
using System.Web.ModelBinding;
using System.Globalization;

namespace COMP2007_LAB3_B
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if loading the page first time, populate my grid form EF DB
            if (!IsPostBack)
            {
                CultureInfo ciCurr = CultureInfo.CurrentCulture;
                lblresult.Text =ciCurr.Calendar.GetWeekOfYear(DateTime.Now, CalendarWeekRule.FirstFourDayWeek, DayOfWeek.Monday).ToString();
               
                //Get data
                this.GetStudents();
            }
        }
       protected void GetStudents()
        {
            //Connect to EF DB
            using (DefaultConnection db = new DefaultConnection())
            {
                //Query the student table using EF and LINQ
                var Students = (from allStudents in db.Students
                                select allStudents);

                //Bind result in grid view
                gdStudent.DataSource = Students.ToList();
                gdStudent.DataBind();
            }
        }
    }
}