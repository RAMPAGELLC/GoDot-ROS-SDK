# Copyright (©) 2024 RAMPAGE Interactive
# RAMPAGE Gaming Online Services (ROS) API SDK

extends HttpRouter
class_name ROSRouter_Login

func handle_get(request: HttpRequest, response: HttpResponse)-> void:
    response.send(200, '<h1>Authorize account</h1><br /><p>This software/game uses RAMPAGE Gaming Online Services (ROS) by RAMPAGE Interactive, use the button below to login with your RAMPAGE ID. A internet connection is required, RAMPAGE ID accounts are free & secure.</p><br \><a href="' + AUTHORIZE_URL + '">Login with RAMPAGE ID</a>', "text/html")