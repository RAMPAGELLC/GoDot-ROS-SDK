# Copyright (©) 2024 RAMPAGE Interactive
# RAMPAGE Gaming Online Services (ROS) API SDK

extends HttpRouter
class_name ROSRouter_AuthCallback

# Documentation: https://github.com/deep-entertainment/godottpd/blob/main/docs/api/HttpRequest.md
func handle_get(request: HttpRequest, response: HttpResponse)-> void:
    var token = request.query.token;
    if token == null: return response.send(403)
    # TODO:
    # TOKEN VALIDATION
    # RAMPAGE OAUTH INTERGATION WITH NEBULA: https://meta.rampage.place/t/rampage-oauth-system/60
    response.send(200, "RAMPAGEOnlineServices: You can close this window and go back to playing :)")