extends CharacterBody2D

const SPEED = 50

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("left","right","up","down")
	velocity=direction*SPEED
	if Input.is_action_just_pressed("light_toggle"):
		$PointLight2D.visible=!$PointLight2D.visible
	move_and_slide()
