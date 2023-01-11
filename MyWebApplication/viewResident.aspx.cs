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
    public partial class viewResident : System.Web.UI.Page
    {

        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            // string txtUsername = Session["txtUsername"].ToString();
            // string txtPassword = Session["txtPassword"].ToString();

            //Userคือใคร
            string txtUsername = Session["txtUsername"].ToString();
            string txtPassword = Session["txtPassword"].ToString();
            string idUser = "SELECT RESIDENT_ID FROM RESIDENT WHERE RID='" + txtUsername + "'";
            SqlCommand commandId = new SqlCommand(idUser, connection);
            connection.Open();
            Object id = commandId.ExecuteScalar();
            int saveId = Convert.ToInt32(id);
            connection.Close();


            //สรุป  สถานะ1
            string statusCount1 = "SELECT COUNT(STATUS_ID) FROM PETITION WHERE STATUS_ID = 1";
            SqlCommand commandStatusCount1 = new SqlCommand(statusCount1, connection);
            connection.Open();
            Object statusC1 = commandStatusCount1.ExecuteScalar();
            string st1 = Convert.ToString(statusC1);
            string word = " คำร้องเรียน";
            showType1.Text = st1 + word;

            //สรุป  สถานะ2
            string statusCount2 = "SELECT COUNT(STATUS_ID) FROM PETITION WHERE STATUS_ID = 2";
            SqlCommand commandStatusCount2 = new SqlCommand(statusCount2, connection);
            Object statusC2 = commandStatusCount2.ExecuteScalar();
            string st2 = Convert.ToString(statusC2);
            showType2.Text = st2 + word;

            //สรุป  สถานะ3
            string statusCount3 = "SELECT COUNT(STATUS_ID) FROM PETITION WHERE STATUS_ID = 3";
            SqlCommand commandStatusCount3 = new SqlCommand(statusCount3, connection);
            Object statusC3 = commandStatusCount3.ExecuteScalar();
            string st3 = Convert.ToString(statusC3);
            showType3.Text = st3 + word;
            connection.Close();


            //แสดงทั้งหมด

            string sql1 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME FROM PETITION P LEFT JOIN STATUS S" +
                " ON P.STATUS_ID = S.STATUS_ID";
            SqlCommand command1 = new SqlCommand(sql1, connection);
            connection.Open();
            SqlDataAdapter sd = new SqlDataAdapter(command1);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;

            GridView1.DataBind();
            connection.Close();

            //แสดงทั้งหมด


          



        }
    }
}