Mime::Type.unregister :json
Mime::Type.register "application/json", :json, %w( text/x-json application/jsonrequest application/vnd.api+json application/json )
