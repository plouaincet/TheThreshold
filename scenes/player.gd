extends CharacterBody2D

var SPEED = 25
@onready var switch_off: AudioStreamPlayer = $"../Switch_Off"
@onready var switch_on: AudioStreamPlayer = $"../Switch_On"
@onready var playersprite: AnimatedSprite2D = $Sprite2D
var anim

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("left","right","up","down")
	velocity=direction*SPEED
	if direction==Vector2(0,0):
		anim=playersprite.animation.erase(0,8)
		anim="idleeee_"+anim
		playersprite.play(anim)
	elif direction.x==0 and direction.y!=0:
		anim=playersprite.animation.erase(0,8)
		anim="running_"+anim
		playersprite.play(anim)
	else:
		if direction.x>0:
			playersprite.play("running_right")
		elif direction.x<0:
			playersprite.play("running_left")
	if Input.is_action_just_pressed("light_toggle"):
		if $PointLight2D.visible:
			$PointLight2D.visible=false
			switch_off.play()
		else:
			$PointLight2D.visible=true
			switch_on.play()
	move_and_slide()
	
	
