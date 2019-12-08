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
    public partial class Site1 : System.Web.UI.MasterPage
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
                        if (verify["Image"].ToString() == "")
                        {
                            Image1.ImageUrl = "~/Images/defaultprofile.jpg";
                        }
                        else
                        {
                            byte[] img = (byte[])verify["Image"];
                            string dispimg = Convert.ToBase64String(img, 0, img.Length);
                            Image1.ImageUrl = "data:Image/png;base64," + dispimg;
                        }

                        this.Label1.Text = verify["FirstName"].ToString() + " " + verify["LastName"].ToString();
                        this.Label2.Text = verify["Email"].ToString();

                        


                    }
                    conn.Close();

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
        }

        }
    }


