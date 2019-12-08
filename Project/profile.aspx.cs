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
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                
                string uname = Session["username"].ToString();
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                try
                {
                    conn.Open();
                    string user = "select * from User_info where Email='" + Session["username"] + "'";
                    SqlCommand cmd = new SqlCommand(user, conn);
                    SqlDataReader verify = cmd.ExecuteReader();
                   
                    if (verify.Read())
                    {
                       
                        this.Label1.Text = verify["FirstName"].ToString()+" "+verify["LastName"].ToString();
                        this.Label2.Text = verify["Email"].ToString();
                        this.Image1.ImageUrl = verify["image"].ToString();
                        
                        
                    }

                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }
               
            }
        }
    }
}