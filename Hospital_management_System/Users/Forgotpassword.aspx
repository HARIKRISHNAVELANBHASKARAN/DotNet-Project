<%@ Page Title="ForgotPassword" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="Hospital_management_System.Users.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        /* Styling for the forgot password container */
        .forgot-password-container {
            width: 377px;
            background-color: #f9f9f9;
            font-size: large;
            font-weight: bold;
            color: #FFFFFF;
            margin: 0 auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .forgot-password-container h1 {
            font-size: xx-large;
            font-weight: bold;
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
        .forgot-password-container input[type="text"],
        .forgot-password-container input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
        }
        .forgot-password-container .forgot-button {
            width: calc(100% - 20px);
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 15px;
        }
        .forgot-password-container .forgot-button:hover {
            background-color: #0056b3;
        }
        .forgot-password-container .sign-in-link {
            color: #007bff;
            font-weight: bold;
            text-decoration: none;
            display: block;
            text-align: center;
            margin-top: 10px;
        }
        .email {
        padding-left:10px;
        padding-right:10px;
        }
    </style>


    <center>
        <div class="forgot-password-container">
            <h1>Forgot Password</h1>
            <asp:TextBox ID="txt_fpass_Email" runat="server" Width="315px" placeholder="Email"></asp:TextBox>
            <asp:TextBox ID="txt_fpass_mobile" class="pass" runat="server" Width="315px" placeholder="Mobile"></asp:TextBox>
            <asp:TextBox ID="txt_fpass_oldpass" TextMode="Password" runat="server" placeholder="Old Password"></asp:TextBox>
            <asp:TextBox ID="txt_fpass_newpass" TextMode="Password" runat="server" placeholder="New Password"></asp:TextBox>
            <asp:Button ID="btn_fpass" runat="server" Text="Forgot Password" CssClass="forgot-button" OnClick="btn_fpass_Click" />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="sign-in-link" OnClick="LinkButton1_Click">Sign In</asp:LinkButton>
        </div>
    </center>

</asp:Content>
