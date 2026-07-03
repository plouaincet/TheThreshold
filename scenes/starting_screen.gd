extends Node

@onready var start_game_area: Area2D = $StartGameArea
@onready var instructions_area: Area2D = $InstructionsArea
@onready var quit_area: Area2D = $QuitArea
@onready var arrow_1: Sprite2D = $Arrows/Arrow1
@onready var arrow_2: Sprite2D = $Arrows/Arrow2
#@onready var scene_manager: Node = $".."
signal game_entered()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	arrow_1.position=Vector2(364,163)
	arrow_2.position=Vector2(555,162)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_startgame_button_down() -> void:
	emit_signal("game_entered")

func _on_instructions_button_down() -> void:
	print("Instructions")

func _on_quit_button_down() -> void:
	print("Quit")
func change_arrow_position(n: int) -> void:
	match n:
		1:
			arrow_1.position=Vector2(364,163)
			arrow_2.position=Vector2(555,162)
		2:
			arrow_1.position=Vector2(364,214)
			arrow_2.position=Vector2(555,214)
		3:
			arrow_1.position=Vector2(417,261)
			arrow_2.position=Vector2(501,260)


func _on_startgame_mouse_entered() -> void:
	change_arrow_position(1)

func _on_instructions_mouse_entered() -> void:
	change_arrow_position(2)

func _on_quit_mouse_entered() -> void:
	change_arrow_position(3)
