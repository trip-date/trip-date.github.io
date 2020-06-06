<?php
class POI extends Queried {

	function getImageURL() {
		return 'http://commons.wikimedia.org/wiki/Special:FilePath/' . $this->get( 'poi_image' );
	}

	function getPOIData() {
		$data = [];

		$data['id'] = (int) $this->get( 'poi_ID' );

		$data['title'] = $this->get( 'poi_name' );

		if( $this->has( 'poi_image' ) ) {
			$data['image'] = [
				'title' => $this->get( 'poi_image' ),
				'url'   => $this->getImageURL(),
			];
		}

		return $data;
	}

	function __construct() {

	}
}
