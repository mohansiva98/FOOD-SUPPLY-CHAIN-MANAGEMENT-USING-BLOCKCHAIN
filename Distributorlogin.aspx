<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Distributorlogin.aspx.cs" Inherits="Distributorlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="background-image:url(img/f4.jpg);background-size:cover">
        <br />
     <div class="form-group" style="margin-left:400px;margin-top:80px;background-color:rgba(86, 251, 10, 0.59);width:500px;height:320px">
        <br />
        <div  style="margin-left:80px;margin-top:20px;font-family:'Book Antiqua'">
        <h3 style="text-decoration:underline;font-family:Elephant;font-weight:100">Distributor's Login</h3>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Distributor Id:" style="font-weight:bolder"></asp:Label>
        <asp:TextBox ID="TextBox1" CssClass="form-control" style="width:300px" runat="server"></asp:TextBox>
            <br />
        <asp:Label ID="Label2" runat="server" Text="Distributor Password:" style="font-weight:bolder"></asp:Label>
        <asp:TextBox ID="TextBox2" CssClass="form-control" style="width:300px" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  CssClass="border-primary btn-primary form-control" Text="LOGIN" style="float:left;width:100px" />
       <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click"  CssClass="border-primary btn-primary form-control" Text="REGISTER" style="float:left;width:100px;margin-left:20px" />
        </div>
    </div>
        <br />
    <br />
    <br />
    </div>
</asp:Content>

