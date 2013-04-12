<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GoogleAnnotatedTimeline.ascx.cs" Inherits="Components_GoogleAnnotatedTimeline" %>
<!--
You are free to copy and use this sample in accordance with the terms of the
Apache license (http://www.apache.org/licenses/LICENSE-2.0.html)
-->
  <div id="visualization" style="width: 800px; height: 400px;"></div>
  <script type="text/javascript" src="http://www.google.com/jsapi"></script>
  <asp:Literal ID="LitOpenScriptTag" runat="server"></asp:Literal>
      google.load('visualization', '1', { packages: ['annotatedtimeline'] });
      function drawVisualization() {
          var data = new google.visualization.DataTable();
          data.addColumn('date', 'Date');
          <asp:Literal ID="LitColumns" runat="server"></asp:Literal>

          data.addRows([
            <asp:Literal ID="Litrows" runat="server"></asp:Literal>
       
      ]);

          var annotatedtimeline = new google.visualization.AnnotatedTimeLine(
          document.getElementById('visualization'));
          annotatedtimeline.draw(data, { 'displayAnnotations': true });
      }

      google.setOnLoadCallback(drawVisualization);
  <asp:Literal ID="LitCloseScriptTag" runat="server"></asp:Literal>



​