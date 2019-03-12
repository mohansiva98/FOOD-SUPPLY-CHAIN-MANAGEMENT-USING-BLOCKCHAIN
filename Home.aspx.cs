using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = "CUS_0" + ID();
        TextBox1.ReadOnly = true;
    }

    public int ID()
    {
        con.Open();
        int ID = 0;
        SqlCommand cmd = new SqlCommand("select count(*) from cusreg", con);
        ID = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        con.Close();
        return ID;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into cusreg (cusid,cusname,genderr,mailidd,mobno,statee,cityy,pinn) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox3.Text + "')", con);
            int i = cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Registered Successfully..');window.location='Customer.aspx';</script>");
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Already Emailid Exist')</script>");
        }
    }
}