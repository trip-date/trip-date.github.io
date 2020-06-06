<?php

require __DIR__ . '/../../load.php';

$pois =
	( new Query() )
		->from( 'poi' )
		->whereInt( 'poi_featured', 1 )
		->defaultClass( 'POI' )
		->queryResults();

$pois_ready = [];

foreach( $pois as $poi ) {
	$pois_ready[] = $poi->getPOIData();
}

json( [ 'pois' => $pois_ready ] );
