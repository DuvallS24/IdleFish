class_name Globals extends Node

const NORTH_DIR = Vector2i(0, 1)
const EAST_DIR = Vector2i(1, 0)
const SOUTH_DIR = Vector2i(0, -1)
const WEST_DIR = Vector2i(-1, 0)

enum BELT_DIRECTION {
	FORWARD,
	LEFT,
	RIGHT,
	BACKWARDS
}

enum BELT_ORIENTATION {
	NORTH,
	EAST,
	SOUTH,
	WEST
}

const BELT_SPEED: float = 8.0
const ITEM_SPACING: float = 8.0


func get_direction_vector(_direction: int) -> Vector2i:
	var direction_vector: Vector2i = Vector2i.ZERO
	
	match _direction:
	
		self.BELT_ORIENTATION.NORTH:
			direction_vector = self.NORTH_DIR
		self.BELT_ORIENTATION.EAST:
			direction_vector = self.EAST_DIR
		self.BELT_ORIENTATION.SOUTH:
			direction_vector = self.SOUTH_DIR
		self.BELT_ORIENTATION.WEST:
			direction_vector = self.WEST_DIR
		_:
			pass
	
	return direction_vector


func get_direction_from_orientation(_orientation: int) -> Vector2i:
	
	var orientation_vector: Vector2i = Vector2i.ZERO
	
	return orientation_vector
