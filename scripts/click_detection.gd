extends Node2D

@onready var click_detection: Node2D = $"."

@onready var cell_shape: Polygon2D = $CellShape


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed == true:
			var mouse_position = get_global_mouse_position()
			var cursor_in_polygon = Geometry2D.is_point_in_polygon(mouse_position*-1, cell_shape.polygon * cell_shape.transform * transform)
			if cursor_in_polygon:
				print($".".name)
