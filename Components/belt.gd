class_name Belt extends RefCounted

var direction: Globals.BELT_DIRECTION
var items: Array[BeltItem]
var distance_to_first_item: float
var length: float = 32.0


func _init() -> void:
	
	self.direction = Globals.BELT_DIRECTION.EAST
	self.distance_to_first_item = self.length
	#var init_test_item: BeltItem = BeltItem.new()
	#self.items.append(init_test_item)
	#self.distance_to_first_item = 0.0
	
	return
	
	
func _physics_process(delta: float) -> void:
	
	if not items:
		return
		
	if self.distance_to_first_item >= length:
		return
		
	var first_item: bool = true
	var last_item_index: int = self.items.size() - 1
	var belt_speed: float = \
		Globals.BELT_SPEED * \
		delta * \
		Globals.ITEM_SPACING
	
	var remaining_velocity: float = belt_speed
	
	for i in range(self.items.size() - 1, -1, -1):
		var current_item: BeltItem = self.items[i]
		
		var minimum_spacing: float
		if i == last_item_index:
			minimum_spacing = 0.0
		else:
			minimum_spacing = Globals.ITEM_SPACING
			
		var clamped_progress: float = current_item.distance_to_next - minimum_spacing
		
		if remaining_velocity < clamped_progress:
			clamped_progress = remaining_velocity
		
		if clamped_progress < 0:
			clamped_progress = 0
			
		current_item.distance_to_next -= clamped_progress
		self.distance_to_first_item += clamped_progress
		
		first_item = false
	#self.distance_to_first_item += Globals.BELT_SPEED * delta
	
	return
	
	
func get_direction() -> Globals.BELT_DIRECTION:
	return self.direction


# Returns an array of LOCAL positions that the items would be at on the belt.
func get_item_positions() -> Array[Vector2]:
	
	var positions: Array[Vector2]
	var current_distance: float
	
	for item in self.items:
		if self.items[0] == item:
			var local_pos: Vector2 = Vector2(self.distance_to_first_item, 16.0)
			current_distance += self.distance_to_first_item + item.distance_to_next
			positions.append(local_pos)
		else:
			var local_pos: Vector2 = Vector2(current_distance, 16.0)
			current_distance += item.distance_to_next
			positions.append(local_pos)
	
	return positions
	
	
func _debug_create_item() -> void:
	
	# Only create a new item if the belt has space for it!
	if self.distance_to_first_item < Globals.ITEM_SPACING:
		print_debug("No space for an item on this belt!")
		return
		
	var new_test_item: BeltItem = BeltItem.new()
	new_test_item.distance_to_next = self.distance_to_first_item
	self.items.push_front(new_test_item)
	self.distance_to_first_item = 0.0
	
	return

func _render_items() -> void:
	
	return
