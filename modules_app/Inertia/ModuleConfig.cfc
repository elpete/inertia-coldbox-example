component {

    this.name = "Inertia";

    function configure() {
        interceptors = [
            { class = "#moduleMapping#.interceptors.InertiaLifecycle" }
        ];
    }

    function onLoad() {
        var helpers = controller.getSetting( "applicationHelper" );
        arrayAppend(
            helpers,
            "#moduleMapping#/helpers/Inertia.cfm"
        );
        controller.setSetting( "applicationHelper", helpers );
    }

    function onUnload() {
        controller.setSetting(
            "applicationHelper",
            arrayFilter( controller.getSetting( "applicationHelper" ), function( helper ) {
                return helper != "#moduleMapping#/helpers/Inertia.cfm";
            } )
        );
    }

}
