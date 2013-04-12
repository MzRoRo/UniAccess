using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;

public partial class View_LinkedInGrantAccess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         string response =RequestPage( "https://www.linkedin.com/uas/oauth2/accessToken?grant_type=authorization_code&code="+Request.QueryString["code"]+"&redirect_uri=http://localhost:59088/UltimateProject/View/LinkedInGrantAccess.aspx&client_id=3dfblocx2n9q&client_secret=ayeNfKBU4iUMgEhQ");
         
        try
         {
            
             JObject b = JObject.Parse(response);
             try{
                 if (b["error"] == null) {
                     Response.Redirect(Request.MapPath("~/Default.aspx"));
                 }
             }catch {}

             foreach (var item in b)
             {
                 Session[item.Key] = item.Value;
             }
         }
         catch { }
    }

    private string RequestPage(string url)    
    {

        try {            
            url.Replace(' ', '+');           
            HttpWebRequest webRequest = (HttpWebRequest)HttpWebRequest.Create(url);           
            webRequest.UserAgent = @"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.5) Gecko/20091102 Firefox/3.5.5";
            HttpWebResponse response = (HttpWebResponse)webRequest.GetResponse();            
            //return response.GetResponseStream();            
            Stream stream = response.GetResponseStream();            
            StreamReader reader = new StreamReader(stream);            
            return reader.ReadToEnd();        
        }  
        catch        
        {           
            return @"{""success"":""error""}";     
        }   
    }
}