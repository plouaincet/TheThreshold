extends Node

var rng=RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var number=rng.randi_range(0,5000)
	if number==1:
		$Horror_sound.play()
		
