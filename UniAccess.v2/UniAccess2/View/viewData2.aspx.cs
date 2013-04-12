using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewData2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void drpDataSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index=drpDataSelect.SelectedIndex;

            switch (index)
            { 
                case 0: litData.Text = "<iframe width='100%' style='min-height:500px;' src='http://ckan.artuvic.com:5000/dataset/ff6119b7-daf5-4b73-b425-5bbea50668ed/resource/57aba0a9-d958-4a2e-85c2-47a2e2c9e6be/preview' frameborder='0' width='100%' data-module='data-viewer' style='height: 430px;'>";
                    break;
                case 1: litData.Text = "<iframe width='100%' style='min-height:500px;' src='http://ckan.artuvic.com:5000/dataset/ff6119b7-daf5-4b73-b425-5bbea50668ed/resource/17c3539a-42c4-4e77-b7e5-7718764a049e/preview' frameborder='0' width='100%' data-module='data-viewer' style='height: 430px;'>";
                    break;
                case 2: litData.Text = "<iframe width='100%' style='min-height:500px;' src='http://ckan.artuvic.com:5000/dataset/626098e5-f122-4db0-a3ca-f042667fae8b/resource/c4bd72c8-8981-430f-a441-0590230d8441/preview'>";
                    break;
                case 3: litData.Text = "<iframe width='100%' style='min-height:500px;' src='http://ckan.artuvic.com:5000/dataset/e85eeb24-961d-4fc2-8cee-07d4ead5387f/resource/680d7e97-038b-4f8a-a4fe-0cbebfc4759c/preview' frameborder='0' width='100%' data-module='data-viewer' style='height: 430px;'>";
                    break;
                case 4: litData.Text = "<iframe src='http://ckan.artuvic.com:5000/dataset/e85eeb24-961d-4fc2-8cee-07d4ead5387f/resource/ae504620-64a2-45c7-b797-14df27c93265/preview' frameborder='0' width='100%' data-module='data-viewer' style='height: 430px;'>";
                    break;
                default:
                    break;
            }

        }

        
    }
