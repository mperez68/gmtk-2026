class_name Portal extends AnimatedSprite2D

@export var opening: bool = true


# ENGINE
func _ready():
	play("open" if opening else "close")


# PUBLIC


# PRIVATE


# SIGNALS
