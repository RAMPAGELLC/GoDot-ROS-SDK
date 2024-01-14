# Copyright (©) 2024 RAMPAGE Interactive
# RAMPAGE Gaming Online Services (ROS) API SDK for Nebula Labs Portal (nebula.rampage.place).

@export var APP_ID: int = 0000000000000000000
# Nebula Application Id

@export var AUTHORIZATION_TOKEN: String = "UNSET"
# If server set to your Application Secret, otherwise leave as "UNSET" and will be automatically set once the client
# completes authorization from client authentication function.

@export var ENVIORNMENT: String = "client"
# Set environment as client or server. Use server strictly for dedicated servers, please use client for P2P Hosts as well.

# DO NOT MODIFY BELOW HERE
@export var PORT = 69420
@export var PATH = "/ros/" + str(APP_ID)
@export var URL = "http://localhost:" + str(PORT) + PATH
@export var AUTHORIZE_URL = "https://nebula.rampage.place/api/v1/authorize/client?appid=" + str(APP_ID) + "&return=" + URL + "/auth/callback"

func _ready() -> void:
	ROS.ROSAuth = self
	var server = HttpServer.new()
	server.register_router(PATH + "/auth/callback", ROSRouter_AuthCallback.new())
	server.register_router(PATH + "/auth/authorize", ROSRouter_Login.new())
	add_child(server)
	server.start()

func AuthenticateClient() -> void:
	OS.shell_open(AUTHORIZE_URL)
