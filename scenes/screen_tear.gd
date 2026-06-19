extends CanvasLayer

var rng=RandomNumberGenerator.new()
var number :int =0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	number = randi_range(0,10000)
	if number<=20:
		for i in $Control.get_child_count():
			var y=rng.randi_range(28,865)
			var x=rng.randi_range(501,1082)
			$Control.get_child(i).position=Vector2(x,y)
			$Control.get_child(i).visible=true
	elif number>7000:
		for i in $Control.get_child_count():
			$Control.get_child(i).visible=false
