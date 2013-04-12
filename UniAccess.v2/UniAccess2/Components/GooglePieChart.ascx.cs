using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Components_GooglePieChart : System.Web.UI.UserControl 
{
    public string chartId { get; set; }
    public string columnName { get; set; }
    public string valueTitle { get; set; }
    public string chartTitle { get; set; }
    public int height { get; set; }
    public int width { get; set; }
    public List<PieValue> rows { get; set; }

    public Components_GooglePieChart()
    {
        rows = new List<PieValue>();
    }

    public Components_GooglePieChart(string id, string column, string valuetitle, string title, int height, int width, List<PieValue> d)
    {
        rows = new List<PieValue>();
        rows = d;
        chartId = id;
        columnName = column;
        valueTitle = valuetitle;
        chartTitle = title;
        this.height = height;
        this.width = width;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (string.IsNullOrWhiteSpace(chartId))
            return; //do nothing

        LitOpenScriptTag.Text = "<script type='text/javascript'>";
        LitCloseScriptTag.Text = "</script>";
        LitTitle.Text = chartTitle;
        Literal1.Text = Literal2.Text = Literal3.Text = Literal4.Text = Literal5.Text = Literal6.Text = Literal7.Text =
            Literal8.Text = Literal9.Text = Literal10.Text = Literal11.Text = 
        LitChartId.Text = this.chartId;
        LitColumnName.Text = this.columnName;
        LitHeight.Text = height.ToString();
        LitWidth.Text = width.ToString();
        LitValueName.Text = valueTitle;
        LitValues.Text = "";
        int count=0;
        foreach (var row in rows)
        {
            LitValues.Text += "['"+row.title+"',"+row.value+"]";
            if (++count != rows.Count) LitValues.Text += ",";
            
        }
        LitChart.Text = "<div id='"+chartId+"'></div>";

    }

    public class PieValue
    {
        public string title { get; set; }
        public float value { get; set; }

        public PieValue()
        {

        }

        public PieValue(string title, float value)
        {
            this.title = title;
            this.value = value;
        }
    }

}



