extends Node2D


const CardBase = preload("res://assets/cards/card_base.tscn")
const PlayerHand = preload("res://Player_Hand.gd")
var DeckSize = PlayerHand.CardList.size()
var CardSelected = []

func _init():
	pass
	


func _input(event):
	if Input.is_action_just_pressed("leftclick") and DeckSize > 0:
		var new_card = CardBase.instantiate()
		CardSelected = randi() % DeckSize
		new_card.Cardname = PlayerHand.CardList[CardSelected]
		new_card.position = get_global_mouse_position()
		$Cards.add_child(new_card)
		PlayerHand.CardList.erase(PlayerHand.CardList[CardSelected])
		DeckSize -= 1
	
	if Input.is_action_pressed("rightclick"):
		pass
