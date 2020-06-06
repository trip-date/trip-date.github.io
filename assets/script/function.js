( function() {

	var selector = 'map';

	var map = L.map( selector ).setView([51.505, -0.09], 13);

	L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
	}).addTo( map );

	// hide the map at startup
	var $map = $( '#' + selector );
	$map.hide();

	var $title   = $( '.title' );
	var $poiName = $( '.poi-name' );

	// markers indexed by Wikidata ID
	var markers = {};

	var $actionShowPOIs = $( '.action-show-poi' );

	var fields = [
		'length',
		'minutes',
		'location',
		'height',
	];
	for( var i in fields ) {
		var field = fields[ i ];
		$( '.trip-' + field + '-container' ).hide();
	}

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

		var $el     = $(this);
		var lat     = $el.data( 'lat'   );
		var lng     = $el.data( 'lng'   );
		var wdata   = $el.data( 'wdata' );
		var poiname = $el.data( 'title' );
		var tripLength = $el.data( 'length' );
		var title = $el.text();

		for( var i in fields ) {
			var field = fields[ i ];
			var value = $el.data( field );
			if( value ) {
				$( '.trip-' + field + '-container' ).show();
				$( '.trip-' + field ).text( value );
			} else {
				$( '.trip-' + field + '-container' ).hide();
			}
		}

		$title.text( title );
		$poiName.text( poiname );

		console.log( tripLength );

		// asd
		map.setView( [ lat, lng ], 20 );

		markers[ wdata ].openPopup();

		// do not really click on the link
		e.preventDefault();
	} );

} )();

function likes(){
	$("#like").click(function() {
		$("#itinerary").css("background-color","#96d5d9")
		setTimeout(function(){
			$("#itinerary").css("background-color","white")
		},500);
	})

	$("#dislike").click(function() {
		$("#itinerary").css("background-color","#f1c7da")
		setTimeout(function(){
			$("#itinerary").css("background-color","white")
		},500);
	})
}

$( document ).ready(function() {
	likes();
})
