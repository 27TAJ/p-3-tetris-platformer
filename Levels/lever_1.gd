extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$spike_timer_10.timeout.connect(_on_spike_timer_10_timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	change_spikes("down")
	$spike_timer_10.start()
	

	
func change_spikes(direction: String):
	if direction == "down":
		$"../Decor".set_cell(Vector2i(-5,-3), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(-5,-2), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(-5,-1), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(7,-3), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(7,-2), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(13,-2), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(13,-1), 0, Vector2i(0,3))
	else:
		$"../Decor".set_cell(Vector2i(-5,-3), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-5,-2), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(-5,-1), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(7,-3), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(7,-2), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(13,-2), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(13,-1), 0, Vector2i(3,3))


func _on_spike_timer_10_timeout() -> void:
	change_spikes("up")
