extends Position2D

onready var soil = preload("res://scenes/soil.tscn")

func _ready():
	pass
		
func _on_Timer_timeout():
	print("Gerado")
	var newSoil = soil.instance()
	
	newSoil.position.x = 0
	newSoil.position.y = rand_range(-372,372)
	add_child(newSoil)