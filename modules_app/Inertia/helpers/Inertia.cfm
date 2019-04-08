<cfscript>
public Inertia function inertia() {
    return getWireBox().getInstance( "@Inertia" ).render( argumentCollection = arguments );
}
</cfscript>
