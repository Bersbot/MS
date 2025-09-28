extends MeshInstance3D

var speed := 0.5

func _ready() -> void:
	move_with_delay()

# Асинхронная функция с задержками
func move_with_delay() -> void:
	while true:
		# влево 15 шагов
		for i in 10:
			position.x -= speed
			await get_tree().create_timer(0.01).timeout

		# вправо 15 шагов
		for i in 10:
			position.x += speed
			await get_tree().create_timer(0.01).timeout
