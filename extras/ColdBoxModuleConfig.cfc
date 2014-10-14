component output="false" hint="superfootball Module Configuration" {

	// Module Properties
	this.title 				= "API";
	this.author 			= "@Francainath";
	this.description 		= "ColdBox API for superfootball";
	this.version			= "1.0";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= true;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	// Module Entry Point
	this.entryPoint			= "API";

	function configure() {

		// SES Routes
		routes = [
			//Module Entry Point
			{ pattern="/v1/team/listTeams",handler="v1.team",action="listTeams" },
			{ pattern="/v1/team/get",handler="v1.team",action="getTeam" },
			{ pattern="/v1/team/save",handler="v1.team",action="saveTeam" },
			{ pattern="/v1/team/delete",handler="v1.team",action="deleteTeam" },
			//Convention Route
			{pattern="/:handler/:action?"}
		];

	}



}
