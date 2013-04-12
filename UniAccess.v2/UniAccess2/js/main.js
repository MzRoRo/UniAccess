$(document).ready(function () {
    $("#myWindow, #closeWindow").hide();
    
    $("#closeWindow").click(hideNotify);

    $("#diverse").on('load', function () {
        $(this).css("background-image", "none");
    });

    $("#chkfarms").click(plotFarms);
    $("#chktaxi").click(plotTaxisOperators);
    $("#chkhotels").click(plotHotelPoints);
    $("#refreshMap").click(refreshMap);
    
});
function notify(msg, iframe) {
    
    $("#diverse").css("background-image","images/loading.gif");
    if (!iframe) $("#myWindow").html(msg);
    else $("#myWindow").html("<iframe id='diverse' src='"+msg+"' width='100%' height='100%' ></iframe>");
    $("#myWindow , #closeWindow").show("slow");
}

function hideNotify() {
    $("#myWindow, #closeWindow").hide("slow");
    $("#myWindow").html("");
}


//query api for taxi points and plot them on the map
function plotHotelPoints(props) {
    var map = new google.maps.Map(document.getElementById("mymap"), {
        center: new google.maps.LatLng(18.0159, -77.00001),
        zoom: 8,
        mapTypeId: google.maps.MapTypeId.HYBRID
    });


    //var data = JSON.parse(xmlhttp.response);
    var data = {
        resource_id: 'ae504620-64a2-45c7-b797-14df27c93265', // the resource id
        //limit: 5, // get 5 results
        //q: 'jones' // query for 'jones'
    };
    $.ajax({
        url: 'http://ckan.artuvic.com/api/action/datastore_search',
        data: data,
        dataType: 'jsonp',
        success: function (data) {

            for (taxi in data.result.records) {
                var t = data.result.records[taxi]
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(t.Latitude, t.Longitude),
                    title: t.HOTEL_NAME,
                    icon: 'images/hotel.png'
                });

                var infowindow = new google.maps.InfoWindow({
                    content: "<p>" + t.HOTEL_NAME + "</p>" + "<p>" + t.COMMUNITY + "</p>" + "<p>" + t.ADDRESS + "</p>"
                });

                google.maps.event.addListener(marker, 'click', function (event) {
                    infowindow.open(map, marker);
                });
                marker.setMap(map);
            }

        }
    });

}


function plotTaxisOperators(props) {
    var map = new google.maps.Map(document.getElementById("mymap"), {
        center: new google.maps.LatLng(18.0159, -77.00001),
        zoom: 8,
        mapTypeId: google.maps.MapTypeId.HYBRID
    });


    //var data = JSON.parse(xmlhttp.response);
    var data = {
        resource_id: 'ae504620-64a2-45c7-b797-14df27c93265', // the resource id
        //limit: 5, // get 5 results
        //q: 'jones' // query for 'jones'
    };
    $.ajax({
        url: 'http://ckan.artuvic.com/api/action/datastore_search',
        data: data,
        dataType: 'jsonp',
        success: function (data) {

            for (taxi in data.result.records) {
                var t = data.result.records[taxi]
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(t.Latitude, t.Longitude),
                    title: t.Name,
                    icon: 'images/taxi.png'
                });

                var infowindow = new google.maps.InfoWindow({
                    content: "<p>" + t["Owner Name"] + "</p>" + "<p>" + t.Name + "</p>" + "<p>" + t["Managed By"] + "</p>" + t["Contact No"] + "</p>"
                });

                google.maps.event.addListener(marker, 'click', function (event) {
                    infowindow.open(map, marker);
                });
                marker.setMap(map);
            }

        }
    });

}


function refreshMap()
{
    var mapProp = {
        center: new google.maps.LatLng(18.20848, -77.35199),
        zoom: 10,
        disableDoubleClickZoom: true,
        /* mapTypeControl: false,
         navigationControl: false,
         scaleControl: false,
         draggable: false,
         streetViewControl: false,*/

        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("mymap")
      , mapProp);
}

function plotFarms(props) {
    var map = new google.maps.Map(document.getElementById("mymap"), {
        center: new google.maps.LatLng(18.0159, -77.00001),
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.HYBRID
    });


    //var data = JSON.parse(xmlhttp.response);
    var data = {
        resource_id: '57aba0a9-d958-4a2e-85c2-47a2e2c9e6be', // the resource id
        //limit: 5, // get 5 results
        //q: 'jones' // query for 'jones'
    };
    $.ajax({
        url: 'http://ckan.artuvic.com/api/action/datastore_search',
        data: data,
        dataType: 'jsonp',
        success: function (data) {

            for (taxi in data.result.records) {
                var t = data.result.records[taxi]
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(t["18.402293170"], t["-77.32685521"]),
                    title: t.EUNIS + ' ' + t.DUNCAN,
                    icon: 'images/farm.png'
                });

                var infowindow = new google.maps.InfoWindow({
                    content: "<p>" + t.EUNIS + ' ' + t.DUNCAN + "</p>" + "<p>" + t["CAVE VALLEY"] + "</p>" + "<p>" + t["ST.ANN"] + "</p>"
                });

                google.maps.event.addListener(marker, 'click', function (event) {
                    infowindow.open(map, marker);
                });
                marker.setMap(map);

            }

        }
    });

}


function plotTours(props) {
    var map = new google.maps.Map(document.getElementById("mymap"), {
        center: new google.maps.LatLng(18.0159, -77.00001),
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.HYBRID
    });


    //var data = JSON.parse(xmlhttp.response);
    var data = {
        resource_id: '9283c195-9d79-4816-98c6-756e9074c1bd', // the resource id
        //limit: 5, // get 5 results
        //q: 'jones' // query for 'jones'
    };
    $.ajax({
        url: 'http://ckan.artuvic.com/api/action/datastore_search',
        data: data,
        dataType: 'jsonp',
        success: function (data) {
            var user1Location = "";
            for (tour in data.result.records) {
                var t = data.result.records[tour];

                user1Location = t["City/Town"] + " " + t.Parish + " Jamaica";
                var geocoder = new google.maps.Geocoder();
                var lat = 0; var long = 0;
                //convert location into longitude and latitude
                geocoder.geocode({
                    address: user1Location
                }, function (locResult) {
                    console.log(locResult);
                    try {
                        alert(user1Location + " -- " + locResult);
                        lat = locResult[0].geometry.location.lat();
                        long = locResult[0].geometry.location.lng();
                        alert(lat + " -- " + long);
                    } catch (e) {
                        alert(e);
                    }
                });
                alert("im out " + lat + "--" + long);
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(lat, long),
                    title: t.Name
                });

                var infowindow = new google.maps.InfoWindow({
                    content: "<p>" + t.Name + ' ' + t["Managed By"] + "</p>" + "<p>" + t["Contact No"]
                });

                google.maps.event.addListener(marker, 'click', function (event) {
                    infowindow.open(map, marker);
                });
                marker.setMap(map);

            }

        }
    });

}
