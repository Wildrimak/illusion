extends Position2D

onready var soil = preload("res://scenes/soil.tscn")

const IN_SCREEN = true

func _ready():
	pass
		
func _process(delta):
	pass

func _on_Timer_timeout():
	print("Gerado")
	var newSoil = soil.instance()
	
	newSoil.position.x = 0
	newSoil.position.y = rand_range(-372,372)
	get_owner().add_child(newSoil)
		
	