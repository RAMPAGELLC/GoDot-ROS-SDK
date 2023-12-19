# Copyright (©) 2023 RAMPAGE Interactive
# RAMPAGE Online Services (ROS) API SDK for Nebula Labs Portal (nebula.rampage.place).

@export var APP_ID: int = 0000000000000000000
@export var AUTHORIZATION_TOKEN: string = "UNSET"
@export var ENVIORNMENT: string = "client" # client or server. Use client for P2P hosts.

func _ready() -> void:
    var server = HttpServer.new()
    server.register_router("/rampageonlineservices/auth/callback", ROSAuthRouter.new())
    add_child(server)
    server.start()

func _proccess() -> void:
    pass

func requestAuthorization() -> void:
    OS.shell_open("https://api.ros.rampage.host/v1/authorize/client?appid=" . str(APP_ID) . "&return=http://localhost:8080/rampageonlineservices/auth/callback")