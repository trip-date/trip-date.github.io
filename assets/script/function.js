( function() {
	var map = L.map('map').setView([51.505, -0.09], 13);

	L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo( map );

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
		var $el   = $(this);
		var lat   = $el.data( 'lat' );
		var lng   = $el.data( 'lng' );
		var wdata = $el.data( 'wdata' );

		// asd
		map.setView( [ lat, lng ], 20 );

		markers[ wdata ].openPopup();

		// do not really click on the link
		e.preventDefault();
	} );

} )();
