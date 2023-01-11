using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;
namespace MyWebApplication
{
    public partial class CreatePetition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //string userLogin;
            //userLogin = Session["username"].ToString();

            txtDate.Text = DateTime.Now.ToString("dd MM yyyy");
            txtDate.ReadOnly = true;
            Calendar1.Visible = false;
          
            string sqlLogin = "SELECT * FROM PETITIONTYPE";
            SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
            SqlCommand command = new SqlCommand(sqlLogin, connection);
            connection.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlLogin, connection);

            da1.Fill(ds);
            if (!IsPostBack)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    type.Items.Add(new ListItem(ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][0].ToString()));
                }
            }




        }
        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved " + type.SelectedIndex  + "');", true);
            string pathImage = Image.ImageUrl.ToString();
            string pTitle = title.Text;
            string pType = type.Text;
            string pDetail =txtDetail.Text;
            string datePt = txtDate.Text;
            DateTime dateData = Convert.ToDateTime(datePt);
            string dateUse = dateData.Day.ToString();
            string monthUse = dateData.Month.ToString();
            string yearUse = dateData.Year.ToString();
           
            
            
            string txtUsername = Session["txtUsername"].ToString();
            string txtPassword = Session["txtPassword"].ToString();
            string idUser = "SELECT RESIDENT_ID FROM RESIDENT WHERE RID='" + txtUsername+"'";
            SqlCommand commandId = new SqlCommand(idUser, connection);
            connection.Open();
            Object id = commandId.ExecuteScalar();
            int saveId = Convert.ToInt32(id);
            

            string idPt = "SELECT MAX(PETITION_ID) FROM PETITION";
            SqlCommand commandIdPt = new SqlCommand(idPt, connection);       
            Object id2 = commandIdPt.ExecuteScalar();
            int saveIdPt = Convert.ToInt32(id2);
            string docu = "PT00";
            int num = 1;
            int document = saveIdPt + num;  

        
            string sqlInsert = " Insert into PETITION (RESIDENT_ID,PETITIONTYPE_ID,PETITION_CODE,PETITIONTITLE," +
                "PETITIONDETAIL,PETITIONIMAGE,PETITIONDATE,PETITIONMONTH,PETITIONYEAR) values (" + saveId + ",'" +
                pType + "','" + docu + document + "','" + pTitle + "','" + pDetail + "','" + pathImage + "','" + dateUse + "','" +
                monthUse + "','" + yearUse + "')";
            SqlCommand command = new SqlCommand(sqlInsert, connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('Successfully saved');",true);

            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToString("dd MMMM yyyy");
              Calendar1.Visible = false;
        }

        protected void btnDT_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = false;
        }

        protected void type_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //Display the Picture in Image control.
            Image.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);

            Image.ImageUrl.ToString();
           


        }
    }
}