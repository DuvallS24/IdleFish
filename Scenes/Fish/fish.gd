class_name Fish extends Area2D

@export var fish_data: FishData:
	set = _set_fish_data

@onready var sprite: Sprite2D = $Sprite2D


func _init() -> void:
	return


func _ready() -> void:
	if fish_data:
		sprite.texture = fish_data.sprite


func _set_fish_data(value: FishData) -> void:
	fish_data = value
	
	if value == null:
		return
		
	fish_data = value.duplicate()


func on_goal_collision() -> void:
	# Send a signal to add value of fish to score
	print("Adding %s score!" % fish_data.get_sell_value())
	SignalBus.add_score.emit(fish_data.get_sell_value())
	queue_free()
