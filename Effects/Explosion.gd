extends AnimatedSprite

var Explosion_Sound = null

func _ready():
	play("default")
	Explosion_Sound = get_node_or_null("/root/Game/Explosion_Sound")
	if Explosion_Sound != null:
		Explosion_Sound.play()


func _on_Explosion_animation_finished():
	queue_free()
