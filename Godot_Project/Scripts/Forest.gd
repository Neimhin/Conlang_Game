extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _process(delta):
	print(Engine.get_frames_per_second())

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(-lerp(0, 0.1, event.relative.x/10))
		get_node("Camera_Hub").rotate_x(-lerp(0, 0.1, event.relative.y/20))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
