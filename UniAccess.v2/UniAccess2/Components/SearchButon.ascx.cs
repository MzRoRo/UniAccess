using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Components_SearchButon : System.Web.UI.UserControl
{
    public string sizeClass { get; set; }
    public string classes { get; set; }
    public string btnText { get; set; }
    public string searchText { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (sizeClass == null)
            sizeClass = "input-medium";
        if (btnText == null)
            btnText = "Search";
        if (searchText == null)
            searchText = "Search...";


        btnSubmitSearch.Text = btnText;
        txtSearchText.Text = searchText;

        txtSearchText.ID = txtSearchText.ID + this.ID;
        btnSubmitSearch.ID = btnSubmitSearch.ID + this.ID;
        
        btnSubmitSearch.CssClass = btnSubmitSearch.CssClass + " " + classes + " " + sizeClass ;
    }
}