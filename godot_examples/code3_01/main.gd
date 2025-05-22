extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready(): 
	print("Wir sind ready!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		print(Input.get_last_mouse_velocity())
	else:
		print($CameraRig.rotation.y)

	
	if Input.is_action_pressed("ui_left"):
		$CameraRig.rotate_y(0.01)
	if Input.is_action_pressed("ui_right"):
		$CameraRig.rotate_y(-0.01)
	if Input.is_action_pressed("ui_up"):
		$CameraRig/CameraArm.rotate_x(0.01)
	if Input.is_action_pressed("ui_down"):
		$CameraRig/CameraArm.rotate_x(-0.01)
