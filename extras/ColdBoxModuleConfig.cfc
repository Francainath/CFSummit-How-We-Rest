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
		// Layout Settings
		layoutSettings = {
			defaultLayout = ""
		};

		// datasources
		datasources = {};

		// web services
		webservices = {};

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

		// Custom Declared Points
		interceptorSettings = {
			customInterceptionPoints = ""
		};

		// Custom Declared Interceptors
		interceptors = [
			// security
		];

		// Binder Mappings
		// binder.map("Alias").to("#moduleMapping#.model.MyService");
	}


	//Executed whenever the various environment are detected
	function local(){}


	//Fired when the module is registered and activated.
	function onLoad(){}


	//Fired when the module is unregistered and unloaded
	function onUnload(){}


}