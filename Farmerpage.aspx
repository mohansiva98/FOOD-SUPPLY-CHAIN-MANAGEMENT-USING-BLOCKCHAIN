<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Farmerpage.aspx.cs" Inherits="Farmerpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image:url(img/f10.jpg);background-size:cover">
         <div>
        <br />
        <br />
          <div style="margin-left:500px">
              <h3 style="font-family:Elephant">PRODUCT UPLOADING</h3>
              <br />
              <br />
              <asp:Label ID="Label1" runat="server" Text="Choose Product:" ForeColor="White"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="bg-danger form-control" style="width:300px" ></asp:FileUpload>
                          <br />
              <asp:Label ID="Label2" runat="server" Text="Choose Product Image:" ForeColor="White"></asp:Label>
        <asp:Image ID="Image1" Width="180" Height="180"  runat="server"  CssClass="form-control" BackColor="White" />
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"   style="color:rgba(254, 4, 4, 0.95);margin-left:240px;top:950px;position:absolute;background-color:#000000">UPLOAD PRODUCT IMAGE</asp:LinkButton>
              <br />
           <asp:Label ID="Label3" runat="server" Text="Product Private Id:" ForeColor="White" ></asp:Label>
              <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" style="width:300px"></asp:TextBox>
              <br />
              <asp:Label ID="Label4" runat="server" Text="Product Name:" ForeColor="White"></asp:Label>
              <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" style="width:300px"></asp:TextBox>
              <br />
              <asp:Label ID="Label5" runat="server" Text="Product Price:" ForeColor="White"></asp:Label>
              <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" style="width:300px"></asp:TextBox>
              <br />
              <asp:Label ID="Label6" runat="server" Text="Label" Visible="false" ForeColor="White"></asp:Label>
        <asp:Button ID="Button2" runat="server" Text="Upload Product"  style="width:170px" CssClass="form-control btn-danger"  OnClick="Button2_Click" />
              <br />
              <br />
                  </div> 
    </div>
        <br />
    <br />
    <br />
        </div>
</asp:Content>

