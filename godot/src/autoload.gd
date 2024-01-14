extends Control

var ROSBase
var ROSAuth

func parse_json(text):
	return JSON.parse_string(text)

func readJson(file_path):
	var file = FileAccess.open(file_path, FileAccess.READ)
	var content_as_text = file.get_as_text()
	var content_as_dictionary = parse_json(content_as_text)
	return content_as_dictionary