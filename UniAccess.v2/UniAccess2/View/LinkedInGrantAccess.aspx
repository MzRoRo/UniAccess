<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinkedInGrantAccess.aspx.cs" Inherits="View_LinkedInGrantAccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<%
    
     %>
    <form id="form1" runat="server">
    <div>
       <a href="https://www.linkedin.com/uas/oauth2/accessToken?grant_type=authorization_code&code=<% Response.Write(Request.QueryString["code"]); %>&redirect_uri=http://localhost:59088/UltimateProject/View/LinkedInGrantAccess.aspx&client_id=3dfblocx2n9q&client_secret=ayeNfKBU4iUMgEhQ">Grant Access</a>
    </div>
    </form>
</body>
</html>
