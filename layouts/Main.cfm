<cfoutput>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>Inertia ColdBox Test</title>
</head>
<body>
    <div class="container">
        #renderView()#
    </div>

    <script src="#html.elixirPath( "/js/runtime.js" )#"></script>
    <script src="#html.elixirPath( "/js/vendor.js" )#"></script>
    <script src="#html.elixirPath( "/js/app.js" )#"></script>
    <cfabort />
</body>
</html>
</cfoutput>
