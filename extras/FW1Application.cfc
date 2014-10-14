component extends="framework.one" {

	this.name = "superfootball";

	variables.framework = {
		unhandledExtensions = "cfc,map,css,js,html",
		unhandledPaths = "/fonts",
		generateSES = 'true',
		routes = [
			{ "$GET/kicker/:kickerID" = "/kicker/getKicker/:kickerID" },
			{ "$GET/kickers" = "/kicker/getKickers" },
			{ "$POST/kicker" = "/kicker/postKicker/" },
			{ "$PUT/kicker/:kickerID" = "/kicker/updateKicker/;kickerID" },
			{ "$DELETE/kicker/:kickerID" = "/kicker/deleteKicker/:kickerID" }
		]
	};


	function setupApplication() {}


	function setupRequest() {}


}