class_name Factory extends Node2D

@onready var factory_area: FactoryArea = $FactoryArea
@onready var belt_system: BeltSystem = $BeltSystem


func _ready() -> void:
	
	if not is_node_ready():
		await ready
		
	# -------- Debug setup! ------------
	
	# First create a new 'belt' at the desired grid coords
	
	# -------- End Debug setup! --------
	
	return


func _input(event: InputEvent) -> void:
	
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
		if self.get_viewport_rect().has_point(event.position):
			
			# Get tile from current position
			var tile: Vector2i = factory_area.get_tile_from_global(event.position)
			print_debug("Clicked Cell in Factory Area: %s" % tile)
			var in_bounds: bool = self.belt_system.bounds.has_point(tile)
			print_debug("Is the tile in bounds? - %s" % in_bounds)
			
			if in_bounds:
				print_debug("Setting a new conveyor belt tile")
				
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT and event.is_pressed():
		if self.get_viewport_rect().has_point(event.position):
			
			# Get tile from current position
			var tile: Vector2i = factory_area.get_tile_from_global(event.position)
			print_debug("Clicked Cell in Factory Area: %s" % tile)
			var in_bounds: bool = self.belt_system.bounds.has_point(tile)
			print_debug("Is the tile in bounds? - %s" % in_bounds)
			
			if in_bounds:
				print_debug("Setting a new producer tile")
	
	return
