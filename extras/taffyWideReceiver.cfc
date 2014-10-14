component extends="taffy.core.resource" taffy_uri="/widereceiver/{widereceiverID}" {


	//get()
	public function get(required numeric widereceiverID) {
		//hitting superfootball.local/widereceiver/{widreceiverID} w/the GET http method will:
		//return the widereceiver w/this widereceiverID from the DB
		return representationOF(widereceiver).withStatus(200);
	}


	//post()
	public function post(required numeric widereceiverID, required string age, required numeric age, required numeric teamID) {
		//hitting superfootball.local/widereceiver/{widereceiverID} (widereceiverID has to be 0) w/the POST http method and correct Form data will:
		//save a newWidereceiver w/this name, age, and teamID to the DB
		return noData().withStatus(201, "Wide receiver created.");
	}


	//put()
	public function put(required numeric widereceiverID, optional string age, optional numeric age, optional numeric teamID) {
		//hitting superfootball.local/rest/widereceiver/{widereceiverID} (widereceiverID has to not be 0) w/the PUT http method and correct Form data will:
		//update the widereceiver (associated w/this widereceiverID) with the values from these form values
		return noData().withStatus(201, "Wide receiver updated.");
	}


	//delete()
	public function delete(required numeric widereceiverID) {
		//hitting superfootball.local/rest/widereceiver/{widereceiverID} w/the DELETE http method will:
		//delete the widereceiver w/this widereceiverID from the DB
		return noData().withStatus(201, "Wide receiver deleted.");
	}


}
