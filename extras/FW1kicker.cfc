component {

	//init()
	public any function init( any fw ) {
		variables.fw = fw;
		return this;
	}


	//getKickers()
	public void function getKickers( struct rc ) {
		param name="rc.teamID" default=0;
		param name="rc.division" default="";
		param name="rc.conference" default="";

		var kickers = //get a list of kickers, optional team, division, or conference affiliation

		variables.fw.renderData( 'json', kickers, statusCode=200 );
	}


	//getKicker()
	public void function getKicker( struct rc ) {
		param name="rc.kickerID" default=0;

		var kicker = //get a kicker w/the kickerID

		variables.fw.renderData( 'json', kicker, statusCode=200 );
	}


	//updateKicker()
	public void function updateKicker( struct rc ) {
		param name="rc.name" default="";
		param name="rc.age" default=0;
		param name="rc.teamID" default=0;

		//create a new kicker w/the form data

		variables.fw.renderData( 'string', 'New kicker created.' );
	}


	//putKicker()
	public void function putKicker( struct rc ) {
		param name="rc.kickerID" default=0;
		param name="rc.name" default="";
		param name="rc.age" default=0;
		param name="rc.teamID" default=0;

		//update an existing kicker w/the form data

		variables.fw.renderData( 'string', 'Kicker updated.' );
	}


	//deleteKicker()
	public void function deleteKicker( struct rc ) {
		param name="rc.kickerID" default=0;

		//delete a kicker that's associated w/the kickerID

		variables.fw.renderData( 'string', 'Kicker deleted.' );
	}


}