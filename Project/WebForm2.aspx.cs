using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string a;
                a = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(a);
                
                if (!FileUpload1.HasFile)
                {
                    Label3.Text = "Please enter the imager";

                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[length];
                    FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                    SqlCommand cmd = new SqlCommand(" update User_info set Image='"+pic+"'where Email='"+Session["username"]+"'", conn);

                    
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Label3.Text = "uploaded";
                    conn.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write("error" + ex);
            }
        }
    }
    }
