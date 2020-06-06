<?php

require __DIR__ . '/../../load.php';

$pois =
	( POI::factory() )
		->whereInt( 'poi_featured', 1 )
		->queryResults();

$pois_ready = [];

foreach( $pois as $poi ) {
	$pois_ready[] = $poi->getPOIData();
}

json( [ 'pois' => $pois_ready ] );
