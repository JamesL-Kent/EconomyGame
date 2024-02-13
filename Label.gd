extends Label

@onready var wallet_value = %Wallet

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if wallet_value != null:
		text = "Money: %s" % wallet_value.getWalletValue()
	else:
		print("Still null!")
