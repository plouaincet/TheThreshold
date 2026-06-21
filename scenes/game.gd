extends Node

var rng=RandomNumberGenerator.new()
var frame_cnt:int=1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Static.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	$Horror_sound.play()
	$player.SPEED+=30



func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	$player.SPEED-=30
