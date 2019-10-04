extends KinematicBody2D

class_name Hero

var motion = Vector2()
const UP = Vector2(0, -1)
const GRAVITY = 20 
const SPEED = 700
const JUMP_HEIGHT = -850




func movement_on_floor():
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.flip_h = false
		
		if Input.is_action_pressed("run"):
			$AnimatedSprite.play("Run")
			motion.x = SPEED * 2
		else:
			$AnimatedSprite.play("Walk")
			motion.x = SPEED
			
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite.flip_h = true
		
		if Input.is_action_pressed("run"):
			$AnimatedSprite.play("Run")
			motion.x = -SPEED * 2
		else:
			$AnimatedSprite.play("Walk")
			motion.x = -SPEED
			
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("Dead")
		if $AnimatedSprite.get_frame() == 14:
			$AnimatedSprite.stop()
	
	else:
		motion.x = 0
		$AnimatedSprite.play("Idle")

func movement_on_air():
	movement_on_floor()

func _physics_process(delta):
	
	motion.y += GRAVITY
	
	if is_on_floor():
		
		movement_on_floor()	
			
		if Input.is_action_pressed("jump"):
			$AnimatedSprite.play("Jump")
			motion.y = JUMP_HEIGHT
	
	else:
		movement_on_air()
	
	motion = move_and_slide(motion, UP)	
	
func _ready():
	set_process_input(true)
	
func _input(event):	

	if(event.is_action_pressed("touch")):
		on_touch()

func on_touch():
	$".".position.y-=20