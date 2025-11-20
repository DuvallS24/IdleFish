class_name FishGoal extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _init() -> void:
	pass
	
	
func _ready() -> void:
	pass
	
	
func _process(delta: float) -> void:
	pass
	
	
func _play_wobble() -> void:
	animation_player.play("wobble")


func _on_area_entered(area: Area2D) -> void:
	if area is Fish:
		area.on_goal_collision()
	self._play_wobble()
