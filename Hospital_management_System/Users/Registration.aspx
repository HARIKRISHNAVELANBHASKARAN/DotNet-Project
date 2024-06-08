<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Hospital_management_System.Users.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        /* Styling for the registration form */

        .registration-form {
            width: 400px;
            margin: auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .registration-form h1 {
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .registration-form input[type="text"],
        .registration-form input[type="email"],
        .registration-form input[type="password"],
        .registration-form input[type="tel"],
        .registration-form input[type="checkbox"],
        .registration-form button {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            outline: none;
        }
        .registration-form button {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .registration-form button:hover {
            background-color: #0056b3;
        }
    </style>

    <div class="registration-form">
        <h1>Sign Up</h1>
        <asp:TextBox ID="txt_signup_username" runat="server" placeholder="Username"></asp:TextBox>
        <asp:TextBox ID="txt_signup_email" runat="server" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="txt_signup_mobile" runat="server" placeholder="Mobile No"></asp:TextBox>
        <asp:TextBox ID="txt_signup_pass" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
        <asp:TextBox ID="txt_signup_cpass" TextMode="Password" runat="server" placeholder="Re-Password"></asp:TextBox>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>
    </div>

</asp:Content>
