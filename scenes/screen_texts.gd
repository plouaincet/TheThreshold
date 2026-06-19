extends CanvasLayer

@onready var player: CharacterBody2D = $"../player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if player.get_child(0).visible:
		$Control/Label.text="Toggle Light OFF: Z"
	else:
		$Control/Label.text="Toggle Light ON: Z"
