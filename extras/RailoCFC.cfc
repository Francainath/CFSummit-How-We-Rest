component rest="true" restpath="/quarterback" {


	//getQuarterback
	remote any function getQuarterback (required numeric id restargsource="Path") restpath="{id}" httpmethod="GET" {
		//get a quarterback with this ID from the DB
	}


	//newQuarterback
	remote any function newQuarterback (required string name restargsource="Form", required numeric age restargsource="From", required numeric teamID restargsource="Form") restpath="" httpmethod="POST" {
		//save a newQuarterback w/this name, age, and teamID to the DB
	}


	//updateQuarterback
	remote any function updateQuarterback (required numeric id restargsource="Path", required string name restargsource="Form", required numeric age restargsource="From", required numeric teamID restargsource="Form") restpath="{id}" httpmethod="PUT" {
		//update an existing quarterback with these from values
	}


	//deleteQuarterback
	remote any function deleteQuarterback (required numeric id restargsource="Path") restpath="{id}" httpmethod="DELETE" {
		//delete the quarterback w/this id
	}


}