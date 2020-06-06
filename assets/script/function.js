( function() {

	var selector = 'map';

	var map = L.map( selector ).setView([51.505, -0.09], 13);

	L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo( map );

	// hide the map at startup
	var $map = $( '#' + selector );
	$map.hide();

	var $poiName = $( '.poi-name' );

	// markers indexed by Wikidata ID
	var markers = {};

	var $actionShowPOIs = $( '.action-show-poi' );

	$actionShowPOIs.each( function() {
		var $el   = $(this);
		var lat   = $el.data( 'lat'   );
		var lng   = $el.data( 'lng'   );
		var wdata = $el.data( 'wdata' );
		var title = $el.text();

		var m = L.marker( [ lat, lng ] ).addTo( map );

		m.bindPopup( title );

		markers[ wdata ] = m;
	} );

	$actionShowPOIs.click( function( e ) {

		$map.show();
		map.invalidateSize();

		var $el   = $(this);
		var lat   = $el.data( 'lat' );
		var lng   = $el.data( 'lng' );
		var wdata = $el.data( 'wdata' );
		var title = $el.text();

		console.log( title );

		$poiName.text( title );

		// asd
		map.setView( [ lat, lng ], 20 );

		markers[ wdata ].openPopup();

		// do not really click on the link
		e.preventDefault();
	} );

} )();
