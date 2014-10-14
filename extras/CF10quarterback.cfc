<cfcomponent rest="true" restpath="/quarterback">


	<!--- getQuarterback() --->
	<cffunction name="getQuarterback" access="remote" returntype="quarterback" restpath="{quarterbackID}">
		<cfargument name="quarterbackID" type="numeric" required="yes" restargsource="Path"/>
			<!--- hitting superfootball.local/rest/quarterback/{quarterbackID} w/the GET http method will: --->
			<!--- Get a QB w/this ID and return it --->
		<cfreturn quarterback>
	</cffunction>


	<!--- addQuarterback() --->
	<cffunction name="addQuarterback" access="remote" returntype="void" httpmethod="POST">
		<cfargument name="name" type="string" required="yes" restargsource="Form"/>
		<cfargument name="age" type="numeric" required="yes" restargsource="Form"/>
		<cfargument name="teamID" type="numeric" required="yes" restargsource="Form"/>
			<!--- hitting superfootball.local/rest/quarterback w/the POST http method and correct Form data will: --->
			<!--- Add a new QB w/this name, age and teamID to the DB --->
		<cfreturn "Quarterback created.">
	</cffunction>


	<!--- updateQuarterback() --->
	<cffunction name="updateQuarterback" access="remote" returntype="void" httpmethod="PUT" restpath="{quarterbackID}">
		<cfargument name="quarterbackID" type="numeric" required="yes" restargsource="Path"/>
		<cfargument name="name" type="string" required="no" restargsource="Form"/>
		<cfargument name="age" type="numeric" required="no" restargsource="Form"/>
		<cfargument name="team" type="numeric" required="no" restargsource="Form"/>
			<!--- hitting superfootball.local/rest/quarterback/{quarterbackID} w/the PUT http method and correct Form data will: --->
			<!--- update the QB with this quarterbackID in DB --->
		<cfreturn "Quarterback updated.">
	</cffunction>


	<!--- deleteQuarterback() --->
	<cffunction name="deleteQuarterback" access="remote" returntype="string" restpath="{quarterbackID}">
		<cfargument name="quarterbackID" type="numeric" required="yes" restargsource="Path"/>
			<!--- hitting superfootball.local/rest/quarterback/{quarterbackID} w/the DELETE http method will: --->
			<!--- Delete the QB with this quarterbackID from the DB --->
			<cfreturn "Quarterback deleted.">
	</cffunction>


</cfcomponent>