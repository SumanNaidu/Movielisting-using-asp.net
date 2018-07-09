using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;

namespace movie
{
    public partial class Adding : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Mithun M\Documents\Visual Studio 2010\Projects\movie\movie\App_Data\movie.mdf;Integrated Security=True;User Instance=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd3 = new SqlCommand("select distinct A_Name from Actor", con);
            
            SqlDataReader dr = cmd3.ExecuteReader();
            
            while (dr.Read())
            {
                DropDownList1.Items.Add(dr[0].ToString());
            }
            dr.Close();
            con.Close();
            con.Open();
            SqlCommand cmd4 = new SqlCommand("select distinct P_Name from Producer", con);
            SqlDataReader dr1 = cmd4.ExecuteReader();
            while (dr1.Read())
            {
                DropDownList2.Items.Add(dr1[0].ToString());
            }
            dr1.Close();
            con.Close();
        }

        
        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            SqlCommand cmd11 = new SqlCommand("select * from Actor where A_Name='"+TextBox4.Text+"' and DOB='"+TextBox6.Text+"'", con);
            con.Open();
            SqlDataReader dr= cmd11.ExecuteReader();
            
            if(dr.HasRows)
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Actor Values Existing')</script>");
                dr.Close();
                con.Close();
                
            }
            
            else
            {
                con.Close();
            SqlCommand cmd1 = new SqlCommand("insert into Actor values('" + TextBox4.Text + "','" + DropDownList3.SelectedItem + "','" + TextBox6.Text + "','" + TextBox10.Text + "')", con);
            con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
            Response.Write("<script LANGUAGE='JavaScript'>alert('Actor Values Inserted')</script>");
            }
            
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd12 = new SqlCommand("select * from Producer where P_Name='"+TextBox7.Text+"' and DOB='"+TextBox9.Text+"'", con);
            con.Open();
            SqlDataReader dr= cmd12.ExecuteReader();

            if (dr.HasRows)
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Producer Values are already Existing')</script>");
                dr.Close();
                con.Close();

            }

            else
            {
                con.Close();
                con.Open();
                SqlCommand cmd2 = new SqlCommand("insert into Producer values('" + TextBox7.Text + "','" + DropDownList4.SelectedItem + "','" + TextBox9.Text + "','" + TextBox11.Text + "')", con);
                cmd2.ExecuteNonQuery();
                con.Close();
                Response.Write("<script LANGUAGE='JavaScript'>alert('Producer Values Inserted')</script>");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
            string path = Server.MapPath("images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "images/" + FileUpload1.FileName;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Movies values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + name + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Movie DetailsAdded sucessfully')</script>");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Invalid file format')</script>");
                }
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript'>alert('Please select the file')</script>");
            }
        }
    }
}