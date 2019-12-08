using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Project
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int date = 01;
                for (int i = date; i <= date + 30; i++)
                {
                    ListItem li = new ListItem(i.ToString());
                    DropDownList2.Items.Add(li);
                }
                DropDownList2.Items.FindByText(date.ToString()).Selected = true;

                int year = DateTime.Now.Year;
                for (int i = year - 45; i <= year; i++)
                {
                    ListItem li = new ListItem(i.ToString());
                    DropDownList3.Items.Add(li);
                }
                DropDownList3.Items.FindByText(year.ToString()).Selected = true;
            }


        }
        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
           
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string Fname = this.TextBox1.Text;
            string Lname = this.TextBox2.Text;
            string Email = this.TextBox3.Text;
            string password = this.TextBox4.Text;
            string Rpassword = this.TextBox5.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            if (Fname == "" || Lname == "" || Email == "" || password == "" || DropDownList1.SelectedValue == "Day" || DropDownList2.SelectedValue == "Month" || DropDownList3.SelectedValue == "Year")
            {
                this.Label1.Text = "Please enter the valid details!!";
            }
            else if (password != Rpassword)
            {
                this.Label1.Text = "The Password entered should match with Retype Password";
            }
            else
            {

                try
                {
                    
             
                    string insert = "insert into User_info(FirstName,LastName,Email,Password,DOB_Date,DOB_Month,DOB_Year,Gender,MusicGenre)values(@FirstName,@LastName,@Email,@Password,@DOB_Date,@DOB_Month,@DOB_Year,@Gender,@MusicGenre)";
                    SqlCommand cmd = new SqlCommand(insert, conn);
                    cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@DOB_Date", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("DOB_Month", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("DOB_Year", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@Gender", DropDownList4.SelectedValue);
                    cmd.Parameters.AddWithValue("@MusicGenre", DropDownList5.SelectedValue);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Label1.Text = "Registration Sucessfull!!";

                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex);
                }
            }
        }

       
    }
}

       
        
    
