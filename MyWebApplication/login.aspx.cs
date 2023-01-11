using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
            Session.Remove("txtUsername");
            Session.Remove("txtPassword");
            txtUsername.Focus();
            //Response.RedirectPermanent("login.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Session["txtUsername"] = txtUsername.Text;
            //Session["txtPassword"] = txtPassword.Text;
            //if (Session["txtUsername"] != null && Session["txtPassword"] != null)
            //{
            //    string txtUsername = Session["txtUsername"].ToString();
            //    string txtPassword = Session["txtPassword"].ToString();
            //    if (txtUsername == "admin" && txtPassword == "admin")
            //    {
            //        string text1;
            //        text1 = "Welcome !";
            //        nameLabel.Text = text1;
            //        Response.RedirectPermanent("view.aspx");
            //    }

            //    if (txtUsername == "user" && txtPassword == "user")
            //    {
            //        string text1;
            //        text1 = "Welcome !";
            //        nameLabel.Text = text1;
            //        Response.RedirectPermanent("viewResident.aspx");
            //    }

            //}
            //else
            //{


            //    Response.RedirectPermanent("login.aspx");
            //}
            string sqlLogin = "SELECT USERTYPE FROM USERLOGIN WHERE USERNAME ='" + txtUsername.Text+"' AND PASSWORD = '"+ txtPassword.Text+"'";
            SqlConnection connection = new SqlConnection("Data Source=LAPTOP-LVPAEPUK;Initial Catalog=DB_Petition;Integrated Security=True");
            SqlCommand command = new SqlCommand(sqlLogin, connection);
            connection.Open();
            Object TypeUser = command.ExecuteScalar();
          connection.Close();
            // SqlDataReader reader = command.ExecuteReader();
            if (TypeUser != null)
            {
                //LblError.Visible = false;
                //LblError.Text = "";
                if (TypeUser.ToString() == "2")
                {
                    Session["txtUsername"] = txtUsername.Text;
                    Session["txtPassword"] = txtPassword.Text;
                    Response.Redirect("viewResident.aspx");
                }
                else if (TypeUser.ToString() == "1")
                {

                    Session["txtUsername"] = txtUsername.Text;
                    Session["txtPassword"] = txtPassword.Text;
                   
                    Response.Redirect("view.aspx");
                }
               
            }
            else
            {
                //LblError.Visible = true;
                //LblError.Text = "Invalid Credentials Entered, Try again";
            }
            //while (reader.Read()) 
            //{

            //    if (reader.ToString() != null) 
          
            //    {
                    
            //        if (reader.ToString() == "1")
            //        {

            //            Response.Redirect("view.aspx");
            //        }
            //        else if (reader.ToString() == "2")
            //        {
            //            Response.Redirect("viewResident.aspx");
            //        }
                   
            //    }
            //    else
            //    {
            //        Response.Redirect("login.aspx");

            //    }

            //}


        }
    }
}