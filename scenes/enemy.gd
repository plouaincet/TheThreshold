extends CharacterBody2D
@onready var player: CharacterBody2D = $"../player"
@onready var timer: Timer = $Timer

var SPEED=20
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$NavigationAgent2D.target_position=player.global_position
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !$NavigationAgent2D.is_target_reached():
		var nav_point=to_local($NavigationAgent2D.get_next_path_position()).normalized()
		velocity=nav_point*SPEED
		move_and_slide()


func _on_timer_timeout() -> void:
	if $NavigationAgent2D.target_position!=player.global_position:
		$NavigationAgent2D.target_position=player.global_position
	timer.start()
