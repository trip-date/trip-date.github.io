<?php

// apologies for the dirty and quick!
// we have NOT the time for this! asd

require __DIR__ . '/load.php';

$featured_pois =
	( POI::factory() )
		->whereInt( 'poi_featured', 1 )
		->queryResults();

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Trip date</title>
        <meta name="description"                           content="Trip date">
        <meta name="author"                                content="Giovanni Profeta, Valerio Boz, Iolanda Pensa, Marta Pucciarelli, vanessa De Luca, Irene Vanini">
        <meta name="viewport"                              content="width=device-width, initial-scale=1">
        <meta name="mobile-web-app-capable"                content="yes">
        <meta name="apple-mobile-web-app-capable"          content="yes">
        <meta name="theme-color"                           content="black"> <!-- Chrome, Firefox OS and Opera -->
        <meta name="msapplication-navbutton-color"         content="black"> <!-- Windows Phone -->
        <meta name="apple-mobile-web-app-status-bar-style" content="black"> <!-- iOS Safari -->
        <link rel="stylesheet" href="assets/style/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript" src="assets/script/function.js"></script>
    </head>
    <body>
        <header id="header">
            <h1><a href="">Trip date</a></h1>
            <div>
                <h2><a href="liked">Liked</a></h2>
                <h2><a href="profile">Ursula</a></h2>
            </div>
        </header>
        <main>
            <section>
                <div id="filters_box">
                    <div id="">
                        <label for="topic">Topic</label><br/>
                        <select name="filters" id="filters">
                            <option value="history">History</option>
                            <option value="legends">Legends</option>
                            <option value="landscapes">Landscapes</option>
                            <option value="fauna">Fauna</option>
                            <option value="flora">Flora</option>
                        </select>
                    </div>
                    <div id="">
                        <label for="activity">Activity</label><br/>
                        <select name="filters" id="filters">
                            <option value="strolling">Strolling around</option>
                            <option value="hiking">Hiking</option>
                            <option value="trekking">Trekking</option>
                            <option value="running">Running</option>
                            <option value="biking">Biking</option>
                        </select>
                    </div>
                    <div id="">
                        <label for="activity">Time needed</label><br/>
                        <select name="filters" id="filters">
                            <option value="half-a-day">Half a day</option>
                            <option value="one-day">One day</option>
                            <option value="weekend">A weekend</option>
                            <option value="week">A week</option>
                        </select>
                    </div>
                    <div id="">
                        <label for="distance">Distance</label><br/>
                        <select name="filters" id="filters">
                            <option value="10-30">From 10’ to 30’</option>
                            <option value="30-60">From 30’ to 1h</option>
                            <option value="60-180">From 1 h to 3 h</option>
                            <option value=">180">More than 3h</option>
                        </select>
                    </div>
                    <div id="">
                        <label for="sense">Sense activation</label><br/>
                        <select name="filters" id="filters">
                            <option value="sight">Sight</option>
                            <option value="smell">Smell</option>
                            <option value="hearing">Hearing</option>
                            <option value="touch">Touch</option>
                            <option value="taste">Taste</option>
                        </select>
                    </div>
                </div>
                <div id="itinerary">
                    <div class="container">
                        <h2>Itinerary name</h2>
                        <img src="assets/images/img.png">
                        <div>
                            <h3>Information</h3>
                            <div>meta 1</div>
                            <div>meta 2</div>
                            <div>meta 3</div>
                            <div>meta 4</div>
                            <div>meta 5</div>
                            <div>meta 6</div>
                            <div>meta 7</div>
                            <div>meta 8</div>
                        </div>
                    </div>
                    <div id="buttons">
                        <div id="like" class="container"><h3>Like</h3></div>
                        <div id="dislike" class="container"><h3>Dislike</h3></div>
                    </div>
                </div>
            </section>
            <aside>
                <div id="new">
                    <h2>New itineraries</h2>
                    <ul>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                        <li>itinerary name</li>
                    </ul>
                </div>
                <div id="reccommended">
                    <h2>Reccommended</h2>
                    <ul>
			<?php foreach( $featured_pois as $featured_poi ): ?>
				<li>
					<?= HTML::a(
						$featured_poi->getWikidataURL(),
						$featured_poi->get( 'poi_name' )
					) ?>
				</li>
			<?php endforeach ?>
                    </ul>
                </div>
            </aside>
        </main>
        <footer>
            Trip Date
        </footer>
    </body>
</html>

