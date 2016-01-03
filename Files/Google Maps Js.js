(function ($) {


jQuery(window).load(function() {  
  if (document.getElementById('map_canvas')) {
    
    // loading the theme settings for the google maps
    var gZoom = 8
	
	//MUL Gouda
	var gLatitude = "52.022716"
    var gLongitude = "4.677491"
    var gTitle = "Mul BV"
    var gDescription = "Mul BV, Gouda"
	
	var latlng = new google.maps.LatLng(gLatitude, gLongitude);
	
	//MUL Emmen
    var pLatitude = "52.73494"
    var pLongitude = "6.91049"
    var pTitle = "Mul BV"
    var pDescription = "Mul BV, Emmen"
	
	var pietLatLng = new google.maps.LatLng(pLatitude, pLongitude);
	
	//center map
	var clatlng = new google.maps.LatLng(52.42,5.07)
	
	//Instellingen Maps  
	  var settings = {
	    zoom: parseInt(gZoom),
	    center: clatlng,
	    scrollwheel: false,
	    mapTypeControl: true,
	    mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
	    navigationControl: true,
	    navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
	    mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    
    var map = new google.maps.Map(document.getElementById("map_canvas"), settings);
    
	//Mul Logo icoon
    var companyLogo = new google.maps.MarkerImage('/sites/all/themes/mulbv/img/google-maps/map-marker.png',
    	new google.maps.Size(40,37),
    	new google.maps.Point(0,0),
    	new google.maps.Point(20,37)
	);
    
	//marker MUL Gouda    
    var companyMarker = new google.maps.Marker({
      position: latlng,
           map: map,
          icon: companyLogo,
         title: gTitle
    });
	
	//Marker MUL Emmen
    var pietMarker = new google.maps.Marker({
      position: pietLatLng,
           map: map,
          icon: companyLogo,
         title: pTitle
    });
	
	
    //Inhoud Marker MUL Gouda
    var contentString = '<div id="content-map">'+
        '<h5 style="margin-top: 0px;">MUL BV Gouda</h5>'+
        '<p>Ameef 20<br />7828 BM n<br />Tel: (0182) 0<br />Email: l</p>'+
        '</div>';
		
		
	//info mul gouda  
    var infowindow = new google.maps.InfoWindow({
        content: contentString
    });
    
    google.maps.event.addListener(companyMarker, 'click', function() {
      infowindow.open(map,companyMarker);
    });
  
 	//Inhoud Marker Emmen
     var PcontentString = '<div id="Pcontent-map">'+
        '<h5 style="margin-top: 0px;">MUL BV Emmen</h5>'+
        '<p>Amethistdreef 20<br />7828 BM Emmen<br />Tel: (0182) 53 88 20<br />Email: P.degraaf@mulbv.nl</p>'+
        '</div>';
  
	//info MUL Emmen  
    var PinfoWindow = new google.maps.InfoWindow({
        content: PcontentString
    });
    
    google.maps.event.addListener(pietMarker, 'click', function() {
      PinfoWindow.open(map,pietMarker);
    });;


//end if  
  }

});

})(jQuery);
