extends CharacterBody2D
@onready var floor_layer: TileMapLayer = $"../../Floor"
@onready var wall_layer: TileMapLayer = $"../../Walls"
@onready var decor_layer: TileMapLayer = $"../../Decor"


const SPEED = 135
var push_force: float = 50.0

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("left", "right", "up", "down")
	velocity = direction * SPEED
	move_and_slide()
	
	if direction.x < 0:
		$AnimatedSprite2D.flip_h = true
	elif direction.x > 0:
		$AnimatedSprite2D.flip_h = false
		
	if direction.length() > 0:
		$AnimatedSprite2D.play("Run Right")
	else:
		$AnimatedSprite2D.play("Idle")
	
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var collider = collision.get_collider()

		if collider is RigidBody2D:
			
			var push_dir = -collision.get_normal()
			var raycast: RayCast2D = collider.get_node("RayCast2D")
			raycast.target_position = push_dir * 16
			raycast.force_raycast_update()
			
			if not raycast.is_colliding() or raycast.get_collider() == self:
				
				var current_cell = floor_layer.local_to_map(floor_layer.to_local(collider.global_position))
				var next_cell = current_cell + Vector2i(roundi(push_dir.x), roundi(push_dir.y))
				collider.global_position = floor_layer.to_global(floor_layer.map_to_local(next_cell))

				collider.linear_velocity = Vector2.ZERO
				collider.angular_velocity = 0.0
	
	
