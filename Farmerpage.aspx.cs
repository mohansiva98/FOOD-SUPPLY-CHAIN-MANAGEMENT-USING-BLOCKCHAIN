using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Farmerpage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        int count;
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from farmerproduct", con);
        count = Convert.ToInt16(cmd.ExecuteScalar()) + 1;
        TextBox1.Text = "P0R0I0D0" + count;
        con.Close();
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into farmerproduct values('" + Label6.Text.Trim() + "','" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Product Uploaded Successfully..');window.location='Home.aspx';</script>");
     

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string folderPath = Server.MapPath("~/productimage/");
        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath))
        {
            //If Directory (Folder) does not exists Create it.
            Directory.CreateDirectory(folderPath);
        }
        //Save the File to the Directory (Folder).
        FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //Display the Picture in Image control.
        Image1.ImageUrl = "~/productimage/" + Path.GetFileName(FileUpload1.FileName);
        string s = FileUpload1.FileName;
        Label6.Text = s;
    }
}