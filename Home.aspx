<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image:url(img/f5.jpg);background-size:cover"> 
            <div class="form-group" style="margin-left:400px;margin-top:80px;background-color:rgba(101, 252, 31, 0.57);width:500px;height:640px;padding:20px 20px 20px 20px">
        <br />
        <div  style="margin-left:80px;margin-top:20px;font-family:'Book Antiqua'">
               <br />
        <h3 style="text-decoration:underline;font-family:Elephant;font-weight:100">CUSTOMER SIGNUP </h3>
        <br />            
        <asp:Label ID="Label1" Visible="false" runat="server" Text="CUSTOMER ID:"></asp:Label>
        <asp:TextBox ID="TextBox1" Visible="false" CssClass="form-control" style="width:300px" runat="server"></asp:TextBox>
            
        <asp:Label ID="Label2" runat="server" Text="CUSTOMER NAME:"></asp:Label>
             <asp:RegularExpressionValidator runat="server" ForeColor="#ff0066" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-Z'.\s]{1,50}" ErrorMessage="Enter The  Name"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox2" CssClass="form-control" style="width:300px" runat="server"></asp:TextBox>                  
            <asp:Label ID="Label13" runat="server" Text="GENDER:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" style="width:300px">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:DropDownList>
                <asp:Label ID="Label5" runat="server" Text="EMAILID:"></asp:Label>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  ForeColor="#ff0066" runat="server"  ErrorMessage="Enter Valid EmailID" ControlToValidate="TextBox5"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox5" CssClass="form-control" style="width:300px" runat="server"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" Text="MOBILE NUMBER:"></asp:Label>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  ForeColor="#ff0066" runat="server"  ControlToValidate="TextBox6" ErrorMessage="Mobile Should Be 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
        <asp:TextBox ID="TextBox6" CssClass="form-control" style="width:300px" runat="server"></asp:TextBox>           
            <asp:Label ID="Label10" runat="server" Text="STATE:"></asp:Label>
            <asp:TextBox ID="TextBox10"  CssClass="form-control"  style="width:300px;text-transform:uppercase"  runat="server"></asp:TextBox>
            <asp:Label ID="Label11" runat="server" Text="CITY:"></asp:Label>
            <asp:TextBox ID="TextBox11"  CssClass="form-control"  style="width:300px;text-transform:uppercase"  runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="PINCODE:"></asp:Label>
            <asp:TextBox ID="TextBox3"  CssClass="form-control"  style="width:300px;text-transform:uppercase"  runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  CssClass="border-primary btn-primary form-control" Text="REGISTER" style="float:left;width:100px" />
      
        </div>
    </div>
             </div>
</asp:Content>

