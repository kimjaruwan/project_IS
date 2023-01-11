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
    public partial class reportType : System.Web.UI.Page
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

                string sql0 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME, PT.PETITIONNAME FROM PETITION P "+
                    "JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID" +
                " JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID WHERE P.PETITIONYEAR = '" + y1 + "'";
                SqlCommand command0 = new SqlCommand(sql0, connection);
                connection.Open();
                SqlDataAdapter sd0 = new SqlDataAdapter(command0);
                DataTable dt0 = new DataTable();
                sd0.Fill(dt0);
                GridView1.DataSource = dt0;

                GridView1.DataBind();

                string sql01 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'ระบบการไฟฟ้า'";
                SqlCommand command01 = new SqlCommand(sql01, connection);

                Object saveP0 = command01.ExecuteScalar();
                string type1 = Convert.ToString(saveP0);
                showTotal1.Text = type1;

                string sql02 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'ระบบประปา'";
                SqlCommand command02 = new SqlCommand(sql02, connection);

                Object saveP2 = command02.ExecuteScalar();
                string type2 = Convert.ToString(saveP2);
                Label2.Text = type2;

                string sql03 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'รักษาความปลอดภัย'";
                SqlCommand command03 = new SqlCommand(sql03, connection);

                Object saveP3 = command03.ExecuteScalar();
                string type3 = Convert.ToString(saveP3);
                Label5.Text = type3;

                string sql04 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'พื้นที่ส่วนกลาง'";
                SqlCommand command04 = new SqlCommand(sql04, connection);

                Object saveP4 = command04.ExecuteScalar();
                string type4 = Convert.ToString(saveP4);
                Label8.Text = type4;

                string sql05 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'พนักงาน'";
                SqlCommand command05 = new SqlCommand(sql05, connection);

                Object saveP5 = command05.ExecuteScalar();
                string type5 = Convert.ToString(saveP5);
                Label12.Text = type5;

                string sql06 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                   "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
              "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'อื่นๆ'";
                SqlCommand command06 = new SqlCommand(sql06, connection);

                Object saveP6 = command06.ExecuteScalar();
                string type6 = Convert.ToString(saveP6);
                Label14.Text = type6;


            }
            else if (m1 != "" && y1 != "")
            {
                string sql1 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
               "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "'";

                string sql0 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME, PT.PETITIONNAME FROM PETITION P " +
                     "JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID" +
                 " JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "'";
                SqlCommand command0 = new SqlCommand(sql0, connection);
                connection.Open();
                SqlDataAdapter sd0 = new SqlDataAdapter(command0);
                DataTable dt0 = new DataTable();
                sd0.Fill(dt0);
                GridView1.DataSource = dt0;
                GridView1.DataBind();

                string sql01 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'ระบบการไฟฟ้า'";
                SqlCommand command01 = new SqlCommand(sql01, connection);

                Object saveP0 = command01.ExecuteScalar();
                string type1 = Convert.ToString(saveP0);
                showTotal1.Text = type1;

                string sql02 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'ระบบประปา'";
                SqlCommand command02 = new SqlCommand(sql02, connection);

                Object saveP2 = command02.ExecuteScalar();
                string type2 = Convert.ToString(saveP2);
                Label2.Text = type2;

                string sql03 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'รักษาความปลอดภัย'";
                SqlCommand command03 = new SqlCommand(sql03, connection);

                Object saveP3 = command03.ExecuteScalar();
                string type3 = Convert.ToString(saveP3);
                Label5.Text = type3;

                string sql04 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'พื้นที่ส่วนกลาง'";
                SqlCommand command04 = new SqlCommand(sql04, connection);
                Object saveP4 = command04.ExecuteScalar();
                string type4 = Convert.ToString(saveP4);
                Label8.Text = type4;

                string sql05 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                    "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'พนักงาน'";
                SqlCommand command05 = new SqlCommand(sql05, connection);

                Object saveP5 = command05.ExecuteScalar();
                string type5 = Convert.ToString(saveP5);
                Label12.Text = type5;

                string sql06 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
                   "JOIN PETITIONTYPE PT ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID " +
              "WHERE P.PETITIONYEAR = '" + y1 + "' AND PT.PETITIONNAME = 'อื่นๆ'";
                SqlCommand command06 = new SqlCommand(sql06, connection);

                Object saveP6 = command06.ExecuteScalar();
                string type6 = Convert.ToString(saveP6);
                Label14.Text = type6;



            }
            else
            {



            }








            connection.Close();


        }
    
    }
}