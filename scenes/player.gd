extends CharacterBody2D

var SPEED = 25
@onready var switch_off: AudioStreamPlayer = $"../Switch_Off"
@onready var switch_on: AudioStreamPlayer = $"../Switch_On"

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("left","right","up","down")
	velocity=direction*SPEED
	if Input.is_action_just_pressed("light_toggle"):
		if $PointLight2D.visible:
			$PointLight2D.visible=false
			switch_off.play()
		else:
			$PointLight2D.visible=true
			switch_on.play()
	move_and_slide()
