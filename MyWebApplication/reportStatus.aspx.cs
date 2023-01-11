using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class reportStatus : System.Web.UI.Page
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

                string sql0 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID" +
                " WHERE P.PETITIONYEAR = '" + y1 + "'";
                SqlCommand command0 = new SqlCommand(sql0, connection);
                connection.Open();
                SqlDataAdapter sd0 = new SqlDataAdapter(command0);
                DataTable dt0 = new DataTable();
                sd0.Fill(dt0);
                GridView1.DataSource = dt0;
                GridView1.DataBind();

                string sql01 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME = 'รับเรื่อง'";
                SqlCommand command01 = new SqlCommand(sql01, connection);

                Object saveP0 = command01.ExecuteScalar();
                string status1 = Convert.ToString(saveP0);
                showTotal1.Text = status1;

                string sql02 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
              "WHERE P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME = 'อยู่ระหว่างดำเนินการ'";
                SqlCommand command02 = new SqlCommand(sql02, connection);

                Object saveP2 = command02.ExecuteScalar();
                string status2 = Convert.ToString(saveP2);
               Label2.Text = status2;

                string sql03 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
              "WHERE P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME = 'เสร็จสิ้น'";
                SqlCommand command03 = new SqlCommand(sql03, connection);

                Object saveP3 = command03.ExecuteScalar();
                string status3 = Convert.ToString(saveP3);
                Label5.Text = status3;

                string sql04 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
               "WHERE P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME = 'รับเรื่อง' AND S.STATUSNAME = 'อยู่ระหว่างดำเนินการ'"+
               " AND S.STATUSNAME = 'เสร็จสิ้น'";
                SqlCommand command04 = new SqlCommand(sql04, connection);

                Object saveP4 = command04.ExecuteScalar();
                string status4 = Convert.ToString(saveP4);
                Label8.Text = status4;





            }
            else if (m1 != "" && y1 != "")
            {
                string sql1 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
               "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "'";
                SqlCommand command1 = new SqlCommand(sql1, connection);
                connection.Open();
                SqlDataAdapter sd = new SqlDataAdapter(command1);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                string sql01 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
              "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME = 'รับเรื่อง'";
                SqlCommand command01 = new SqlCommand(sql01, connection);

                Object saveP0 = command01.ExecuteScalar();
                string status1 = Convert.ToString(saveP0);
                showTotal1.Text = status1;

                string sql02 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
              "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME = 'อยู่ระหว่างดำเนินการ'";
                SqlCommand command02 = new SqlCommand(sql02, connection);

                Object saveP2 = command02.ExecuteScalar();
                string status2 = Convert.ToString(saveP2);
                Label2.Text = status2;

                string sql03 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
              "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME = 'เสร็จสิ้น'";
                SqlCommand command03 = new SqlCommand(sql03, connection);

                Object saveP3 = command03.ExecuteScalar();
                string status3 = Convert.ToString(saveP3);
                Label5.Text = status3;

                string sql04 = "SELECT COUNT(PETITION_CODE) FROM PETITION P JOIN STATUS S ON S.STATUS_ID = P.STATUS_ID " +
              "WHERE P.PETITIONMONTH = '" + m1 + "' AND P.PETITIONYEAR = '" + y1 + "' AND S.STATUSNAME IS NOT NULL";
                SqlCommand command04 = new SqlCommand(sql04, connection);

                Object saveP4 = command04.ExecuteScalar();
                string status4 = Convert.ToString(saveP4);
                Label8.Text = status4;


            }
            else
            {



            }








            connection.Close();


        }
    
    }
}