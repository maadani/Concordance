/*
  Copyright mydbr.com http://www.mydbr.com
  You are free to modify this file
*/


/*
  Initializing the new map
*/

function GM_initMap( id, x, y, zoom, type ) {
  var map_type, latlng = new google.maps.LatLng(x, y);
  switch (type) {
    case 'satellite':
      map_type = google.maps.MapTypeId.SATELLITE;
      break;
    case 'terrain':
      map_type = google.maps.MapTypeId.TERRAIN;
      break;
    case 'hybrid':
      map_type = google.maps.MapTypeId.HYBRID;
      break;
    default:
      map_type = google.maps.MapTypeId.ROADMAP;
      break;
  }
  
  var options = {
    zoom: zoom,
    center: latlng,
    mapTypeControl: true,
      mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
      navigationControl: true,
      mapTypeId: map_type
  };
  
  var map = new google.maps.Map(document.getElementById('map'+id), options);
  
  return map;
}



/*
  Place a new marker to map. 
  noXY and noZoom will determine if the center and the zoom is done automatically or if the user set them
  
  iconFile, shadowFile can contain preinstalled icons (see markers and pushpins) or any image file reference with size added to end (http://mypics.com/image.png:32:32)
*/
function GM_newMarker( points_arr, map, lat, lon, desc, noXY, noZoom, iconFile, shadowFile ){
  var marker, newicon, markerInd, pushpinInd, shadowAnchor = null, shadow = null, shadowSize, iconSize;
  var markerbase = 'http://maps.google.com/mapfiles/ms/micons/';
  var markerOptions, image;
  
  // Inlcuded markers & pushpins
  var markers = [ 'blue', 'green', 'orange', 'pink', 'purple', 'red', 'yellow', 'blue-dot', 'green-dot', 'orange-dot', 'pink-dot', 'purple-dot', 'red-dot', 'yellow-dot' ];
  var pushpins = [ 'blue-pushpin', 'grn-pushpin', 'pink-pushpin', 'purple-pushpin', 'red-pushpin', 'yellow-pushpin' ];
  
  var point = new google.maps.LatLng(lat,lon);
  
  
  points_arr.push(point);
  if (iconFile!=='') {
    if ( (markerInd = jQuery.inArray(iconFile, markers))>=0 ||
       (pushpinInd = jQuery.inArray(pushpins, markers))>=0) {
      
      iconFile = markerbase+iconFile+".png";
      iconSize = google.maps.Size(32, 32);
      if (markerInd>=0) {
        shadowFile = markerbase+'msmarker.shadow.png';
        shadowSize = google.maps.Size(37, 34);
        shadowAnchor = new google.maps.Point(16, 32);
      } else {
        shadowSize = google.maps.Size(59, 32);
        shadowFile = markerbase+'pushpin_shadow.png';
      }
    } else {
      var iconInfo = iconFile.split('::');
      if (iconInfo.length==3 && iconInfo[0]!=='') {
        iconFile = iconInfo[0];
        iconSize = google.maps.Size( parseInt(iconInfo[1], 10), parseInt(iconInfo[2], 10));
      }
      iconInfo = shadowFile.split('::');
      if (iconInfo.length==3 && iconInfo[0]!=='') {
        shadowFile = iconInfo[0];
        shadowSize = google.maps.Size( parseInt(iconInfo[1], 10), parseInt(iconInfo[2], 10));
      } 
    }
    image = new google.maps.MarkerImage(iconFile, iconSize );
    if (shadowFile) {
      shadow = new google.maps.MarkerImage(shadowFile, shadowSize, null, shadowAnchor);
    }
  }
  marker= new google.maps.Marker({
    position: point,
    map: map,
    icon: image,
    shadow: shadow
  });

  var infowindow = new google.maps.InfoWindow();
  google.maps.event.addListener(marker, 'click', function() {
      infowindow.setContent(desc);
      infowindow.open(map,marker);
        });
}

function GM_setBounds( map, points, noXY, noZoom, zoom )
{
  var i;
  
  if (noXY || noZoom ) {
    var bounds = new google.maps.LatLngBounds();

    for (i=0; i < points.length; i++) {
        var ll = new google.maps.LatLng(points[i].lat(), points[i].lng());
        bounds.extend(ll);
    }
    
    if (points.length==1 && map.getZoom()===0) {
      if (noXY) {
        map.setCenter(bounds.getCenter());
      }
      if (noZoom) {
        map.setZoom(7);
      }
    } else {
      map.fitBounds(bounds);
    }
  }
}

function GM_fix_zoom(map, zoom) 
{
  var listener = google.maps.event.addListener(map, "idle", function() {
    if (map.getZoom() !== zoom) map.setZoom(zoom);
      google.maps.event.removeListener(listener);
  });
}