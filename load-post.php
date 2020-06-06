<?php

// autoload classes
spl_autoload_register( function( $name ) {
	$path = ABSPATH . "/include/$name.php";
	if( is_file( $path ) ) {
		require $path;
	}
} );
