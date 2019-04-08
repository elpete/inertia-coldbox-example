component extends="coldbox.system.EventHandler"{

	// Default Action
	function index(event,rc,prc) {
        var greetings = [
            "Hello, world!",
            "We're glad you made it.",
            "Isn't Inertia neat?",
            "Keep clicking.  I'm sure one of these messages will make you smile"
        ];
        var index = randRange( 1, arrayLen( greetings ) );
        var greeting = greetings[ index ];
		inertia( "Home", { "greeting" = greeting } );
	}

	// Do something
	function doSomething(event,rc,prc){
		relocate( "main.index" );
	}

	/************************************** IMPLICIT ACTIONS *********************************************/

	function onAppInit(event,rc,prc){

	}

	function onRequestStart(event,rc,prc){

	}

	function onRequestEnd(event,rc,prc){

	}

	function onSessionStart(event,rc,prc){

	}

	function onSessionEnd(event,rc,prc){
		var sessionScope = event.getValue("sessionReference");
		var applicationScope = event.getValue("applicationReference");
	}

	function onException(event,rc,prc){
		event.setHTTPHeader( statusCode = 500 );
		//Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		//Place exception handler below:
	}

}
