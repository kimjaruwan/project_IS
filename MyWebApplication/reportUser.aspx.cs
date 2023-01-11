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
    public partial class reportUser : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql0 = "SELECT U.USERNAME, R.RFIRSTNAME, R.RLASTNAME, R.RID, R.RADDRESS, R.RTELEPHONE" +
                " FROM USERLOGIN U JOIN RESIDENT R ON U.USER_ID = R.USER_ID WHERE U.DESCRIPTIONS = 'ผู้อยู่อาศัย'";
              
            SqlCommand command0 = new SqlCommand(sql0, connection);
            connection.Open();
            SqlDataAdapter sd0 = new SqlDataAdapter(command0);
            DataTable dt0 = new DataTable();
            sd0.Fill(dt0);
            GridView1.DataSource = dt0;
            GridView1.DataBind();

            string sql01 = "SELECT COUNT(USER_ID) FROM USERLOGIN WHERE DESCRIPTIONS = 'ผู้อยู่อาศัย'";
            SqlCommand command01 = new SqlCommand(sql01, connection);
            Object saveP0 = command01.ExecuteScalar();
            string user = Convert.ToString(saveP0);
            showTotal.Text = user;


        }
    }
}