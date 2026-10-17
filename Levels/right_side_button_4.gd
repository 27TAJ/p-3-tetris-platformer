extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(3, 15), 0 , Vector2i(3, 4))
	change_spikes("down")

func _on_body_exited(body: Node2D) -> void:
	$"../Decor".set_cell(Vector2i(3, 15), 0 , Vector2i(2, 4))
	change_spikes("up")

func change_spikes(Direction: String):
	if Direction == "down":
		$"../Decor".set_cell(Vector2i(-1, 4), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(0, 4), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(1, 4), 0 , Vector2i(0, 3))
		
		$"../Decor".set_cell(Vector2i(-8, 17), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-7, 17), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-6, 17), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-5, 17), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-4, 17), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-3, 17), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-2, 17), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-2, 18), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-2, 19), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-2, 20), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-2, 21), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-2, 22), 0 , Vector2i(0, 3))
		$"../Decor".set_cell(Vector2i(-2, 23), 0 , Vector2i(0, 3))

	else:
		$"../Decor".set_cell(Vector2i(-1, 4), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(0, 4), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(1, 4), 0 , Vector2i(3, 3))
		
		$"../Decor".set_cell(Vector2i(-8, 17), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-7, 17), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-6, 17), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-5, 17), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-4, 17), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-3, 17), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-2, 17), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-2, 18), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-2, 19), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-2, 20), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-2, 21), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-2, 22), 0 , Vector2i(3, 3))
		$"../Decor".set_cell(Vector2i(-2, 23), 0 , Vector2i(3, 3))
