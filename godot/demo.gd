extends Control

func _on_button_pressed():
	var response = ROS.ROSAuth.AuthenticateClient()
