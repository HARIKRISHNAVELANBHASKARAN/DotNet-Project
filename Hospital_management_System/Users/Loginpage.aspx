<%@ Page Title="Loginpage" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Hospital_management_System.Users.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        /* Styling for the login container */
        .login-container {
            width: 350px;
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .login-container h1 {
            font-size: 28px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
            text-align: center;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
        }
        .login-container .login-button {
            width: calc(100% - 20px);
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .login-container .login-button:hover {
            background-color: #0056b3;
        }
        .login-container .forgot-password {
            color: #007bff;
            text-decoration: underline;
            margin-top: 10px;
            display: block;
            text-align: center;
        }
        .login-container .signup-link {
            color: #007bff;
            font-weight: bold;
            text-decoration: none;
            margin-top: 10px;
            display: block;
            text-align: center;
        }
    </style>

    <center>
        <div class="login-container">
            <h1>Sign In</h1>
            <asp:TextBox ID="txt_login_username" runat="server" CssClass="login-textbox" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="txt_login_pass" runat="server" TextMode="Password" CssClass="login-textbox" placeholder="Password"></asp:TextBox>
            <asp:Button ID="btn_login_b" runat="server" Text="Login" CssClass="login-button" OnClick="btn_login_b_Click" />
            <a href="Forgotpassword.aspx" class="forgot-password">Forgot Password</a>
            <a href="Registration.aspx" class="signup-link">Sign Up</a>
        </div>
    </center>

</asp:Content>
