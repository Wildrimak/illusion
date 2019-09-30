extends StaticBody2D

var flip = true
var init
var end
var velocidade = 3

func _ready():
	$AnimatedSprite.play("walk")
	init = $".".position.x
	end = init + 400

func _process(delta):
	if (init <= end and flip):
		$".".position.x += velocidade
		$AnimatedSprite.flip_h = false
		if($".".position.x >= end):
			flip = false
			
	if ($".".position.x >= init and !flip):
		$".".position.x -= velocidade
		$AnimatedSprite.flip_h = true
		if($".".position.x <= init):
			flip = true