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
    public partial class CheckMyPetition : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //id user
            string txtUsername = Session["txtUsername"].ToString();
            string txtPassword = Session["txtPassword"].ToString();
            string idUser = "SELECT RESIDENT_ID FROM RESIDENT WHERE RID='" + txtUsername + "'";
            SqlCommand commandId = new SqlCommand(idUser, connection);
            connection.Open();
            Object id = commandId.ExecuteScalar();
            int saveId = Convert.ToInt32(id);
            connection.Close();



            //คำร้องของเรา

            string sql1 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME, P.PETITIONDATE, P.PETITIONMONTH,"+
                "P.PETITIONYEAR FROM PETITION P LEFT JOIN STATUS S" +
                " ON P.STATUS_ID = S.STATUS_ID WHERE RESIDENT_ID ='"+ saveId + "'";
            SqlCommand command1 = new SqlCommand(sql1, connection);
            connection.Open();
            SqlDataAdapter sd = new SqlDataAdapter(command1);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            connection.Close();

            //คำร้องของเรา

        }
    }
}