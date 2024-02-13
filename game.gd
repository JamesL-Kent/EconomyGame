extends Node2D

@onready var wallet = %Wallet
@onready var ui = get_node("UI")
var achievement1000 = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_plus_button_pressed():
	if wallet != null:
		wallet.onMoneyIn(50)
		


func _on_minus_button_pressed():
		if wallet != null:
			wallet.onMoneyIn(-50)


func _on_wallet_value_increased(old, new):
	if new >= 1000 && achievement1000 == false:
		achievement1000 = true
		var achievement_scene = preload("res://achievement.tscn")
		var achievement = achievement_scene.instantiate()
		add_child(achievement)
		achievement.onAchievementEarned("MEGA MONEY! Earn 1000 KentBUX")
		
func _on_bills_timer_timeout():
	if wallet != null:
		wallet.onMoneyIn(-50)
