extends Control

var Button_Sound = null

func _ready():
	$Label.text = "Thanks for Playing! Your final score was:" + str(Global.score) + " points"



func _on_Play_pressed():
	Button_Sound = get_node_or_null("/root/End_Game/Button_Sound")
	if Button_Sound != null:
		Button_Sound.play()
	Global.reset()
	var _scene = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	Button_Sound = get_node_or_null("/root/End_Game/Button_Sound")
	if Button_Sound != null:
		Button_Sound.play()
	get_tree().quit()
