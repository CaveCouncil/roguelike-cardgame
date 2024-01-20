extends MarginContainer

@onready var CardDatabase = preload("res://assets/cards/CardsDatabase.gd")
@onready var CardDatabaseTemp = CardDatabase.new()
var Cardname = 'Guardian'
@onready var CardInfo = CardDatabaseTemp.DATA[CardDatabaseTemp.get(Cardname)]
@onready var CardImg = str("res://Assets/Cards/",CardInfo[0],"/",Cardname, ".png")

func _ready():
	print(CardImg)
	var CardSize = size
	$Border.scale *= CardSize/$Border.texture.get_size()
	$Card.texture = load(CardImg)
	$Card.scale *= CardSize/$Card.texture.get_size()
	var Attack = str(CardInfo[1])
	var Health = str(CardInfo[3])
	var Cost = str(CardInfo[4])
	var CardName = str(CardInfo[5])
	$Bars/TopBar/Name/CenterContainer/Name.text = Cardname
	$Bars/TopBar/Cost/CenterContainer/Cost.text = Cost
	$Bars/BottomBar/Health/CenterContainer/Health.text = Health
	$Bars/BottomBar/Attack/CenterContainer/Attack.text = Attack
