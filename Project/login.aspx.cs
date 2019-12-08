using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = this.TextBox1.Text;
            string password = this.TextBox2.Text;
            if (uname == "" && password == "")
            {
                this.Label1.Text = "Username cannot be empty";
                this.Label2.Text = "Password Cannot be empty";
                
               
            }
            else if (uname == "")
            {
                this.Label1.Text = "Username cannot be empty";
            }
            else if (password == "")
            {
                this.Label2.Text = "Password cannot be empty";
                
            }
            else
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    conn.Open();
                    string login = "select * from User_info where Email='" + uname + "' and Password='"+password+"'";
                    SqlCommand cmd = new SqlCommand(login, conn);
                    SqlDataReader verify = cmd.ExecuteReader();
                    if (verify.Read())
                    {
                        Session["username"] = uname;
                        Response.Redirect("WebForm1.aspx");
                        Session.RemoveAll();
                        
                    }
                    
                    else
                    {
                        this.Label3.Text = "Please enter valid Username or Password";
                    }
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}