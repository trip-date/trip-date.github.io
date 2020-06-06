<?php

// autoload classes
spl_autoload_register( function( $name ) {

	$name = str_replace( 'Trait', '', $name );

	$path = ABSPATH . "/include/$name.php";
	if( is_file( $path ) ) {
		require $path;
	}
} );
