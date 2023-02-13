extends Control

var Button_Sound = null

func _ready():
	pass


func _on_Play_pressed():
	Button_Sound = get_node_or_null("/root/Main_Menu/Button_Sound")
	if Button_Sound != null:
		Button_Sound.play()
	yield (Button_Sound, "finished")
	var _scene = get_tree().change_scene("res://Game.tscn")


func _on_Quit_pressed():
	Button_Sound = get_node_or_null("/root/Main_Menu/Button_Sound")
	if Button_Sound != null:
		Button_Sound.play()
	yield (Button_Sound, "finished")
	get_tree().quit()
	
	
