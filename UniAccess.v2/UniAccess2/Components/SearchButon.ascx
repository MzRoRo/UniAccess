<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SearchButon.ascx.cs" Inherits="Components_SearchButon" %>

<div id="divSearch"  class="divSearch pull-right" runat="server">
     <%--style="background-color:transparent;"--%> 
     <%--style="background-image:none;background-color:transparent;"--%>
    <asp:TextBox ID="txtSearchText"  runat="server" CssClass="input-medium search-query" onblur="if (this.value == '') {this.value = 'Search...';}" onfocus="if (this.value == 'Search...') {this.value = '';}"></asp:TextBox>
    <asp:Button ID="btnSubmitSearch" runat="server" type="submit" Text="Search" CssClass="btn" />
</div>
