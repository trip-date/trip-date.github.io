<?php

trait POITrait {

	function getImageURL() {
		return sprintf(
			'http://commons.wikimedia.org/wiki/Special:FilePath/%s',
			$this->get( 'poi_image' )
		);
	}

	function getWikidataURL() {
		return sprintf(
			'https://www.wikidata.org/wiki/%s',
			$this->get( 'wikidata_ID' )
		);
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

}

class POI extends Queried {

	use POITrait;

	const T = 'poi';

}
