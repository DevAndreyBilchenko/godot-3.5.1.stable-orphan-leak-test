extends Node2D


var _childs_arr = []


func _ready():
	for ch in get_children():
		_childs_arr.append(ch)
		remove_child(ch)


func die():
	_childs_arr = null
	queue_free()
