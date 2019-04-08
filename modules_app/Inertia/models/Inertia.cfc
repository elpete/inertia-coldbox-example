component {

    property name="event" inject="provider:coldbox:requestContext";

    function render( component, props = {} ) {
        event.setPrivateValue( "inertia__isInertia", true );
        event.setPrivateValue( "inertia__component", arguments.component );
        event.setPrivateValue( "inertia__props", arguments.props );
        return this;
    }

    function share( key, value ) {
        var sharedProps = event.getPrivateValue( "inertia__sharedProps", {} );
        sharedProps[ key ] = value;
        event.setPrivateValue( "inertia__sharedProps", sharedProps );
        return this;
    }

}
