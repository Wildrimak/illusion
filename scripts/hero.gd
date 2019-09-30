extends KinematicBody2D

var motion = Vector2()
var speed = 300
const UP = Vector2(0, -1)

func _physics_process(delta):
	
	motion.y += 20
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed 
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
	elif Input.is_action_pressed("ui_down"):
		pass
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = -1200
	
	move_and_slide(motion, UP)	
	
func _ready():
	set_process_input(true)
	
func _input(event):	

	if(event.is_action_pressed("touch")):
		on_touch()

func on_touch():
	$".".position.y-=20