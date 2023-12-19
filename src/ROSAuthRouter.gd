# Copyright (©) 2023 RAMPAGE Interactive
# RAMPAGE Online Services (ROS) API SDK

extends HttpRouter
class_name ROSAuthRouter

# Documentation: https://github.com/deep-entertainment/godottpd/blob/main/docs/api/HttpRequest.md
func handle_get(request: HttpRequest, response: HttpResponse)-> void:
    # TODO: Get ROS Authorization token from body & update ROS @export.
    response.send(200, "RAMPAGEOnlineServices: You can close this window and go back to playing :)")