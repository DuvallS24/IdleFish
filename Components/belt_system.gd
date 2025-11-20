class_name BeltSystem extends Node

@export var factory_width: int = 10
@export var factory_height: int = 10

var factory_grid: FactoryGrid
var bounds: Rect2i


func _init() -> void:
	
	self.factory_grid = FactoryGrid.new(self.factory_width, self.factory_height)
	bounds = Rect2i(Vector2i.ZERO, Vector2i(self.factory_width, self.factory_height))
	
	return
