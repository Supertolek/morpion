@tool
extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_match_resize()
	get_viewport().connect("size_changed", _match_resize)

func _match_resize():
	size = get_viewport_rect().size
	position = get_viewport_rect().position - size/2
