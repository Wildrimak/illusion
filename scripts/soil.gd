extends RigidBody2D

export var speed = -10
var velocity = Vector2()

func _ready():
	set_process(true)
	
func movit():
	
	$Sprite.position.x += speed
	velocity = Vector2()
	velocity = velocity.normalized() * speed
	
	if $Sprite.position.x < -129:
		$Sprite.position.x = 1920	

func _physics_process(delta):
    movit()