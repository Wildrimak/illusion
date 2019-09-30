extends StaticBody2D

var flip = true
var init
var end

func _ready():
	$AnimatedSprite.play("walk")

func _process(delta):
	pass