class_name ConveyorBelt extends Area2D

var belt: Belt = Belt.new()


func _init() -> void:
	pass


func _ready() -> void:
	pass
	

func _physics_process(delta: float) -> void:
	
	self.belt._physics_process(delta)
	self.queue_redraw()
	
	return
	
	
func _input(event: InputEvent) -> void:
	
	if event.is_action_pressed("debug_input_1"):
		self.belt._debug_create_item()
	
	return


func _on_area_entered(area: Area2D) -> void:
	if area is Fish:
		print("Fish has entered Conveyor Belt!")

func _draw() -> void:
	
	var viewport_transform = get_viewport().get_screen_transform() * get_global_transform_with_canvas()
	var item_pos: Array[Vector2] = self.belt.get_item_positions()
	for pos: Vector2 in item_pos:
		var item_position: Vector2 = (self.position + pos) * viewport_transform
		draw_circle(item_position, 6.0, Color.WHITE)
	
	return
