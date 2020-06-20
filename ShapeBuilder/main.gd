extends Node2D


var state = 0

signal mouse_click_left
signal mouse_click_right


func _process(delta):
	if Input.is_action_just_pressed("click_left"):
		emit_signal("mouse_click_left")
	if Input.is_action_just_pressed("click_right"):
		emit_signal("mouse_click_right")
	
	if state == 0:
			yield(self, "mouse_click_left")
			print("event")
			yield(self, "mouse_click_right")
			print("event2")
