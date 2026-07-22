class_name Rocket extends AnimatedSprite2D

var scroll_speed: float = 20.0

# ENGINE
func _physics_process(delta: float) -> void:
	position.x += scroll_speed * delta


# PUBLIC


# PRIVATE


# SIGNALS
