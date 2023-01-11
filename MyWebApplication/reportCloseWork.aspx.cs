using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class reportCloseWork : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void get_Click(object sender, EventArgs e)
        {

            string m1 = Convert.ToString(DropDownList1.SelectedIndex);
            string y1 = Convert.ToString(DropDownList2.SelectedItem);

            if (m1 == "0" && y1 != "")
            {

                string sql0 = "SELECT P.PETITION_CODE, PS.STATUS,E.EMPFIRSTNAME,E.EMPLASTNAME, E.EMPPOSITION," +
                    "C.CCOMPANYNAME,PS.PSTARTDATE,PS.PSTARTMONTH,PS.PSTARTYEAR,PS.PENDDATE,PS.PENDMONTH,PS.PENDYEAR" +
                   " FROM PETITION P JOIN PROCESS PS ON P.PETITION_ID = PS.PETITION_ID JOIN EMPLOYEE E ON E.EMP_ID = PS.EMP_ID " +
                   "JOIN CONTRACTOR C ON C.CONTRACTOR_ID = PS.CONTRACTOR_ID" +
                   "WHERE P.PETITIONYEAR = '" + y1 + "' AND PS.STATUS = 'ปิดงาน'";
                SqlCommand command0 = new SqlCommand(sql0, connection);
                connection.Open();
                SqlDataAdapter sd0 = new SqlDataAdapter(command0);
                DataTable dt0 = new DataTable();
                sd0.Fill(dt0);
                GridView1.DataSource = dt0;

                GridView1.DataBind();

                string sql01 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN PROCESS PS ON P.PETITION_ID = PS.PETITION_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PS.STATUS = 'ปิดงาน'";
                SqlCommand command01 = new SqlCommand(sql01, connection);

                Object saveP0 = command01.ExecuteScalar();
                string expeness01 = Convert.ToString(saveP0);
                showTotal.Text = expeness01;


            }
            else if (m1 != "" && y1 != "")
            {

                string sql1 = "SELECT P.PETITION_CODE, PS.STATUS,E.EMPFIRSTNAME,E.EMPLASTNAME, E.EMPPOSITION," +
                    "C.CCOMPANYNAME,PS.PSTARTDATE,PS.PSTARTMONTH,PS.PSTARTYEAR,PS.PENDDATE,PS.PENDMONTH,PS.PENDYEAR " +
                   " FROM PETITION P JOIN PROCESS PS ON P.PETITION_ID = PS.PETITION_ID JOIN EMPLOYEE E ON E.EMP_ID = PS.EMP_ID " +
                   "JOIN CONTRACTOR C ON C.CONTRACTOR_ID = PS.CONTRACTOR_ID " +
                    "WHERE P.PETITIONMONTH = '" + m1 + "' AND  P.PETITIONYEAR = '" + y1 + "' AND PS.STATUS = 'ปิดงาน'";
                SqlCommand command1 = new SqlCommand(sql1, connection);
                connection.Open();
                SqlDataAdapter sd = new SqlDataAdapter(command1);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                string sql2 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN PROCESS PS ON P.PETITION_ID = PS.PETITION_ID " +
                    "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "' AND PS.STATUS = 'ปิดงาน'";
                SqlCommand command2 = new SqlCommand(sql2, connection);
                Object saveP = command2.ExecuteScalar();
                string expeness = Convert.ToString(saveP);
                showTotal.Text = expeness;


            }
            else
            {



            }








            connection.Close();

        }
    }
}