<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="UniAccess2.View.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                <iframe src="../Account/Manage.aspx" width="100%" height="500"></iframe>
            </AnonymousTemplate>
            <LoggedInTemplate>
                    <ul class="menu">
                        <li onclick="(function(){$().attr('src','');})()">Login</li>
                        <li>Change Password</li>
                        <li>Other Details</li>
                    </ul>
                    <iframe src="" id="userarea" width="100%" height="90%"></iframe>
            </LoggedInTemplate>
        </asp:LoginView>

    </div>
    </form>
</body>
</html>
