using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;
using System.IO;
using System.Xml.Linq;
using System.Security.AccessControl;
using System.ComponentModel.Design;

namespace MyWebApplication
{
    public partial class view : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            string txtUsername = Session["txtUsername"].ToString();
            string txtPassword = Session["txtPassword"].ToString();
            txtUserlogin.Text = txtUsername;
            Calendar1.Visible = false;
            Calendar2.Visible = false;

            //สรุป  สถานะ1
            string statusCount1= "SELECT COUNT(STATUS_ID) FROM PETITION WHERE STATUS_ID = 1";
            SqlCommand commandStatusCount1 = new SqlCommand(statusCount1, connection);
            connection.Open();
            Object statusC1 = commandStatusCount1.ExecuteScalar();
            string st1 = Convert.ToString(statusC1);
            string word = " คำร้องเรียน";
            showType1.Text = st1+word;

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


            //เรียกstatus
            string sqlStatus1 = "SELECT * FROM STATUS";
            // SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
            SqlCommand command = new SqlCommand(sqlStatus1, connection);
            connection.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlStatus1, connection);

            da1.Fill(ds);
            if (!IsPostBack)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    status1.Items.Add(new ListItem(ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][0].ToString()));
                    //status2.Items.Add(new ListItem(ds.Tables[0].Rows[i][1].ToString(), ds.Tables[0].Rows[i][0].ToString()));

                }
            }


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



        protected void Button3_Click(object sender, EventArgs e)
        {
            //search
            string pCode = txtPetition.Text; //เลขที่ใบคำร้อง


            string sql1 = "SELECT P.PETITION_CODE, P.PETITIONTITLE, S.STATUSNAME FROM PETITION P JOIN STATUS S" +
                " ON P.STATUS_ID = S.STATUS_ID WHERE PETITION_CODE ='" + pCode + "'";
            SqlCommand command1 = new SqlCommand(sql1, connection);
            connection.Open();
            SqlDataAdapter sd = new SqlDataAdapter(command1);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;

            GridView1.DataBind();
            connection.Close();
            //search



            //ปุ่มเลือกคำร้องเพื่ออัพเดทสถานะ
            string codePt = txtPetition.Text;
           // string status = status1.Text;
            string nameStatus = "SELECT S.STATUSNAME FROM STATUS S JOIN PETITION P ON P.STATUS_ID = S.STATUS_ID" +
                " WHERE P.PETITION_CODE = '" + codePt + "'";
            SqlCommand commandStatus = new SqlCommand(nameStatus, connection);
            connection.Open();
            SqlDataReader readStatus = commandStatus.ExecuteReader();
            using (readStatus)
            {
                while (readStatus.Read())
                {
                    string pStatus = (readStatus["STATUSNAME"].ToString());

                    statusOld.Text = pStatus;
                   
                }
            }



            string pCodeGet = txtPetition.Text;
            string nameType = "SELECT PT.PETITIONNAME FROM PETITIONTYPE PT JOIN PETITION P ON PT.PETITIONTYPE_ID = P.PETITIONTYPE_ID" +
                " WHERE P.PETITION_CODE = '" + pCodeGet + "'";
            SqlCommand commandType = new SqlCommand(nameType, connection);
            //connection.Open();
            SqlDataReader readType = commandType.ExecuteReader();
            using (readType)
            { 
                while (readType.Read())
                {
                    string pType = (readType["PETITIONNAME"].ToString());

                    type2.Text = pType;
                   
                }
            }
            string sql2 = "SELECT R.RFIRSTNAME, R.RLASTNAME,P.PETITION_CODE,P.PETITIONTITLE,P.PETITIONDETAIL,"+
                "P.PETITIONIMAGE,P.PETITIONDATE, P.PETITIONMONTH, P.PETITIONYEAR" +
            " FROM RESIDENT R JOIN PETITION P ON R.RESIDENT_ID=P.RESIDENT_ID WHERE P.PETITION_CODE = '" + pCodeGet + "'";
            SqlCommand command = new SqlCommand(sql2, connection);
       
            SqlDataReader read = command.ExecuteReader();
            using (read)
            {
                while (read.Read())
                {

                    string dateUse = (read["PETITIONDATE"].ToString()) + " " + (read["PETITIONMONTH"].ToString()) +
                        " " + (read["PETITIONYEAR"].ToString());
                    txtName.Text = (read["RFIRSTNAME"].ToString());
                    txtLName.Text = (read["RLASTNAME"].ToString());
                    txtDate.Text = dateUse;
                    txtCode.Text = (read["PETITION_CODE"].ToString());
                    title.Text = (read["PETITIONTITLE"].ToString());
                    txtDetail.Text = (read["PETITIONDETAIL"].ToString());
                    string pic = (read["PETITIONIMAGE"].ToString());
                    Image.ImageUrl = pic;

                }
                
            }
            connection.Close();



            //ผู้รับเหมา
            string sqlCt = "SELECT * FROM CONTRACTOR";
            // SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
            SqlCommand commandCt = new SqlCommand(sqlCt, connection);
            connection.Open();
            DataSet ds2 = new DataSet();
            SqlDataAdapter daCt = new SqlDataAdapter(sqlCt, connection);

            daCt.Fill(ds2);
            
                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    contractor.Items.Add(new ListItem(ds2.Tables[0].Rows[i][1].ToString(), ds2.Tables[0].Rows[i][0].ToString()));


                }
            connection.Close();










        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            txtOpen.Text = Calendar1.SelectedDate.ToString("dd MMMM yyyy");
            Calendar1.Visible = false;

            txtEnd.Text = Calendar2.SelectedDate.ToString("dd MMMM yyyy");
            Calendar2.Visible = false;
        }

        protected void btnOpen_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void btnEnd_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void btnUpload1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload3.SaveAs(folderPath + Path.GetFileName(FileUpload3.FileName));

            //Display the Picture in Image control.
            Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload3.FileName);

            Image1.ImageUrl.ToString();
        }

        protected void btnUpload2_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload4.SaveAs(folderPath + Path.GetFileName(FileUpload4.FileName));

            //Display the Picture in Image control.
            Image2.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload4.FileName);

            Image2.ImageUrl.ToString();
        }

        protected void btnUpload3_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload5.SaveAs(folderPath + Path.GetFileName(FileUpload5.FileName));

            //Display the Picture in Image control.
            Image3.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload5.FileName);

            Image3.ImageUrl.ToString();
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            string statusOne = status1.Text;                     
            string codePt = txtPetition.Text;

            string upDateStatus = "UPDATE PETITION SET STATUS_ID ='" + statusOne + "' WHERE PETITION_CODE ='" + codePt + "'";
            SqlCommand command = new SqlCommand(upDateStatus, connection);
            connection.Open();
            command.ExecuteNonQuery();
           
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);
            //string codePt = txtPetition.Text;
            // string status = status1.Text;
            string nameStatus = "SELECT S.STATUSNAME FROM STATUS S JOIN PETITION P ON P.STATUS_ID = S.STATUS_ID" +
                " WHERE P.PETITION_CODE = '" + codePt + "'";
            SqlCommand commandStatus = new SqlCommand(nameStatus, connection);
            
            SqlDataReader readStatus = commandStatus.ExecuteReader();
            using (readStatus)
            {
                while (readStatus.Read())
                {
                    string pStatus = (readStatus["STATUSNAME"].ToString());

                    statusOld.Text = pStatus;

                }
            }

            connection.Close();


            //command.ExecuteNonQuery();
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);
            //connection.Open();
            //connection.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("view.aspx");
        }

      

        protected void summit_Click(object sender, EventArgs e)
        {
            //idEmp
            string emp = txtUserlogin.Text;           
            string idEmp = "SELECT EMP_ID FROM EMPLOYEE WHERE EMP_CODE='" + emp + "'";
            SqlCommand commandId1 = new SqlCommand(idEmp, connection);
            connection.Open();
            Object id1 = commandId1.ExecuteScalar();
            int saveIdEmp = Convert.ToInt32(id1);

            //idคำร้อง
            string petition = txtPetition.Text;
            string idPetition = "SELECT PETITION_ID FROM PETITION WHERE PETITION_CODE='" + petition + "'";
            SqlCommand commandId2 = new SqlCommand(idPetition, connection);
            
            Object id2 = commandId2.ExecuteScalar();
            int saveIdPeti = Convert.ToInt32(id2);

            //สถานะProcess
            string status = status2.Text;
            //ค่าใช้จ่าย
            string pay = txtPay.Text;
            //หมายเหตุ
            string note = txtNote.Text;
            
            //รูป
            string pic1 = Image1.ImageUrl.ToString();
            string pic2 = Image2.ImageUrl.ToString();
            string pic3 = Image3.ImageUrl.ToString();

            string dateOpen = txtOpen.Text;
            string dateEnd = txtEnd.Text;

            //วันที่ก่อน
            DateTime dateDataOpen = Convert.ToDateTime(dateOpen);
            string dateUse1 = dateDataOpen.Day.ToString();
            string monthUse1 = dateDataOpen.Month.ToString();
            string yearUse1 = dateDataOpen.Year.ToString();
            //วันที่หลัง
            DateTime dateDataEnd = Convert.ToDateTime(dateEnd);
            string dateUse2 = dateDataEnd.Day.ToString();
            string monthUse2 = dateDataEnd.Month.ToString();
            string yearUse2 = dateDataEnd.Year.ToString();

            //idผู้รับเหมา
            string contr = contractor.Text;
            string idContr = "SELECT CONTRACTOR_ID FROM CONTRACTOR WHERE CCOMPANYNAME='" + contr + "'";
            SqlCommand commandId3 = new SqlCommand(idContr, connection);
            
            Object id3 = commandId1.ExecuteScalar();
            int saveIdCtr = Convert.ToInt32(id3);


            string sqlInsert = " INSERT INTO PROCESS (EMP_ID,CONTRACTOR_ID,PETITION_ID,PCOST," +
               "REMARK,PRECEIPT,IMAGEBEFORE,IMAGEAFTER,PSTARTDATE,PSTARTMONTH,PSTARTYEAR,"+
               "PENDDATE,PENDMONTH,PENDYEAR,STATUS) values (" + saveIdEmp + "," +
               saveIdCtr + "," + saveIdPeti + ",'" + pay + "','" + note + "','" + pic1 + "','" + pic2 + "','" +
               pic3 + "','"+ dateUse1 + "','"+ monthUse1 +
               "','"+ yearUse1 + "','"+ dateUse2 + "','"+ monthUse2 + "','"+ yearUse2 + "','"+ status + "')";
            SqlCommand command = new SqlCommand(sqlInsert, connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);

        }

    }
 }  