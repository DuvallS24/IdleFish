class_name FollowMouse extends Node

@export var enabled: bool = true:
	set = _set_enabled
@export var target: Node2D


func _init() -> void:
	pass
	
	
func _ready() -> void:
	pass
	
	
func _physics_process(delta: float) -> void:
	if not enabled:
		return
	if not target:
		return
		
	target.global_position = target.get_global_mouse_position()


func _set_enabled(value: bool) -> void:
	enabled = value
