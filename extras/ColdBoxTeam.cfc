component extends="modules.API.handlers.v1.APIBaseHandler" singleton {

	//specify the http verbs allowed to access each event
	this.allowedMethods = {
		listTeams = "GET,OPTIONS",
		getTeam = "GET,OPTIONS",
		saveTeam = "POST,OPTIONS",
		deleteTeam = "DELETE,OPTIONS"
	};


	//index()
	function index(event,rc,prc) {
		setNextEvent('api.team.list');
	}


	//list()
	function listTeams(event,rc,prc) {
		param name="rc.conference" default="";
		param name="rc.division" default="";

		var teams = //return a list of teams that match conference and division (both optional)

		event.renderData(type="json",data=teams);
	}


	//get()
	function getTeam(event,rc,prc) {
		param name="rc.teamID" default=0;

		var team = //obtain a team w/the associated teamID

		event.renderData(type="json",data=team);
	}


	//save()
	function saveTeam(event,rc,prc) {
		param name="rc.teamID" default=0;
		param name="rc.teamName" default="";
		param name="rc.conference" default="";
		param name="rc.division" default="";

		//save team with this name, divisino, and conference, new if teamID = 0

		//on success
		var data = {
			status="SUCCESS",
			message="Team saved."
		};

		event.renderData(type="json", data=data);
	}


	//delete()
	function deleteTeam(event,rc,prc) {
		param name="rc.teamID" default=0;

		//delete the team w/the associated teamID

		//on success
		var data = {
			status="SUCCESS",
			message="Team deleted."
		};

		event.renderData(type="json", data=data);
	}


}