<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Directions.aspx.cs" Inherits="UniAccess2.View.Directions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="../js/jquery.js"></script>
    
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false"></script>
    <script type="text/javascript" src="../js/main.js"></script>
</head>
<body>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                            <form style="float:left;font-size:1.4em;font-weight:bold;border-bottom-left-radius:4px;border-bottom-right-radius:4px;background:#e7e7e7!important;">
                                 Farms
                                 <input type="checkbox" id="chkfarms" />

                                 Taxi
                                 <input type="checkbox" id="chktaxi" />

                                 Hotels
                                 <input type="checkbox" id="chkhotels" />

                                 <input type="button" value="Refresh Map" id="refreshMap" />
                             </form>
    <form id="getDirections" runat="server">
   <label for="destination">Where would like to go</label> 
   <select name="destination">
       <option value="select-option">Choose from map</option>
	   <option value="taxi">Taxi Stand</option>
	   <option value="hotel">Hotel</option>
	   <option value="farm">Farm</option>
	   <option value="fishing">Fishing Area</option>
	   <option value="school">School</option>
	   <option value="business">Business Place</option>
	   <option value="bookstore">Book Store</option>
	   <option value="pharmacy">Pharmacy</option>
   </select>
</form>

<script type="text/javascript">
    $("#getDirections select[name=destination]").on('change', function () {
        //hideNotify();
        var place = $("#getDirections select[name=destination]").val();
        if (place == 'select-option') return;


        switch (place) {
            case "taxi":
                break;
            case "hotel": plotHotelPoints();
                break;
            case "farm":
                break;
            case "school": case "business": case "bookstore": case "pharmacy":

                    var xhtp = (window.XMLHttpRequest) ? new XMLHttpRequest() : new Microsoft.AcriveXObject('Microsoft.XMLHttp');
                    xhtp.open("GET", "Action/Directions.aspx", false);
                    xhtp.send();
                    try {
                        xhtp.response = JSON.parse(xhtp.response);
                    } catch (e) { return; }
                    if (!xhtp.response.success)
                        return;
                    else {
                    
                    }
                break;
        }

      


        //  google.maps.addListener(new google.maps.Map($("googleMap"),{}),'cli');
    });
</script>
</body>
</html>
