( function() {
	var map = L.map('map').setView([51.505, -0.09], 13);

	L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo( map );

	$( '.action-show-poi' ).click( function( e ) {
		$el = $(this);
		var lat = $el.data( 'lat' );
		var lng = $el.data( 'lng' );

		map.setView( [ lat, lng ], 20 );

		// do not really click on the link
		e.preventDefault();
	} );

} )();
