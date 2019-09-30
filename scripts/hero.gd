extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0, -1)
const GRAVITY = 20 
const SPEED = 300
const JUMP_HEIGHT = -850

func _physics_process(delta):
	
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED 
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	elif Input.is_action_pressed("ui_down"):
		pass
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
	
	motion = move_and_slide(motion, UP)	
	
func _ready():
	set_process_input(true)
	
func _input(event):	

	if(event.is_action_pressed("touch")):
		on_touch()

func on_touch():
	$".".position.y-=20