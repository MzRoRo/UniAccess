using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Components_GoogleAnnotatedTimeline : System.Web.UI.UserControl
{
    public string elemId { get; set; }
    public List<DataHeader> headers { get; set; }
    public List<DRow> rows { get; set; }
    

    public Components_GoogleAnnotatedTimeline()
    {
        headers = new List<DataHeader>();
        rows = new List<DRow>();
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        drawVisualization();
        
    }

    

    private void drawVisualization()
    {

        LitOpenScriptTag.Text = "<script type='text/javascript'>" + (string.IsNullOrWhiteSpace(elemId)?"try{":"");

        LitColumns.Text = "";
        foreach (var item in headers)
        {
            LitColumns.Text += "data"+elemId+".addColumn('number','"+item.ValueAreaTitle+"');";
            LitColumns.Text += "data" + elemId + ".addColumn('number','" + item.pointTitle + "');";
            LitColumns.Text += "data" + elemId + ".addColumn('number','" + item.pointText + "');";
        }
        Litrows.Text = "";
        int b=0;
        foreach (var row in rows)
        {
            Litrows.Text += "[new Date(" + row.date.Year + "," + row.date.Day + ", " + row.date.Year+ "),";
            foreach (var item in row.getValues())
            {
                Litrows.Text += item.value + "," + (string.IsNullOrWhiteSpace(item.pointTitle) ? "null" : "'" + item.pointTitle + "'") + "," + (string.IsNullOrWhiteSpace(item.pointText) ? "null" : "'" + item.pointText + "'")+ (row.getValues().IndexOf(item)+1!=row.getValues().Count?",":"");    
            }
            
            Litrows.Text += "]" + (rows.IndexOf(row)+1 != rows.Count ? "," : "");
        }
        LitCloseScriptTag.Text = (string.IsNullOrWhiteSpace(elemId)?"}catch(e){}":"") + "</script>";
    }

    public class DataHeader
    {
        public string ValueAreaTitle { get; set; }
        public string pointTitle { get; set; }
        public string pointText { get; set; }

        public DataHeader()
        {
            ValueAreaTitle = pointText = pointTitle = null;
        }
    }

    public class DataRow
    {
        public float value { get; set; }
        public string pointTitle  { get; set; }
        public string pointText { get; set; }

        public DataRow()
        {
            value = 0.0f;
            pointText = pointTitle = null;
        }
    }

    public class DRow //must limit the amount ro val
    {
        public DateTime date { get; set; }
        private List<DataRow> values { get; set; }
        private int headerAmt;

        public DRow(int amt)
        {
            values = new List<DataRow>();
            headerAmt = amt;
        }

        public void addRow(DataRow r){
            if(values.Count != headerAmt)
                values.Add(r);

        }

        public List<DataRow> getValues() { return values; }
    }
}