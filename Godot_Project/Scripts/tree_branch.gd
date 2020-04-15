extends Spatial

var spawned = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func start(xform):
	transform = xform
	
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start($AnimationPlayer.current_animation_length/2)
	$Timer.autostart = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	if !spawned:
		get_parent().spawn_branch($Position3D.global_transform)
		spawned = true
