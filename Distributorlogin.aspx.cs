﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Distributorlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
   
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from disreg where disid='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Session["disid"] = dt.Rows[0]["disid"].ToString();
            Session["disname"] = dt.Rows[0]["disname"].ToString();
            ClientScript.RegisterStartupScript(Page.GetType(), "Validation", "<script language='javascript'>alert('Login Successfully..');window.location='Distributerpage.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert ('Invalid  Id and Password')</script>");
        } 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Disregister.aspx");
    }
}