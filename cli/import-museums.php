#!/usr/bin/php
<?php

// no command line no party
if( empty( $argv ) ) {
	exit( 1 );
}

// load all the stuff
require __DIR__ . '/../load.php';

// no file no party
$file = $argv[1] ?? null;
if( !$file ) {
	die( "please specify a filename\n" );
}

// query Wikidata and decode the response
$rows = \wm\Wikidata::querySPARQL( file_get_contents( $file ) . '#' . rand() );

query( 'START TRANSACTION' );

// for each cat
foreach( $rows as $row ) {

	// example: 'http://www.wikidata.org/entity/Q5317221'
	$url = $row->item->value;

	// extract the Commons Filename
	$image = $row->image->value ?? null;
	if( $image ) {
		$image = str_replace( 'http://commons.wikimedia.org/wiki/Special:FilePath/', '', $image );
	}

	// example: 'Q5317221'
	$id = basename( $url );

	// example: 'Point(9.02108 45.99935)'
	$coordinates = $row->coordinates->value ?? null;
	$lat = null;
	$lng = null;

	// try to extract these damn coordinates
	if( $coordinates ) {
		$coordinates = str_replace( 'Point(', '', $coordinates );
		$coordinates = rtrim( $coordinates, ')' );
		list( $lat, $lng ) = explode( ' ', $coordinates );
		$lat = (float) $lat;
		$lng = (float) $lng;
	}

	// example: 'Dusty the Klepto Kitty'
	$itemLabel = $row->itemLabel->value;

	// check if the POI exists
	$poi = ( new Query() )
		->from( 'poi' )
		->whereStr( 'wikidata_ID', $id )
		->queryRow();

	// data to be saved
	$data = [
		'poi_name'    => $itemLabel,
		'poi_image'   => $image,
		'poi_lat'     => $lat,
		'poi_lng'     => $lng,
	];

	// update
	if( $poi ) {

		// update
		( new Query() )
			->from( 'poi' )
			->whereStr( 'wikidata_ID', $id )
			->update( $data );

	} else {
		// create
		$data['wikidata_ID'] = $id;

		insert_row( 'poi', $data );
	}

	echo "Found $id. Name: $itemLabel \n";
}

query( 'COMMIT' );
