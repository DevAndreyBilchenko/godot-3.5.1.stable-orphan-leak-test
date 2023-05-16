extends Node

export(PackedScene) var sc


var _prev_leaker: Node

func _on_Timer_timeout():
	if _prev_leaker:
		remove_child(_prev_leaker)
		_prev_leaker.die()
	
	_prev_leaker = sc.instance()
	
	add_child(_prev_leaker)
	
	pass # Replace with function body.
