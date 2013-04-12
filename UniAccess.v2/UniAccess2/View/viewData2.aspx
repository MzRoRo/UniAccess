<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewData2.aspx.cs" Inherits="viewData2" %>

<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row-fluid">
        <div class="span3">
            <asp:DropDownList ID="drpDataSelect" OnSelectedIndexChanged="drpDataSelect_SelectedIndexChanged" AutoPostBack="true" runat="server">
                <asp:ListItem Selected="True" Value="-1">Select an Item</asp:ListItem>
                <asp:ListItem>Jamaican Farms</asp:ListItem>
                <asp:ListItem>Prices of Farm Products</asp:ListItem>
                <asp:ListItem>National 2012/13 Budget</asp:ListItem>
                <asp:ListItem>Recreational Locations in JA</asp:ListItem>
                <asp:ListItem>Residential Hotels in JA</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="span9">

        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <asp:UpdatePanel ID="updateData" runat="server">
                <Triggers><asp:AsyncPostBackTrigger ControlID="drpDataSelect" EventName="SelectedIndexChanged" />
                </Triggers>
                <ContentTemplate>
                    <asp:Literal ID="litData" runat="server"></asp:Literal>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    </form>

