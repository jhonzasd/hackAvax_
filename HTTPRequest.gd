extends Node

@onready var http = $"."

func _ready():
	http.request_completed.connect(_on_request_completed)
	http.request("https://andruxnet-random-famous-quotes.p.rapidapi.com/")

func _on_request_completed(result, response_code, headers, body):
	print("func called")
	var json = JSON.parse_string(body.get_string_from_utf8())
	print(json)
	
