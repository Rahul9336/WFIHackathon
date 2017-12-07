$(function () {
    $( '#table' ).searchable({
        striped: true,
        oddRow: { 'background-color': '#f5f5f5' },
        evenRow: { 'background-color': '#fff' },
        searchType: 'fuzzy'
    });
    
    $( '#searchable-container' ).searchable({
        searchField: '#container-search',
        selector: '#sd',
        childSelector: '.col-xs-4',
        show: function( elem ) {
            elem.slideDown(100);
        },
        hide: function( elem ) {
            elem.slideUp( 100 );
        }
    })
});

function initMap() {

	  // Create the map.
	  const map = new google.maps.Map(document.getElementsByClassName('map')[0], {
	    zoom: 7,
	    center: {lat: 52.632469, lng: -1.689423}  });

	  // Load the stores GeoJSON onto the map.
	  map.data.loadGeoJson('stores.json');

	  const infoWindow = new google.maps.InfoWindow();

	  // Show the information for a store when its marker is clicked.
	  map.data.addListener('click', event => {

	    let name = event.feature.getProperty('name');
	    let description = event.feature.getProperty('description');
	    let hours = event.feature.getProperty('hours');
	    let phone = event.feature.getProperty('phone');
	    let position = event.feature.getGeometry().get();
	    let content = `
	      <h2>${name}</h2><p>${description}</p>
	      <p><b>Open:</b> ${hours}<br/><b>Phone:</b> ${phone}</p>
	    `
	    infoWindow.setContent(content);
	    infoWindow.setPosition(position);
	    infoWindow.setOptions({pixelOffset: new google.maps.Size(0, -30)});
	    infoWindow.open(map);
	  });
	}
	  function initialize() {
	        var loc = {};
	        var geocoder = new google.maps.Geocoder();
	        if(google.loader.ClientLocation) {
	            loc.lat = google.loader.ClientLocation.latitude;
	            loc.lng = google.loader.ClientLocation.longitude;

	            var latlng = new google.maps.LatLng(loc.lat, loc.lng);
	            geocoder.geocode({'latLng': latlng}, function(results, status) {
	                if(status == google.maps.GeocoderStatus.OK) {
	                    alert(results[0]['formatted_address']);
	                };
	            });
	        }
	    }

	    google.load("maps", "3.x", {other_params: "sensor=false", callback:initialize});