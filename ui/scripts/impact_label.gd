class_name ImpactLabel extends Label

@onready var animation_player: AnimationPlayer = %AnimationPlayer
@onready var show_particles: CPUParticles2D = %CPUParticles2D

# ENGINE
func _ready():
	show_particles.emission_rect_extents = size / 2
	show_particles.position = size / 2


# PUBLIC
func show_anim():
	animation_player.play("show")
	show_particles.emitting = true


# PRIVATE


# SIGNALS
