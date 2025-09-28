extends AudioStreamPlayer2D

func _ready() -> void:
	loop_sound()

func loop_sound() -> void:
	while true:
		play()
		# ждём пока звук доиграет
		await finished
		# можно добавить паузу перед следующим запуском
		# await get_tree().create_timer(1.0).timeout
