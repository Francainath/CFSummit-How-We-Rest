<cfcomponent rest="true" restpath="/quarterbackService">


	<!--- getQuarterback() --->
	<cffunction name="getQuarterback" access="remote" returntype="quarterback" restpath="{quarterbackID}">
		<cfargument name="quarterbackID" type="numeric" required="yes" restargsource="Path"/>
			<!--- Get a QB w/this ID and return it --->
		<cfreturn quarterback>
	</cffunction>


	<!--- addQuarterback() --->
	<cffunction name="addQuarterback" access="remote" returntype="void" httpmethod="POST">
		<cfargument name="name" type="string" required="yes" restargsource="Form"/>
		<cfargument name="age" type="numeric" required="yes" restargsource="Form"/>
		<cfargument name="teamID" type="numeric" required="yes" restargsource="Form"/>
			<!--- Add a new QB w/this name, age and teamID to the DB --->
	</cffunction>


	<!--- updateQuarterback() --->
	<cffunction name="updateQuarterback" access="remote" returntype="void" httpmethod="PUT" restpath="{quarterbackID}">
		<cfargument name="quarterbackID" type="numeric" required="yes" restargsource="Path"/>
		<cfargument name="name" type="string" required="yes" restargsource="Form"/>
		<cfargument name="age" type="numeric" required="yes" restargsource="Form"/>
		<cfargument name="team" type="numeric" required="yes" restargsource="Form"/>
			<!--- update QB in DB --->
	</cffunction>


	<!--- deleteQuarterback() --->
	<cffunction name="deleteQuarterback" access="remote" returntype="quarterback" restpath="{quarterbackID}">
		<cfargument name="quarterbackID" type="numeric" required="yes" restargsource="Path"/>
			<!--- Delete the QB from the DB --->
	</cffunction>


</cfcomponent>