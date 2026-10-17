extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$spike_timer_5.timeout.connect(_on_spike_timer_5_timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	change_spikes("down")
	$"../Decor".set_cell(Vector2i(21,-3), 0, Vector2i(3,5))
	$spike_timer_5.start()


func _on_spike_timer_5_timeout() -> void:
	change_spikes("up")
	$"../Decor".set_cell(Vector2i(21,-3), 0, Vector2i(2,5))
	
func change_spikes(Direction: String):
	if Direction == "down":
		$"../Decor".set_cell(Vector2i(7,-3), 0, Vector2i(0,3))
		$"../Decor".set_cell(Vector2i(7,-2), 0, Vector2i(0,3))
	else:
		$"../Decor".set_cell(Vector2i(7,-3), 0, Vector2i(3,3))
		$"../Decor".set_cell(Vector2i(7,-2), 0, Vector2i(3,3))
