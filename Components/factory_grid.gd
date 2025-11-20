class_name FactoryGrid extends RefCounted

var grid_dict: Dictionary
var width: int
var height: int


func _init(_width: int, _height: int) -> void:
	
	for w in range(_width):
		for h in range(_height):
			grid_dict[Vector2i(w, h)] = null
	
	return


func get_entity_at_tile(_x: int, _y: int) -> RefCounted:
	return grid_dict[Vector2i(_x, _y)]
