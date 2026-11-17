<?php

define_default('REPOSITORY_URL', 'https://github.com/trip-date/trip-date.github.io');

// autoload classes
spl_autoload_register( function( $name ) {

	$name = str_replace( 'Trait', '', $name );

	$path = ABSPATH . "/include/$name.php";
	if( is_file( $path ) ) {
		require $path;
	}
} );
