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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string search = this.TextBox1.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                conn.Open();
                String users = "select* from User_info where Email = '" + search + "'";
                SqlCommand cmd = new SqlCommand(users, conn);
                SqlDataReader verify = cmd.ExecuteReader();
                if (verify.Read())
                {
                    this.Label3.Text = verify["FirstName"].ToString();
                    this.Label4.Text = verify["LastName"].ToString();
                    this.Label5.Text = "DOB";
                    this.Label6.Text = verify["DOB_Month"].ToString() + "/" +verify["DOB_Date"].ToString()+"/"+verify["DOB_Year"].ToString();
                    this.Label7.Text = "Favourite Music Genre";
                    this.Label8.Text = verify["MusicGenre"].ToString();
                    conn.Close();
                   
                }
                else
                {
                    this.Label9.Text = "No results found!";
                }
            }
            catch
            {

            }
        }
    }
}