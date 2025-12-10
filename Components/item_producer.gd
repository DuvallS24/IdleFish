class_name ItemProducer extends BeltComponent


var item_acceptors: Array[ItemAcceptor] = []
var item_ejectors: Array[ItemEjector] = []


func _init() -> void:
	
	# TODO Remove this eventually!  This is for test item creation!
	self.item_acceptors.append(ItemAcceptor.new())
	self.item_ejectors.append(ItemEjector.new())
	
	# END OF TEST CODE TO REMOVE
	
	return
