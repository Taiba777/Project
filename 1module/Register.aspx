<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FYP.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
    <style>
       #RegularExpressionValidator4{
           margin-top:0px;
       }


        .auto-style4 {
            width: 444px;
        }


        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            width: 444px;
            height: 30px;
        }
        .auto-style9 {
            height: 40px;
            width: 300px;
            margin-top: 5px;
            padding-left: 15px;
            border-radius: 5px;
            float: left;
            font-size: larger;
        }
        #CheckBox1{
            padding-right:15px;
            margin-right:10px;
            
          
        }


    </style>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    <script type="text/javascript"> 
        $(document).ready(function () {
            $('#show_password').on('click', function () {
                var password = $('#TextBox2');
                var field = password.attr('type');
                if (field == 'password') {
                    password.attr('type', 'text');
                    (this).text('Hide');
                }
                else {
                    password.attr('type', 'password');
                    (this).text('Show');
                }
            });
        });
      

    </script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div>
             <div>
            <div class="registerbox">
                
            <h2 class="h22" style="padding-left:5px;">Register</h2><hr />
                 <table class="reg">
                    <tr><td><asp:Label ID="Label5" runat="server" Text=" Name" CssClass="l1" AutoCompleteType="Disabled"></asp:Label></td>
                  <td class="auto-style4"> <asp:TextBox ID="TextBox5" runat="server"  CssClass="bj"></asp:TextBox></td></tr >
                 <tr><td></td><td> <asp:RegularExpressionValidator ID="regName" runat="server" forecolor="Red" ControlToValidate="TextBox5"   ValidationExpression="^[a-zA-Z'.\s]{1,30}" Text="Enter a valid name" /> </td></tr>
                     


                <tr> <td><asp:Label ID="Label1" runat="server" Text="User Name" CssClass="l1"></asp:Label></td>
                   <td class="auto-style4"> <asp:TextBox ID="TextBox1" runat="server"  CssClass="b8"> </asp:TextBox></td></tr>
      
                   <tr><td class="auto-style5"></td>  <td class="auto-style6">  <asp:regularexpressionvalidator id="RegularExpressionValidator4" display="Dynamic" errormessage="Require user_name with 7-10 character including numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{7,10})$" controltovalidate="TextBox1" runat="server">
</asp:regularexpressionvalidator></td></tr>
               
                     


               <tr> <td><asp:Label ID="Label2" runat="server" Text="Password"      CssClass ="l1"></asp:Label></td>
               <td class="auto-style4"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="b8" ></asp:TextBox>
               <Button id="show_password"  class="primary" type="button"  > 
                    <span class="glyphicon glyphicon-eye-open"></span>
               </td></tr>
                     <tr>
                         <td class="auto-style5"></td><td class="auto-style6"> <asp:regularexpressionvalidator id="RegularExpressionValidator1" display="Dynamic" errormessage="Require 8-10 character including numeric character." forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" controltovalidate="TextBox2" runat="server">
</asp:regularexpressionvalidator></td></tr>
                   <%-- <tr><td></td>   <td class="auto-style4">  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password required" ForeColor="Red" ></asp:RequiredFieldValidator></td></tr> --%>


                                 <tr><td> <asp:Label ID="Label3" runat="server" Text="Confirm Password"  CssClass="l1"></asp:Label></td>
                                 <td class="auto-style4"> <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"  CssClass="b8"></asp:TextBox><br /></td></tr>
                    <tr><td></td><td class="auto-style4">  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" ControlToCompare="TextBox2" ErrorMessage="Confirmation required" ForeColor="Red" ></asp:CompareValidator></td></tr>

                     
                                 <tr><td> <asp:Label ID="Label4" runat="server" Text="Phone Number" CssClass="l1"></asp:Label></td>
                                     <td class="auto-style4"> <asp:TextBox ID="TextBox4" runat="server"  CssClass="b8"></asp:TextBox></td></tr>
                   
                                     <%--<tr><td></td><td class="auto-style4">  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Phone_Number required" ForeColor="Red" ></asp:RequiredFieldValidator></td></tr >--%>
             <tr><td></td> <td class="auto-style4">  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="Invalid Phone_Number"  ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator></td></tr> 
                                     

                  
                     <tr><td> <asp:Label ID="Label6" runat="server" Text="CNIC" CssClass="l1"></asp:Label></td>
                                           <td class="auto-style4"> <asp:TextBox ID="TextBox6" runat="server"  CssClass="auto-style9"></asp:TextBox><br /></td></tr>
                    <%-- <tr><td></td><td class="auto-style4">   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="CNIC required" ForeColor="Red" ></asp:RequiredFieldValidator></td></tr>--%>
                  <tr><td></td><td class="auto-style4"> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="Invalid CNIC"  ValidationExpression="[0-9]{5}-[0-9]{7}-[0-9]{1}"></asp:RegularExpressionValidator>   </td></tr>

                 </table>
                              
                        <asp:CheckBox ID="CheckBox1" runat="server" text="I agree to the"   Checked ="true"  /><a href="#" class="comments">  Terms of policy</a> &nbsp;&nbsp;&nbsp;<br /><br />
           <asp:Button ID="Button1" runat="server" Text="Register" CssClass="b9" OnClick="Button1_Click" Width="107px" Height="54px"   />
          <br />
        </div>
        </div>

        </div>
    </form>
</body>
</html>
