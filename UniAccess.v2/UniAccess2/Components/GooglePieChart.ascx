<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GooglePieChart.ascx.cs" Inherits="Components_GooglePieChart" %>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<asp:Literal ID="LitOpenScriptTag" runat="server"></asp:Literal>


    // Load the Visualization API and the piechart package.
    google.load('visualization', '1.0', { 'packages': ['corechart'] });

    // Set a callback to run when the Google Visualization API is loaded.
    google.setOnLoadCallback(drawChart<asp:Literal ID="Literal9" runat="server"></asp:Literal>);

    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart<asp:Literal ID="Literal8" runat="server"></asp:Literal>() {

        // Create the data table.
        var data<asp:Literal ID="Literal3" runat="server"></asp:Literal> = new google.visualization.DataTable();
        data<asp:Literal ID="Literal4" runat="server"></asp:Literal>.addColumn('string', '<asp:Literal ID="LitColumnName" runat="server"></asp:Literal>');
        data<asp:Literal ID="Literal5" runat="server"></asp:Literal>.addColumn('number', '<asp:Literal ID="LitValueName" runat="server"></asp:Literal>');
        data<asp:Literal ID="Literal6" runat="server"></asp:Literal>.addRows([
            <asp:Literal ID="LitValues" runat="server"></asp:Literal>
        ]);

        // Set chart options
        var options<asp:Literal ID="Literal1" runat="server"></asp:Literal> = { 'title': '<asp:Literal ID="LitTitle" runat="server"></asp:Literal>',
            'width': <asp:Literal ID="LitWidth" runat="server"></asp:Literal>,
            'height': <asp:Literal ID="LitHeight" runat="server"></asp:Literal>
        };

        // Instantiate and draw our chart, passing in some options.
        var chart<asp:Literal ID="Literal10" runat="server"></asp:Literal> = new google.visualization.PieChart(document.getElementById('<asp:Literal ID="LitChartId" runat="server"></asp:Literal>'));
        chart<asp:Literal ID="Literal11" runat="server"></asp:Literal>.draw(data<asp:Literal ID="Literal7" runat="server"></asp:Literal>, options<asp:Literal ID="Literal2" runat="server"></asp:Literal>);
    }



<asp:Literal ID="LitCloseScriptTag" runat="server"></asp:Literal>

<asp:Literal ID="LitChart" runat="server"></asp:Literal>