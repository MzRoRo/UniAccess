<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="UniAccess2.View.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
    <title></title>
</head>
<body>
      

<form id="add-event">
   <input type="text" name="name" placeholder="Name" />
   <input type="date" class=".date1" name="date" placeholder="01-01-2001" />
   <input type="hidden" name="lat" />
   <input type="hidden" name="lng" />
   <input type="text" name="location" placeholder="Venue" />
   <br />
   <input type="button" value="Update" id="addevent" />
</form>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript">
    $(".date1").datepicker();
    $("#addevent").click(function () {
        var obj = {};
        $("#add-event input[name]").each(function (m) {
            obj[$(this).name] = $(this).val();
        });
        var xhtp = (window.XMLHttpRequest) ? new XMLHttpRequest() : new Microsoft.AcriveXObject('Microsoft.XMLHttp');
        xhtp.open("POST", "Action/AddEvent.aspx", false);
        xhtp.send(obj.toString());
    });


</script>
    
</body>
</html>
