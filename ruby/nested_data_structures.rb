favorite_artists = {
	hip_hop: [
		"J.Cole",
		'Nas'
	],
	dance: [
		"Armin Van Buuren",
		"Andrew Rayel"
	],
	rock: [
		"Metallica",
		"Sevendust"
	],
	festivals_attended: {
		next_year: 5,
		this_year: 4,
		last_year: 3
	}
}

p favorite_artists[:rock][1]

p favorite_artists[:festivals_attended][:this_year]

favorite_artists[:dance].push("Above and Beyond")

p favorite_artists[:dance][2]