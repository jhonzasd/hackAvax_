extends Node2D

@onready var http = $HTTPRequest
const url = "https://www.dnd5eapi.co/api/"
const page := "/api"

func _ready():
	http.request_completed.connect(_on_http_request_request_completed)
	http.request(url + page)




func _on_http_request_request_completed(result, response_code, headers, body):
	print("func called")
	print(body)
	var json = JSON.parse_string(body.get_string_from_utf8())
	print(json)
