extends Node

var vida
var stamina
var velocidade
var altura_pulo
var custo_temporal

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func movimento():
	pass

func andar():
	velocidade = 700
	altura_pulo = 850
	
func correr():
	velocidade = 1400
	altura_pulo = 1700
	
func pular(velocidade, altura):
	pass