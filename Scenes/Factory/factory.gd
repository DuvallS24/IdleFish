class_name Factory extends Node2D


@onready var factory_area: FactoryArea = $FactoryArea
@onready var factory_buildings: TileMapLayer = $FactoryBuildings
@onready var belt_system: BeltSystem = $BeltSystem


func _ready() -> void:
	
	if not is_node_ready():
		await ready
		
	# -------- Debug setup! ------------
	
	# First create a new 'belt' at the desired grid coords
	self.factory_buildings.set_cell(Vector2i(0, 5), 1, Vector2i(0, 0))
	self.factory_buildings.set_cell(Vector2i(1, 5), 1, Vector2i(2, 0))
	self.factory_buildings.set_cell(Vector2i(2, 5), 1, Vector2i(2, 0))
	self.factory_buildings.set_cell(Vector2i(3, 5), 1, Vector2i(2, 0))
	self.factory_buildings.set_cell(Vector2i(4, 5), 1, Vector2i(2, 0))
	self.factory_buildings.set_cell(Vector2i(5, 5), 1, Vector2i(2, 0))
	self.factory_buildings.set_cell(Vector2i(6, 5), 1, Vector2i(2, 0))
	
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
