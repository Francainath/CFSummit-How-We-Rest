component rest="true" restpath="/runningback" {


	//getRunningback()
	remote any function getRunningback(required numeric runningbackID restargsource="Path") returntype="runningback" restpath="{runningbackID}" httpmethod="GET" {
		//hitting superfootball.local/rest/runningback/{runningbackID} w/the GET http method will:
		//get a runningback with this ID from the DB
		return runningback;
	}


	//newRunningback()
	remote any function newRunningback(required string name restargsource="Form", required numeric age restargsource="Form", required numeric teamID restargsource="Form") returntype="void" restpath="" httpmethod="POST" {
		//hitting superfootball.local/rest/runningback w/the POST http method and correct Form data will:
		//save a newRunningback w/this name, age, and teamID to the DB
		return "Running Back created.";
	}


	//updateRunningback()
	remote any function updateRunningback(required numeric runningbackID restargsource="Path", string name restargsource="Form", numeric age restargsource="Form", numeric teamID restargsource="Form") returntype="void" restpath="{runningbackID}" httpmethod="PUT" {
		//hitting superfootball.local/rest/runningback/{runningbackID} w/the PUT http method and correct Form data will:
		//update the runningback (associated w/this runningbackID) with these form values
		return "Running Back updated.";
	}


	//deleteRunningback()
	remote any function deleteRunningback(required numeric runningbackID restargsource="Path") returntype="string" restpath="{runningbackID}" httpmethod="DELETE" {
		//hitting superfootball.local/rest/runningback/{runningbackID} w/the DELETE http method will:
		//delete the runningback w/this runningbackID from the DB
		return "Runningback deleted.";
	}


}