<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FYP.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <style type="text/css">
        .auto-style4 {
            margin-top: 31px;
            margin-bottom: 25px;
            background-color: blue;
            border-radius: 8px;
            color: white;
            font-size: 20px;
            padding: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        
            <div>
            <div class="loginbox">
            <h2 class="h22">Login</h2><hr />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="b1" Placeholder="User Name" AutoCompleteType="Disabled"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name required" ForeColor="Red" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" Placeholder="Password" CssClass="b2"></asp:TextBox><br />
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red" ></asp:RequiredFieldValidator>   
            
 
      
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="b3" PostBackUrl="~/Change.aspx">Forgot Password</asp:LinkButton><br />
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="auto-style4"   OnClick="Button1_Click1" Height="55px" Width="107px" /><br />
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="b5" PostBackUrl="~/Register.aspx">Register now</asp:LinkButton>
        </div>
                </div>
    </form>
</body>
</html>
