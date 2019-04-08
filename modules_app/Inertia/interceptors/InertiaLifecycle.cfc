component {

    function configure() {
        variables.defaultViewArgs = {
            "view" = "main/index",
            "module" = "Inertia"
        };
    }

    function preLayout( event, interceptData, buffer, rc, prc ) {
        if ( ! event.getPrivateValue( "inertia__isInertia", false ) ) {
            return;
        }

        var props = event.getPrivateValue( "inertia__props", {} );
        var sharedProps = event.getPrivateValue( "inertia__sharedProps", {} );
        structAppend( sharedProps, props, true );

        if ( event.getHTTPHeader( "X-Inertia", "" ) != "" ) {
            event.setHTTPHeader( statusCode = 200, statusText = "OK" )
                .setHTTPHeader( name = "Vary", value = "Accept" )
                .setHTTPHeader( name = "X-Inertia", value = true )
                .renderData(
                    type = "json",
                    data = {
                        "component" = event.getPrivateValue( "inertia__component" ),
                        "props" = sharedProps,
                        "url" = event.getFullUrl()
                    }
                );
            return;
        }

        event.setPrivateValue( "inertia__props", sharedProps );

        event.setView( argumentCollection = variables.defaultViewArgs );
    }

}
