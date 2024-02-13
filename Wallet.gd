extends Node2D

@export var value = 0

signal value_increased(old, new)

func onMoneyIn(amount):
	var old = value
	value += amount
	value_increased.emit(old, value)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func getWalletValue():
	return value

