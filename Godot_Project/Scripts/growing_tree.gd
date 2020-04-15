extends Spatial

var Branch = preload("res://Scenes/tree_branch.tscn")
var spawn_position = Vector3(0,0,0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_branch($Position3D.global_transform)
	
	
func _process(delta):
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func spawn_branch(branch_transform):
	var b = Branch.instance()
	b.transform = branch_transform
	add_child(b)
	var num = get_child_count()
	var children = get_children()
	var newest_child = children[num-1]
	newest_child.global_transform = children[num-2].global_transform
	newest_child.translate(Vector3(0,0.3,0))
	newest_child.rotate_x(0.05)
	newest_child.rotate_y (0.05)
	print(get_child_count())
