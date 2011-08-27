class CreateM12 < ActiveRecord::Migration
	def self.up
		m12_block = Block.find_by_name('Core')
		CardSet.create({ :name => 'Magic 2012', :myr_id => 'M12', :lackey_id => '2012', :supported_codes=> '', :block_id =>  m12_block.id, :date => 2011-07})
		Card.create({ :name => "Aegis Angel", :edition => "M12", :color => "W", :cost => "4WW", :type => "Creature - Angel", :text => "Flying

		Card.create({ :name => "Alabaster Mage", :edition => "M12", :color => "W", :cost => "1W", :type => "Creature-Human Wizard", :text => "%1%W: Target creature you control gains lifelink until end of turn.", :power => "2", :toughness => "1", :flavor => "", :rarity => "U", :artist => "Izzy", :number => 2, :mana => 2, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Angel's Mercy", :edition => "M12", :color => "W", :cost => "2WW", :type => "Instant", :text => "You gain 7 life.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 3, :mana => 4, :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Angelic Destiny", :edition => "M12", :color => "W", :cost => "2WW", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Arbalest Elite", :edition => "M12", :color => "W", :cost => "2WW", :type => "Creature - Human Archer", :text => "%2%W, %T: Arbalest Elite deals 3 damage to target attacking or blocking creature. Arbalest Elite doesn't untap during your next untap step.", :power => "2", :toughness => "3", :flavor => "There are few things as satisfying as a good, heavy thunk.", :rarity => "U", :artist => "Chris Rahn", :number => 5, :mana => 4, :power_int => 2, :toughness_int => 3, :power_text => "2", :toughness_text => "3", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Archon of Justice", :edition => "M12", :color => "W", :cost => "3WW", :type => "Creature - Archon", :text => "Flying

		Card.create({ :name => "Armored Warhorse", :edition => "M12", :color => "W", :cost => "WW", :type => "Creature - Horse", :text => "", :power => "2", :toughness => "3", :flavor => "'When we of the Northern Verge claim a mount, no peasant's nag will do. It must be as strong as our virtue, and must join us of its own will.'

		Card.create({ :name => "Assault Griffin", :edition => "M12", :color => "W", :cost => "3W", :type => "Creature - Griffin", :text => "Flying", :power => "3", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Jesper Ejsing", :number => 8, :mana => 4, :power_int => 3, :toughness_int => 2, :power_text => "3", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Auramancer", :edition => "M12", :color => "W", :cost => "2W", :type => "Creature - Human Wizard", :text => "When Auramancer enters the battlefield, you may return target enchantment card from your graveyard to your hand.", :power => "2", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Rebecca Guay", :number => 9, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Benalish Veteran", :edition => "M12", :color => "W", :cost => "2W", :type => "Creature - Human Soldier", :text => "Whenever Benalish Veteran attacks, it gets +1/+1 until end of turn.", :power => "2", :toughness => "2", :flavor => "'One day I will rest and join my comrades in the afterlife, but not while scum like you still sully this world.'", :rarity => "C", :artist => "Steven Belledin", :number => 10, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Celestial Purge", :edition => "M12", :color => "W", :cost => "1W", :type => "Instant", :text => "Exile target black or red permanent.", :power => "", :toughness => "", :flavor => "'They say only the good die young. Obviously, you are one of the exceptions.'

		Card.create({ :name => "Day of Judgment", :edition => "M12", :color => "W", :cost => "2WW", :type => "Sorcery", :text => "Destroy all creatures.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "", :number => 12, :mana => 4, :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Demystify", :edition => "M12", :color => "W", :cost => "W", :type => "Instant", :text => "Destroy target enchantment.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 13, :mana => 1, :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Divine Favor", :edition => "M12", :color => "W", :cost => "1W", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Elite Vanguard", :edition => "M12", :color => "W", :cost => "W", :type => "Creature - Human Soldier", :text => "", :power => "2", :toughness => "1", :flavor => "", :rarity => "U", :artist => "Mark Tedin", :number => 15, :mana => 1, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Gideon Jura", :edition => "M12", :color => "W", :cost => "3WW", :type => "Planeswalker - Gideon", :text => "+2: During target opponent's next turn, creatures that player controls attack Gideon Jura if able.

		Card.create({ :name => "Gideon's Avenger", :edition => "M12", :color => "W", :cost => "1WW", :type => "Creature - Human Soldier", :text => "Whenever a Creature an Opponent controls becomes tapped, put a +1/+1 counter on Gideon's Avenger.", :power => "2", :toughness => "2", :flavor => "'The good don't sit and wait for the evil to act. They Prepare to defend. They prepare to punish'", :rarity => "R", :artist => "Randy Gallegos", :number => 17, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Gideon's Lawkeeper ", :edition => "M12", :color => "W", :cost => "W", :type => "Creature - Human Soldier", :text => "%W, %T: Tap target creature.", :power => "1", :toughness => "1", :flavor => "'The essence of a lawful society is swift deterrence.'", :rarity => "C", :artist => "Steve Prescott", :number => 18, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Grand Abolisher", :edition => "M12", :color => "W", :cost => "WW", :type => "Creature - Human Cleric", :text => "During your turn, your opponents can't cast spells or activate abilities of artifacts, creatures or enchantments.", :power => "2", :toughness => "2", :flavor => "'Your superstitions and mumblings are useless chaff before my righteousness.'", :rarity => "R", :artist => "Eric Deschamps", :number => 19, :mana => 2, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Griffin Rider", :edition => "M12", :color => "W", :cost => "1W", :type => "Creature-Human Knight", :text => "As long as you control a Griffin creature, Griffin Rider has +3/+3 and has flying.", :power => "1", :toughness => "1", :flavor => "After fighting alongside the griffin riders, older knights of Thune learned to admire a mount that could rip an enemy to shreds in seconds.", :rarity => "C", :artist => "", :number => 20, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Griffin Sentinel", :edition => "M12", :color => "W", :cost => "2W", :type => "Creature - Griffin", :text => "Flying

		Card.create({ :name => "Guardians' Pledge", :edition => "M12", :color => "W", :cost => "1WW", :type => "Instant", :text => "White creatures you control get +2/+2 until end of turn.", :power => "", :toughness => "", :flavor => "A dozen fighting for each other are worth a thousand fighting for themselves.", :rarity => "C", :artist => "Christopher Moeller", :number => 22, :mana => 3, :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Honor of the Pure", :edition => "M12", :color => "W", :cost => "1W", :type => "Enchantment", :text => "White creatures you control get +1/+1.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "", :number => 23, :mana => 2, :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Lifelink", :edition => "M12", :color => "W", :cost => "W", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Mesa Enchantress", :edition => "M12", :color => "W", :cost => "1WW", :type => "Creature - Human Druid", :text => "Whenever you cast an enchantment spell, you may draw a card.", :power => "0", :toughness => "2", :flavor => "", :rarity => "R", :artist => "", :number => 25, :mana => 3, :power_int => 0, :toughness_int => 2, :power_text => "0", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Mighty Leap", :edition => "M12", :color => "W", :cost => "1W", :type => "Instant", :text => "Target creature gets +2/+2 and gains flying until end of turn.", :power => "", :toughness => "", :flavor => "'The southern fortress taken by invaders? Heh, sure... when elephants fly.'

		Card.create({ :name => "Oblivion Ring", :edition => "M12", :color => "W", :cost => "2W", :type => "Enchantment", :text => "When Oblivion Ring enters the battlefield, exile another target nonland permanent.

		Card.create({ :name => "Pacifism", :edition => "M12", :color => "W", :cost => "1W", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Peregrine Griffin", :edition => "M12", :color => "W", :cost => "4W", :type => "Creature - Griffin", :text => "Flying

		Card.create({ :name => "Personal Sanctuary", :edition => "M12", :color => "W", :cost => "2W", :type => "Enchantment", :text => "During your turn, prevent all damage that would be dealt to you.", :power => "", :toughness => "", :flavor => "'There is a place deep within my soul where no foe can intrude and no tyrant can conquer.'

		Card.create({ :name => "Pride Guardian", :edition => "M12", :color => "W", :cost => "W", :type => "Creature - Cat Monk", :text => "Defender

		Card.create({ :name => "Roc Egg", :edition => "M12", :color => "W", :cost => "2W", :type => "Creature - Bird", :text => "Defender

		Card.create({ :name => "Serra Angel", :edition => "M12", :color => "W", :cost => "3WW", :type => "Creature - Angel", :text => "Flying

		Card.create({ :name => "Siege Mastodon", :edition => "M12", :color => "W", :cost => "4W", :type => "Creature - Elephant", :text => "", :power => "3", :toughness => "5", :flavor => "Cavotta should have painted it white.", :rarity => "C", :artist => "Matt Cavotta", :number => 34, :mana => 5, :power_int => 3, :toughness_int => 5, :power_text => "3", :toughness_text => "5", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Spirit Mantle", :edition => "M12", :color => "W", :cost => "1W", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Stave Off", :edition => "M12", :color => "W", :cost => "W", :type => "Instant", :text => "Target creature gains protection from the color of your choice until end of turn.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Mark Zug", :number => 36, :mana => 1, :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Stonehorn Dignitary", :edition => "M12", :color => "W", :cost => "3W", :type => "Creature - Rhino Soldier", :text => "When Stonehorn Dignitary enters the battlefield, target opponent skips his or her next combat phase.", :power => "1", :toughness => "4", :flavor => "It did not escape the ambassador's notice that the sound of war drums could also marshal the city to attention.", :rarity => "C", :artist => "", :number => 37, :mana => 4, :power_int => 1, :toughness_int => 4, :power_text => "1", :toughness_text => "4", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Stormfront Pegasus", :edition => "M12", :color => "W", :cost => "1W", :type => "Creature - Pegasus", :text => "Flying", :power => "2", :toughness => "1", :flavor => "", :rarity => "C", :artist => "", :number => 38, :mana => 2, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Sun Titan", :edition => "M12", :color => "W", :cost => "4WW", :type => "Creature - Giant", :text => "Vigilance

		Card.create({ :name => "Timely Reinforcements", :edition => "M12", :color => "W", :cost => "2W", :type => "Sorcery", :text => "If you have less life than an opponent, you gain 6 life. If you control fewer creatures than an opponent, put 3 1/1 white Soldier creature tokens onto the battlefield.", :power => "", :toughness => "", :flavor => "The gods are not always kind, but they do have a soft spot for plucky underdogs.", :rarity => "U", :artist => "Tomasz Jedruszek", :number => 40, :mana => 3, :sort_color => "4W", :sort_set => "2011-07"})

		Card.create({ :name => "Æther Adept", :edition => "M12", :color => "U", :cost => "1UU", :type => "Creature - Human Wizard", :text => "When Æther Adept enters the battlefield, return target creature to its owner's hand.", :power => "2", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Eric Deschamps", :number => 41, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Alluring Siren", :edition => "M12", :color => "U", :cost => "1U", :type => "Creature - Siren", :text => "%T: Target creature an opponent controls attacks you this turn if able.", :power => "1", :toughness => "1", :flavor => "", :rarity => "U", :artist => "Chippy", :number => 42, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Amphin Cutthroat", :edition => "M12", :color => "U", :cost => "3U", :type => "Creature - Salamander Rogue", :text => "", :power => "2", :toughness => "4", :flavor => "'The amphin have long built their society in secret. While surface dwellers squabbled over trivial borders, they patiently expanded, building ammonite temple-caves. Now amphin priests eye the shore, and amphin hunters gird for war.'

		Card.create({ :name => "Aven Fleetwing", :edition => "M12", :color => "U", :cost => "3U", :type => "Creature - Bird Soldier", :text => "Flying

		Card.create({ :name => "Azure Mage", :edition => "M12", :color => "U", :cost => "1U", :type => "Creature - Human Wizard", :text => "%3%U: Draw a card.", :power => "2", :toughness => "1", :flavor => "'We draw our power from the infinite ocean of the mind, where all manner of things can be conceived.'

		Card.create({ :name => "Belltower Sphinx", :edition => "M12", :color => "U", :cost => "4U", :type => "Creature - Sphinx", :text => "Flying

		Card.create({ :name => "Cancel", :edition => "M12", :color => "U", :cost => "1UU", :type => "Instant", :text => "Counter target spell.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "David Palumbo", :number => 47, :mana => 3, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Chasm Drake", :edition => "M12", :color => "U", :cost => "4U", :type => "Creature - Drake", :text => "Flying

		Card.create({ :name => "Coral Merfolk", :edition => "M12", :color => "U", :cost => "1U", :type => "Creature - Merfolk", :text => "", :power => "2", :toughness => "1", :flavor => "", :rarity => "C", :artist => "rk post", :number => 49, :mana => 2, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Divination", :edition => "M12", :color => "U", :cost => "2U", :type => "Sorcery", :text => "Draw two cards.", :power => "", :toughness => "", :flavor => "'The key to unlocking this puzzle is within you.'

		Card.create({ :name => "Djinn of Wishes", :edition => "M12", :color => "U", :cost => "3UU", :type => "Creature - Djinn", :text => "Flying

		Card.create({ :name => "Flashfreeze", :edition => "M12", :color => "U", :cost => "1U", :type => "Instant", :text => "Counter target red or green spell.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "", :number => 52, :mana => 2, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Flight", :edition => "M12", :color => "U", :cost => "U", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Frost Breath", :edition => "M12", :color => "U", :cost => "2U", :type => "Instant", :text => "Tap up to two target creatures. They don't untap during their controller's next untap step.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Mike Bierek", :number => 54, :mana => 3, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Frost Titan", :edition => "M12", :color => "U", :cost => "4UU", :type => "Creature - Giant", :text => "Whenever Frost Titan becomes the target of a spell or ability an opponent controls, counter that spell or ability unless its controller pays %2.

		Card.create({ :name => "Harbor Serpent", :edition => "M12", :color => "U", :cost => "4UU", :type => "Creature - Serpent", :text => "Islandwalk

		Card.create({ :name => "Ice Cage", :edition => "M12", :color => "U", :cost => "1U", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Jace, Memory Adept", :edition => "M12", :color => "U", :cost => "3UU", :type => "Planeswalker - Jace", :text => "+1: Draw a card. Target player puts the top card of his or her library into his or her graveyard.

		Card.create({ :name => "Jace's Archivist", :edition => "M12", :color => "U", :cost => "1UU", :type => "Creature - Vedalken Wizard", :text => "%U, %T: Each player discards his or her hand, then draws cards equal to the greatest number of cards a player discarded this way.", :power => "2", :toughness => "2", :flavor => "", :rarity => "R", :artist => "James Ryan", :number => 59, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Jace's Erasure", :edition => "M12", :color => "U", :cost => "1U", :type => "Enchantment", :text => "Whenever you draw a card, you may have target player put the top card of his or her library into his or her graveyard.", :power => "", :toughness => "", :flavor => "'You should try to clear your mind of idle thoughts. And if you can't, I will.'", :rarity => "C", :artist => "Jason Chan", :number => 60, :mana => 2, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Levitation", :edition => "M12", :color => "U", :cost => "2UU", :type => "Enchantment", :text => "Creatures you control have flying.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Jim Murray", :number => 61, :mana => 4, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Lord of the Unreal", :edition => "M12", :color => "U", :cost => "UU", :type => "Creature - Human Wizard", :text => "Illusion creatures you control get +1/+1 and have hexproof.", :power => "2", :toughness => "2", :flavor => "'The dream does not end until I say so.'", :rarity => "R", :artist => "", :number => 62, :mana => 2, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Mana Leak", :edition => "M12", :color => "U", :cost => "1U", :type => "Instant", :text => "Counter target spell unless its controller pays %3", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 63, :mana => 2, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Master Thief", :edition => "M12", :color => "U", :cost => "2UU", :type => "Creature - Human Rogue", :text => "When Master Thief enters the battlefield, gain control of target artifact for as long as you control Master Thief.", :power => "2", :toughness => "2", :flavor => "Possession is ten-tenths of the law.", :rarity => "U", :artist => "Christopher Moeller", :number => 64, :mana => 4, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Merfolk Looter", :edition => "M12", :color => "U", :cost => "1U", :type => "Creature - Merfolk Rogue", :text => "%T: Draw a card, then discard a card.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "", :number => 65, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Merfolk Mesmerist", :edition => "M12", :color => "U", :cost => "1U", :type => "Creature - Merfolk Wizard", :text => "%U, %T: Target player puts the top two cards of his or her library into his or her graveyard.", :power => "1", :toughness => "2", :flavor => "'Don't you think if I saw a half-woman, half-fish with three glowing eyes, I'd have remembered?'

		Card.create({ :name => "Mind Control", :edition => "M12", :color => "U", :cost => "3UU", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Mind Unbound", :edition => "M12", :color => "U", :cost => "4UU", :type => "Enchantment", :text => "At the beginning of your upkeep, put a lore counter on Mind Unbound, then draw a card for each lore counter on Mind Unbound.", :power => "", :toughness => "", :flavor => "The creations of the hand are confined by reality. The creations of the mind know no such limits.", :rarity => "R", :artist => "Jason Felix", :number => 68, :mana => 6, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Negate", :edition => "M12", :color => "U", :cost => "1U", :type => "Instant", :text => "Counter target noncreature spell.", :power => "", :toughness => "", :flavor => "Masters of the arcane savor a delicious irony. Their study of deep and complex arcana leads to such a simple end: the ability to say merely yes or no.", :rarity => "C", :artist => "Jeremy Jarvis", :number => 69, :mana => 2, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Phantasmal Bear", :edition => "M12", :color => "U", :cost => "U", :type => "Creature - Bear Illusion", :text => "When Phantasmal Bear becomes the target of a spell or ability, sacrifice it.", :power => "2", :toughness => "2", :flavor => "'You know it to be false, but when its claws find you, what you know won't matter much at all.'

		Card.create({ :name => "Phantasmal Dragon", :edition => "M12", :color => "U", :cost => "2UU", :type => "Creature - Dragon Illusion", :text => "Flying

		Card.create({ :name => "Phantasmal Image", :edition => "M12", :color => "U", :cost => "1U", :type => "Creature - Illusion", :text => "You may have Phantasmal Image enter the battlefield as a copy of any creature on the battlefield, except it's an Illusion in addition to its other types and it gains 'When this creature becomes the target of a spell or ability, sacrifice it.'", :power => "0", :toughness => "0", :flavor => "", :rarity => "R", :artist => "Nils Hamm", :number => 72, :mana => 2, :power_int => 0, :toughness_int => 0, :power_text => "0", :toughness_text => "0", :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Ponder", :edition => "M12", :color => "U", :cost => "U", :type => "Sorcery", :text => "Look at the top three cards of your library, then put them back in any order. You may shuffle your library.

		Card.create({ :name => "Redirect", :edition => "M12", :color => "U", :cost => "UU", :type => "Instant", :text => "You may choose new targets for target spell.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "", :number => 74, :mana => 2, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Skywinder Drake", :edition => "M12", :color => "U", :cost => "2U", :type => "Creature - Drake", :text => "Flying

		Card.create({ :name => "Sphinx of Uthuun", :edition => "M12", :color => "U", :cost => "5UU", :type => "Creature - Sphinx", :text => "Flying

		Card.create({ :name => "Time Reversal", :edition => "M12", :color => "U", :cost => "3UU", :type => "Sorcery", :text => "Each player shuffles his or her hand and graveyard into his or her library, then draws seven cards. Exile Time Reversal.", :power => "", :toughness => "", :flavor => "", :rarity => "M", :artist => "", :number => 77, :mana => 5, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Turn to Frog", :edition => "M12", :color => "U", :cost => "1U", :type => "Instant", :text => "Target creature loses all abilities

		Card.create({ :name => "Unsummon", :edition => "M12", :color => "U", :cost => "U", :type => "Instant", :text => "Return target creature to its owner's hand.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Izzy", :number => 79, :mana => 1, :sort_color => "2U", :sort_set => "2011-07"})

		Card.create({ :name => "Visions of Beyond", :edition => "M12", :color => "U", :cost => "U", :type => "Instant", :text => "Draw a card. If a graveyard has twenty or more cards in it, draw three cards instead.", :power => "", :toughness => "", :flavor => "'The past is the foundation for all that exists in the present. We merely reconstruct what our ancestors have already discovered.'

		Card.create({ :name => "Blood Seeker", :edition => "M12", :color => "B", :cost => "1B", :type => "Creature - Vampire Shaman", :text => "Whenever a creature enters the battlefield under an opponent's control, you may have that player lose 1 life.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "", :number => 81, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Bloodlord of Vaasgoth", :edition => "M12", :color => "B", :cost => "3BB", :type => "Creature - Vampire Warrior", :text => "Bloodthirst 3

		Card.create({ :name => "Bloodrage Vampire", :edition => "M12", :color => "B", :cost => "2B", :type => "Creature - Vampire", :text => "Bloodthirst 1", :power => "3", :toughness => "1", :flavor => "", :rarity => "C", :artist => "Steve Prescott", :number => 83, :mana => 3, :power_int => 3, :toughness_int => 1, :power_text => "3", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Brink of Disaster", :edition => "M12", :color => "B", :cost => "2BB", :type => "Enchantment - Aura", :text => "Enchant creature or land

		Card.create({ :name => "Call to the Grave", :edition => "M12", :color => "B", :cost => "4B", :type => "Enchantment", :text => "At the beginning of each player's upkeep, that player sacrifices a non-Zombie creature.

		Card.create({ :name => "Cemetery Reaper", :edition => "M12", :color => "B", :cost => "1BB", :type => "Creature - Zombie", :text => "Other Zombie creatures you control get +1/+1.%2%B, %T: Exile target creature card from a graveyard. Put a 2/2 black Zombie creature token onto the battlefield.", :power => "2", :toughness => "2", :flavor => "", :rarity => "R", :artist => "Dave Allsop", :number => 86, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Child of Night", :edition => "M12", :color => "B", :cost => "1B", :type => "Creature - Vampire", :text => "Lifelink", :power => "2", :toughness => "1", :flavor => "Sins that would be too gruesome in the light of day are made more pleasing in the dark of night.", :rarity => "C", :artist => "Ash Wood", :number => 87, :mana => 2, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Consume Spirit", :edition => "M12", :color => "B", :cost => "X1B", :type => "Sorcery", :text => "Spend only black mana on X.

		Card.create({ :name => "Dark Favor", :edition => "M12", :color => "B", :cost => "1B", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Deathmark", :edition => "M12", :color => "B", :cost => "B", :type => "Sorcery", :text => "Destroy target green or white creature.", :power => "", :toughness => "", :flavor => "There are few ways to escape the deathmark: bargaining with a demon, washing in the fabled waters of youth, and of course, death.", :rarity => "U", :artist => "", :number => 90, :mana => 1, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Devouring Swarm", :edition => "M12", :color => "B", :cost => "1BB", :type => "Creature - Insect", :text => "Flying

		Card.create({ :name => "Diabolic Tutor", :edition => "M12", :color => "B", :cost => "2BB", :type => "Sorcery", :text => "Search your library for a card and put it into your hand. Then shuffle your library.", :power => "", :toughness => "", :flavor => "The wise always have an ear open to the whispers of power.", :rarity => "U", :artist => "Greg Staples", :number => 92, :mana => 4, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Disentomb", :edition => "M12", :color => "B", :cost => "B", :type => "Sorcery", :text => "Return target creature card from your graveyard to your hand.", :power => "", :toughness => "", :flavor => "'Stop complaining. You can rest when you're dead. Oh - sorry.'

		Card.create({ :name => "Distress", :edition => "M12", :color => "B", :cost => "BB", :type => "Sorcery", :text => "Target player reveals his or her hand. You choose a nonland card from it. That player discards that card.", :power => "", :toughness => "", :flavor => "'Of course I'm sure I've gone mad. The little man who crawled out of my eye was quite clear on this.'", :rarity => "C", :artist => "Michael C. Hayes", :number => 94, :mana => 2, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Doom Blade", :edition => "M12", :color => "B", :cost => "1B", :type => "Instant", :text => "Destroy target nonblack creature.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Chippy", :number => 95, :mana => 2, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Drifting Shade", :edition => "M12", :color => "B", :cost => "3B", :type => "Creature - Shade", :text => "Flying%B: Drifting Shade gets +1/+1 until end of turn.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "", :number => 96, :mana => 4, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Duskhunter Bat", :edition => "M12", :color => "B", :cost => "1B", :type => "Creature - Bat", :text => "Bloodthirst 1

		Card.create({ :name => "Grave Titan", :edition => "M12", :color => "B", :cost => "4BB", :type => "Creature - Giant", :text => "Deathtouch

		Card.create({ :name => "Gravedigger", :edition => "M12", :color => "B", :cost => "3B", :type => "Creature - Zombie", :text => "When Gravedigger enters the battlefield, you may return target creature card from your graveyard to your hand.", :power => "2", :toughness => "2", :flavor => "His grim ritual ushers the dead to their new life.", :rarity => "C", :artist => "Dermot Power", :number => 99, :mana => 4, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Hideous Visage", :edition => "M12", :color => "B", :cost => "2B", :type => "Sorcery", :text => "Creatures you control gain intimidate until end of turn.", :power => "", :toughness => "", :flavor => "'Seeing you cower before me is its own reward.'", :rarity => "C", :artist => "Nils Hamm", :number => 100, :mana => 3, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Mind Rot", :edition => "M12", :color => "B", :cost => "2B", :type => "Sorcery", :text => "Target player discards two cards.", :power => "", :toughness => "", :flavor => "Not every thought is a good one.", :rarity => "C", :artist => "Steve Luke", :number => 101, :mana => 3, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Monomania", :edition => "M12", :color => "B", :cost => "3BB", :type => "Sorcery", :text => "Choose target player. That player chooses one card in his or her hand and discards the rest.", :power => "", :toughness => "", :flavor => "“What do vermin cling to when all hope is lost?'

		Card.create({ :name => "Onyx Mage", :edition => "M12", :color => "B", :cost => "1B", :type => "Creature - Human Wizard", :text => "%1%B: Target creature you control gains deathtouch until end of turn.", :power => "2", :toughness => "1", :flavor => "'We wield death and darkness, powers that make lesser mages tremble in fear.'

		Card.create({ :name => "Reassembling Skeleton", :edition => "M12", :color => "B", :cost => "1B", :type => "Creature - Skeleton", :text => "%1%B: Return Reassembling Skeleton from your graveyard to the battlefield tapped.", :power => "1", :toughness => "1", :flavor => "'They may show up with the wrong thigh bone or mandible, but they always show up.'

		Card.create({ :name => "Royal Assassin", :edition => "M12", :color => "B", :cost => "1BB", :type => "Creature - Human Assassin", :text => "%T: Destroy target tapped creature.", :power => "1", :toughness => "1", :flavor => "", :rarity => "R", :artist => "", :number => 105, :mana => 3, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Rune-Scarred Demon", :edition => "M12", :color => "B", :cost => "5BB", :type => "Creature - Demon", :text => "Flying

		Card.create({ :name => "Sengir Vampire ", :edition => "M12", :color => "B", :cost => "3BB", :type => "Creature - Vampire", :text => "Flying

		Card.create({ :name => "Smallpox", :edition => "M12", :color => "B", :cost => "BB", :type => "Sorcery", :text => "Each player loses 1 life, discards a card, sacrifices a creature, then sacrifices a land.", :power => "", :toughness => "", :flavor => "Take away a few things, and a rebellion may ensue. Take away everything, and the oppression will be accepted as fate.", :rarity => "U", :artist => "Ryan Pancoast", :number => 108, :mana => 2, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Sorin Markov", :edition => "M12", :color => "B", :cost => "3BBB", :type => "Planeswalker - Sorin", :text => "+2: Sorin Markov deals 2 damage to target creature or player and you gain 2 life.

		Card.create({ :name => "Sorin's Thirst", :edition => "M12", :color => "B", :cost => "BB", :type => "Instant", :text => "Sorin's Thirst deals 2 damage to target creature and you gain 2 life.", :power => "", :toughness => "", :flavor => "'All your steel won't protect you if your will is weak.'", :rarity => "C", :artist => "Karl Kopinski", :number => 110, :mana => 2, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Sorin's Vengeance", :edition => "M12", :color => "B", :cost => "4BBB", :type => "Sorcery", :text => "Sorin's Vengeance deals 10 damage to target player and you gain 10 life.", :power => "", :toughness => "", :flavor => "'Cherish these last moments. Though your miserable life has come to nothing, I have given it a magnificent end.'", :rarity => "R", :artist => "Jana Schirmer & Johannes Voss", :number => 111, :mana => 7, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Sutured Ghoul", :edition => "M12", :color => "B", :cost => "4BBB", :type => "Creature - Zombie", :text => "Trample

		Card.create({ :name => "Taste of Blood", :edition => "M12", :color => "B", :cost => "B", :type => "Sorcery", :text => "Taste of Blood deals 1 damage to target player and you gain 1 life.", :power => "", :toughness => "", :flavor => "'How blessed are some people, whose lives have no fears, no dreads, to whom sleep is a blessing that comes nightly, and brings nothing but sweet dreams.'

		Card.create({ :name => "Tormented Soul", :edition => "M12", :color => "B", :cost => "B", :type => "Creature - Spirit", :text => "Tormented Soul can't block and is unblockable.", :power => "1", :toughness => "1", :flavor => "Those who raged most bitterly at the world in life are cursed to roam the nether realms in death.", :rarity => "C", :artist => "Karl Kopinski", :number => 114, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Vampire Outcasts", :edition => "M12", :color => "B", :cost => "2BB", :type => "Creature - Vampire", :text => "Bloodthirst 2

		Card.create({ :name => "Vengeful Pharaoh", :edition => "M12", :color => "B", :cost => "2BBB", :type => "Creature - Zombie", :text => "Deathtouch

		Card.create({ :name => "Warpath Ghoul", :edition => "M12", :color => "B", :cost => "2B", :type => "Creature - Zombie", :text => "", :power => "3", :toughness => "2", :flavor => "Ghouls are often found skulking at the fringes of great battles, showing themselves only to snatch the wounded and weak, dragging their victims screaming into the shadows.", :rarity => "C", :artist => "rk post", :number => 117, :mana => 3, :power_int => 3, :toughness_int => 2, :power_text => "3", :toughness_text => "2", :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Wring Flesh", :edition => "M12", :color => "B", :cost => "B", :type => "Instant", :text => "Target creature gets -3/-1 until end of turn.", :power => "", :toughness => "", :flavor => "'Don't blame me. You're the one walking around with skin.'

		Card.create({ :name => "Zombie Goliath", :edition => "M12", :color => "B", :cost => "4B", :type => "Creature - Giant", :text => "", :power => "4", :toughness => "3", :flavor => "'Removing the encumbrance of useless brain tissue grants several advantages: a slight increase in mobility, a response of revulsion and horror from the enemy, and, in the case of large specimens, room for passengers.'

		Card.create({ :name => "Zombie Infestation", :edition => "M12", :color => "B", :cost => "1B", :type => "Enchantment", :text => "Discard two cards: Put a 2/2 black Zombie creature token onto the battlefield.", :power => "", :toughness => "", :flavor => "The nomads' funeral pyres are more practical than ceremonial.", :rarity => "U", :artist => "Thomas M. Baxa", :number => 120, :mana => 2, :sort_color => "3B", :sort_set => "2011-07"})

		Card.create({ :name => "Act of Treason", :edition => "M12", :color => "R", :cost => "2R", :type => "Sorcery", :text => "Gain control of target creature until end of turn. Untap that creature. It gains haste until end of turn.", :power => "", :toughness => "", :flavor => "'Rage courses in every heart, yearning to betray its rational prison.'

		Card.create({ :name => "Blood Ogre", :edition => "M12", :color => "R", :cost => "2R", :type => "Creature - Ogre Warrior", :text => "Bloodthirst 1

		Card.create({ :name => "Bonebreaker Giant", :edition => "M12", :color => "R", :cost => "4R", :type => "Creature - Giant", :text => "", :power => "4", :toughness => "4", :flavor => "One thing's for sure - his fists are harder than your skull.", :rarity => "C", :artist => "Kev Walker", :number => 123, :mana => 5, :power_int => 4, :toughness_int => 4, :power_text => "4", :toughness_text => "4", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Chandra, the Firebrand", :edition => "M12", :color => "R", :cost => "3R", :type => "Planeswalker - Chandra", :text => "+1: Chandra, the Firebrand deals 1 damage to target creature or player.

		Card.create({ :name => "Chandra's Outrage", :edition => "M12", :color => "R", :cost => "2RR", :type => "Instant", :text => "Chandra's Outrage deals 4 damage to target creature and 2 damage to that creature's controller.", :power => "", :toughness => "", :flavor => "Chandra never believed in using her 'inside voice.'", :rarity => "C", :artist => "Christopher Moeller", :number => 125, :mana => 4, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Chandra's Phoenix", :edition => "M12", :color => "R", :cost => "1RR", :type => "Creature - Phoenix", :text => "Flying

		Card.create({ :name => "Circle of Flame", :edition => "M12", :color => "R", :cost => "1R", :type => "Enchantment", :text => "Whenever a creature without flying attacks you or a planeswalker you control, Circle of Flame deals 1 damage to that creature.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "", :number => 127, :mana => 2, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Combust", :edition => "M12", :color => "R", :cost => "1R", :type => "Instant", :text => "Combust can't be countered by spells or abilities.

		Card.create({ :name => "Crimson Mage", :edition => "M12", :color => "R", :cost => "1R", :type => "Creature - Human Shaman", :text => "%R: Target creature you control gains haste until end of turn.", :power => "2", :toughness => "1", :flavor => "'We wield the fires of rage. War is out blood and destruction our birthright.'

		Card.create({ :name => "Fiery Hellhound", :edition => "M12", :color => "R", :cost => "1RR", :type => "Creature - Elemental Hound", :text => "%R: Fiery Hellhound gets +1/+0 until end of turn.", :power => "2", :toughness => "2", :flavor => "There's nothing more exciting than a game of fetch the still-beating heart.", :rarity => "C", :artist => "Ted Galaday", :number => 130, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Fireball", :edition => "M12", :color => "R", :cost => "XR", :type => "Sorcery", :text => "Fireball deals X damage divided evenly, rounded down, among any number of target creatures and/or players.

		Card.create({ :name => "Firebreathing", :edition => "M12", :color => "R", :cost => "R", :type => "Enchantment - Aura", :text => "Enchant creature%R: Enchanted creature gets +1/+0 until end of turn.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 132, :mana => 1, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Flameblast Dragon", :edition => "M12", :color => "R", :cost => "4RR", :type => "Creature - Dragon", :text => "Flying

		Card.create({ :name => "Fling", :edition => "M12", :color => "R", :cost => "1R", :type => "Instant", :text => "As an additional cost to cast Fling, sacrifice a creature.

		Card.create({ :name => "Furyborn Hellkite", :edition => "M12", :color => "R", :cost => "4RRR", :type => "Creature - Dragon", :text => "Bloodthirst 6

		Card.create({ :name => "Goblin Arsonist", :edition => "M12", :color => "R", :cost => "R", :type => "Creature - Goblin Shaman", :text => "When Goblin Arsonist dies, you may have it deal 1 damage to target creature or player. ", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "Wayne Reynolds", :number => 136, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Goblin Bangchuckers", :edition => "M12", :color => "R", :cost => "2RR", :type => "Creature - Goblin Warrior", :text => "%T: Flip a coin. If you win the flip, Goblin Bangchuckers deals 2 damage to target creature or player. If you lose the flip, Goblin Bangchuckers deals 2 damage to itself.", :power => "2", :toughness => "2", :flavor => "", :rarity => "U", :artist => "Wayne Reynolds", :number => 137, :mana => 4, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Goblin Chieftain", :edition => "M12", :color => "R", :cost => "1RR", :type => "Creature - Goblin", :text => "Haste

		Card.create({ :name => "Goblin Fireslinger", :edition => "M12", :color => "R", :cost => "R", :type => "Creature - Goblin Shaman", :text => "%T: Goblin Fireslinger deals 1 damage to target player.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "Pete Venters", :number => 139, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Goblin Grenade", :edition => "M12", :color => "R", :cost => "R", :type => "Sorcery", :text => "As an additional cost to cast Goblin Grenade, sacrifice a Goblin.

		Card.create({ :name => "Goblin Piker", :edition => "M12", :color => "R", :cost => "1R", :type => "Creature - Goblin Warrior", :text => "", :power => "2", :toughness => "1", :flavor => "", :rarity => "C", :artist => "DiTerlizzi", :number => 141, :mana => 2, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Goblin Tunneler", :edition => "M12", :color => "R", :cost => "1R", :type => "Creature - Goblin Rogue", :text => "%T: Target creature with power 2 or less is unblockable this turn.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "Jesper Ejsing", :number => 142, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Goblin War Paint", :edition => "M12", :color => "R", :cost => "1R", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Gorehorn Minotaurs", :edition => "M12", :color => "R", :cost => "2RR", :type => "Creature - Minotaur Warrior", :text => "Bloodthirst 2", :power => "3", :toughness => "3", :flavor => "Some of the twelve minotaur clans of Mirtiin are expert crafters and learned philosophers. Others just like to hit stuff.", :rarity => "C", :artist => "", :number => 144, :mana => 4, :power_int => 3, :toughness_int => 3, :power_text => "3", :toughness_text => "3", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Grim Lavamancer", :edition => "M12", :color => "R", :cost => "R", :type => "Creature - Human Wizard", :text => "%R, %T, Exile two cards from your graveyard: Grim Lavamancer deals 2 damage to target creature or player.", :power => "1", :toughness => "1", :flavor => "", :rarity => "R", :artist => "", :number => 145, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Incinerate", :edition => "M12", :color => "R", :cost => "1R", :type => "Instant", :text => "Incinerate deals 3 damage to target creature or player. A creature dealt damage this way can't be regenerated this turn.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 146, :mana => 2, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Inferno Titan", :edition => "M12", :color => "R", :cost => "4RR", :type => "Creature - Giant", :text => "%R: Inferno Titan gets +1/+0 until end of turn.

		Card.create({ :name => "Lava Axe", :edition => "M12", :color => "R", :cost => "4R", :type => "Sorcery", :text => "Lava Axe deals 5 damage to target player.", :power => "", :toughness => "", :flavor => "It can chop down a redwood in a single stroke. Your sternum isn't going to fare any better.", :rarity => "C", :artist => "Brian Snoddy", :number => 148, :mana => 5, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Manabarbs", :edition => "M12", :color => "R", :cost => "3R", :type => "Enchantment", :text => "Whenever a player taps a land for mana, Manabarbs deals 1 damage to that player.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Jeff Miracola", :number => 149, :mana => 4, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Manic Vandal", :edition => "M12", :color => "R", :cost => "2R", :type => "Creature - Human Warrior", :text => "When Manic Vandal enters the battlefield, destroy target artifact.", :power => "2", :toughness => "2", :flavor => "", :rarity => "C", :artist => "", :number => 150, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Reverberate", :edition => "M12", :color => "R", :cost => "RR", :type => "Instant", :text => "Copy target instant or sorcery spell. You may choose new targets for the copy.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "jD", :number => 151, :mana => 2, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Scrambleverse", :edition => "M12", :color => "R", :cost => "6RR", :type => "Sorcery", :text => "For each nonland permanent, choose a player at random. Then each player gains control of each permanent for which he or she was chosen. Untap those permanents.", :power => "", :toughness => "", :flavor => "Sometimes a little chaos is in order.", :rarity => "R", :artist => "Dan Scott", :number => 152, :mana => 8, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Shock", :edition => "M12", :color => "R", :cost => "R", :type => "Instant", :text => "Shock deals 2 damage to target creature or player.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Jon Foster", :number => 153, :mana => 1, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Slaughter Cry", :edition => "M12", :color => "R", :cost => "2R", :type => "Instant", :text => "Target creature gets +3/+0 and gains first strike until end of turn.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Matt Cavotta", :number => 154, :mana => 3, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Stormblood Berserker", :edition => "M12", :color => "R", :cost => "1R", :type => "Creature - Human Berserker", :text => "Bloodthirst 2

		Card.create({ :name => "Tectonic Rift", :edition => "M12", :color => "R", :cost => "3R", :type => "Sorcery", :text => "Destroy target land. Creatures without flying can't block this turn.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "", :number => 156, :mana => 4, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Volcanic Dragon", :edition => "M12", :color => "R", :cost => "4RR", :type => "Creature - Dragon", :text => "Flying

		Card.create({ :name => "Wall of Torches", :edition => "M12", :color => "R", :cost => "1R", :type => "Creature - Wall", :text => "Defender", :power => "4", :toughness => "1", :flavor => "", :rarity => "C", :artist => "", :number => 158, :mana => 2, :power_int => 4, :toughness_int => 1, :power_text => "4", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Lightning Elemental", :edition => "M12", :color => "R", :cost => "3R", :type => "Creature - Elemental", :text => "Haste", :power => "4", :toughness => "1", :flavor => "'Oh, it's easy enough to kill, but I'm not going anywhere near it.'

		Card.create({ :name => "Warstorm Surge", :edition => "M12", :color => "R", :cost => "5R", :type => "Enchantment", :text => "Whenever a creature enters the battlefield under your control, it deals damage equal to its power to target creature or player.", :power => "", :toughness => "", :flavor => "Listen to the roar! Feel the thunder! The Immersturm shows its approval with every bolt of lightning!", :rarity => "R", :artist => "Raymond Swanland", :number => 160, :mana => 6, :sort_color => "0R", :sort_set => "2011-07"})

		Card.create({ :name => "Acidic Slime", :edition => "M12", :color => "G", :cost => "3GG", :type => "Creature - Ooze", :text => "Deathtouch

		Card.create({ :name => "Arachnus Spinner", :edition => "M12", :color => "G", :cost => "5G", :type => "Creature - Spider", :text => "Reach

		Card.create({ :name => "Arachnus Web", :edition => "M12", :color => "G", :cost => "2G", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Autumn's Veil", :edition => "M12", :color => "G", :cost => "G", :type => "Instant", :text => "Spells you control can't be countered by blue or black spells this turn, and creatures you control can't be the targets of blue or black spells this turn.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "", :number => 164, :mana => 1, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Birds of Paradise", :edition => "M12", :color => "G", :cost => "G", :type => "Creature - Bird", :text => "Flying%T: Add one mana of any color to your mana pool.", :power => "0", :toughness => "1", :flavor => "", :rarity => "R", :artist => "", :number => 165, :mana => 1, :power_int => 0, :toughness_int => 1, :power_text => "0", :toughness_text => "1", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Bountiful Harvest", :edition => "M12", :color => "G", :cost => "4G", :type => "Sorcery", :text => "You gain 1 life for each land you control.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 166, :mana => 5, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Brindle Boar", :edition => "M12", :color => "G", :cost => "2G", :type => "Creature - Boar", :text => "Sacrifice Brindle Boar: You gain 4 life.", :power => "2", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Dave Allsop", :number => 167, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Carnage Wurm", :edition => "M12", :color => "G", :cost => "6G", :type => "Creature - Wurm", :text => "Bloodthirst 3

		Card.create({ :name => "Cudgel Troll", :edition => "M12", :color => "G", :cost => "2GG", :type => "Creature - Troll", :text => "%G: Regenerate Cudgel Troll.", :power => "4", :toughness => "3", :flavor => "", :rarity => "U", :artist => "", :number => 169, :mana => 4, :power_int => 4, :toughness_int => 3, :power_text => "4", :toughness_text => "3", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Doubling Chant", :edition => "M12", :color => "G", :cost => "5G", :type => "Sorcery", :text => "For each creature you control, you may search your library for a creature card with the same name as that creature. Put those cards onto the battlefield, then shuffle your library.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Wayne England", :number => 170, :mana => 6, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Dungrove Elder", :edition => "M12", :color => "G", :cost => "2G", :type => "Creature - Treefolk", :text => "Hexproof (This creature can't be the target of spells or abilities your opponents control.)

		Card.create({ :name => "Elvish Archdruid", :edition => "M12", :color => "G", :cost => "1GG", :type => "Creature - Elf Druid", :text => "Other Elf creatures you control get +1/+1.%T: Add %G to your mana pool for each Elf you control.", :power => "2", :toughness => "2", :flavor => "", :rarity => "R", :artist => "", :number => 172, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Fog", :edition => "M12", :color => "G", :cost => "G", :type => "Instant", :text => "Prevent all combat damage that would be dealt this turn.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Jamie Jones", :number => 173, :mana => 1, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Garruk, Primal Hunter", :edition => "M12", :color => "G", :cost => "2GGG", :type => "Planeswalker - Garruk", :text => "+1: Put a 3/3 green Beast creature token onto the battlefield.

		Card.create({ :name => "Garruk's Companion", :edition => "M12", :color => "G", :cost => "GG", :type => "Creature - Beast", :text => "Trample", :power => "3", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Efreni Palacios", :number => 175, :mana => 2, :power_int => 3, :toughness_int => 2, :power_text => "3", :toughness_text => "2", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Garruk's Horde", :edition => "M12", :color => "G", :cost => "5GG", :type => "Creature - Beast", :text => "Trample

		Card.create({ :name => "Giant Spider", :edition => "M12", :color => "G", :cost => "3G", :type => "Creature - Spider", :text => "Reach (This creature can block creatures with flying.)", :power => "2", :toughness => "4", :flavor => "'The wild is always changing, but it does have a few constants.' --Garruk Wildspeaker", :rarity => "C", :artist => "Randy Gallegos", :number => 177, :mana => 4, :power_int => 2, :toughness_int => 4, :power_text => "2", :toughness_text => "4", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Gladecover Scout", :edition => "M12", :color => "G", :cost => "G", :type => "Creature - Elf Scout", :text => "Hexproof", :power => "1", :toughness => "1", :flavor => "'The forest is my cover and I hold it close. In such a tight embrace there is no room for wickedness.'", :rarity => "C", :artist => "Allen Williams", :number => 178, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Greater Basilisk", :edition => "M12", :color => "G", :cost => "3GG", :type => "Creature - Basilisk", :text => "Deathtouch", :power => "3", :toughness => "5", :flavor => "", :rarity => "C", :artist => "", :number => 179, :mana => 5, :power_int => 3, :toughness_int => 5, :power_text => "3", :toughness_text => "5", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Hunter's Insight", :edition => "M12", :color => "G", :cost => "2G", :type => "Instant", :text => "Choose target creature you control. Whenever that creature deals combat damage to a player or planeswalker this turn, draw that many cards.", :power => "", :toughness => "", :flavor => "'The predator knows the true way of the world. Life is conflict. Only the strong survive.'

		Card.create({ :name => "Jade Mage", :edition => "M12", :color => "G", :cost => "1G", :type => "Creature - Human Shaman", :text => "%2%G: Put a 1/1 green Saproling creature token onto the battlefield.", :power => "2", :toughness => "1", :flavor => "'We are one with the wild things. Life blooms from our fingertips and nature responds to our summons.'

		Card.create({ :name => "Llanowar Elves", :edition => "M12", :color => "G", :cost => "G", :type => "Creature - Elf Druid", :text => "%T: Add %Gto your mana pool.", :power => "1", :toughness => "1", :flavor => "One bone broken for every twig snapped underfoot.

		Card.create({ :name => "Lure", :edition => "M12", :color => "G", :cost => "1GG", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Lurking Crocodile", :edition => "M12", :color => "G", :cost => "2G", :type => "Creature - Crocodile", :text => "Bloodthirst 1

		Card.create({ :name => "Naturalize", :edition => "M12", :color => "G", :cost => "1G", :type => "Instant", :text => "Destroy target artifact or enchantment.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 185, :mana => 2, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Overrun", :edition => "M12", :color => "G", :cost => "2GGG", :type => "Sorcery", :text => "Creatures you control get +3/+3 and gain trample until end of turn.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Carl Critchlow", :number => 186, :mana => 5, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Plummet", :edition => "M12", :color => "G", :cost => "1G", :type => "Instant", :text => "Destroy target creature with flying.", :power => "", :toughness => "", :flavor => "'Let nothing own the skies but the wind.'

		Card.create({ :name => "Primeval Titan", :edition => "M12", :color => "G", :cost => "4GG", :type => "Creature - Giant", :text => "Trample

		Card.create({ :name => "Primordial Hydra", :edition => "M12", :color => "G", :cost => "XGG", :type => "Creature - Hydra", :text => "Primordial Hydra enters the battlefield with X +1/+1 counters on it.

		Card.create({ :name => "Rampant Growth", :edition => "M12", :color => "G", :cost => "1G", :type => "Sorcery", :text => "Search your library for a basic land card and put that card onto the battlefield tapped. Then shuffle your library.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Steven Belledin", :number => 190, :mana => 2, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Reclaim", :edition => "M12", :color => "G", :cost => "G", :type => "Instant", :text => "Put target card from your graveyard on top of your library.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 191, :mana => 1, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Rites of Flourishing", :edition => "M12", :color => "G", :cost => "2G", :type => "Enchantment", :text => "At the beginning of each player's draw step, that player draws an additional card.

		Card.create({ :name => "Runeclaw Bear", :edition => "M12", :color => "G", :cost => "1G", :type => "Creature - Bear", :text => "", :power => "2", :toughness => "2", :flavor => "The only honey it wants is the sweet nectar flowing through your veins.", :rarity => "C", :artist => "Jesper Ejsing", :number => 193, :mana => 2, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Sacred Wolf", :edition => "M12", :color => "G", :cost => "2G", :type => "Creature - Wolf", :text => "Hexproof", :power => "3", :toughness => "1", :flavor => "'I raised my bow, and the wolf stared at me. Under its gaze, my finger would not release the string.'

		Card.create({ :name => "Skinshifter", :edition => "M12", :color => "G", :cost => "1G", :type => "Creature - Human Shaman", :text => "%G: Choose one - Until end of turn, Skinshifter becomes a 4/4 Rhino and gains trample; or until end of turn, Skinshifter becomes a 2/2 Bird and gains flying; or until end of turn, Skinshifter becomes a 0/8 Plant. Activate this ability only once each turn.", :power => "1", :toughness => "1", :flavor => "", :rarity => "R", :artist => "Matt Stewart", :number => 195, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Stampeding Rhino", :edition => "M12", :color => "G", :cost => "4G", :type => "Creature - Rhino", :text => "Trample", :power => "4", :toughness => "4", :flavor => "", :rarity => "C", :artist => "Steven Belledin", :number => 196, :mana => 5, :power_int => 4, :toughness_int => 4, :power_text => "4", :toughness_text => "4", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Stingerfling Spider", :edition => "M12", :color => "G", :cost => "4G", :type => "Creature-Spider", :text => "Reach

		Card.create({ :name => "Titanic Growth", :edition => "M12", :color => "G", :cost => "1G", :type => "Instant", :text => "Target creature gets +4/+4 until end of turn.", :power => "", :toughness => "", :flavor => "The pup looked over the treetops, eyeing the man who just yesterday had kicked her. Suddenly, her hunger was infused with pure delight.", :rarity => "C", :artist => "Ryan Pancoast", :number => 198, :mana => 2, :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Trollhide", :edition => "M12", :color => "G", :cost => "2G", :type => "Enchantment - Aura", :text => "Enchant creature

		Card.create({ :name => "Vastwood Gorger", :edition => "M12", :color => "G", :cost => "5G", :type => "Creature - Wurm", :text => "", :power => "5", :toughness => "6", :flavor => "", :rarity => "C", :artist => "Kieran Yanner", :number => 200, :mana => 6, :power_int => 5, :toughness_int => 6, :power_text => "5", :toughness_text => "6", :sort_color => "1G", :sort_set => "2011-07"})

		Card.create({ :name => "Adaptive Automaton", :edition => "M12", :color => "Art", :cost => "3", :type => "Artifact Creature - Construct", :text => "As Adaptive Automaton enters the battlefield, choose a creature type.

		Card.create({ :name => "Angel's Feather", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact", :text => "Whenever a player casts a white spell, you may gain 1 life.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Alan Pollack", :number => 202, :mana => 2, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Crown of Empires", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact", :text => "%3, %T: Tap target creature. Gain control of that creature instead if you control artifacts named Scepter of Empires and Throne of Empires.", :power => "", :toughness => "", :flavor => "'With this crown, assert your authority.'

		Card.create({ :name => "Crumbling Colossus", :edition => "M12", :color => "Art", :cost => "5", :type => "Artifact Creature - Golem", :text => "Trample

		Card.create({ :name => "Demon's Horn", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact", :text => "Whenever a player casts a black spell, you may gain 1 life.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Alan Pollack", :number => 205, :mana => 2, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Dragon's Claw", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact", :text => "Whenever a player casts a red spell, you may gain 1 life.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Alan Pollack", :number => 206, :mana => 2, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Druidic Satchel", :edition => "M12", :color => "Art", :cost => "3", :type => "Artifact", :text => "%2, %T: Reveal the top card of your library. If it's a creature card, put a 1/1 green Saproling creature token onto the battlefield. If it's a land card, put that card onto the battlefield under your control. If it's a noncreature, nonland card, you gain 2 life.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Matt Stewart", :number => 207, :mana => 3, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Elixir of Immortality", :edition => "M12", :color => "Art", :cost => "1", :type => "Artifact", :text => "%2, %T: You gain 5 life. Shuffle Elixir of Immortality and your graveyard into their owner's library. ", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "", :number => 208, :mana => 1, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Greatsword", :edition => "M12", :color => "Art", :cost => "3", :type => "Artifact - Equipment", :text => "Equipped creature gets +3/+0.

		Card.create({ :name => "Kite Shield", :edition => "M12", :color => "Art", :cost => "0", :type => "Artifact - Equipment", :text => "Equipped creature gets +0/+3.

		Card.create({ :name => "Kraken's Eye", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact", :text => "Whenever a player casts a blue spell, you may gain 1 life.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Alan Pollack", :number => 211, :mana => 2, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Manalith", :edition => "M12", :color => "Art", :cost => "3", :type => "Artifact", :text => "%T: Add one mana of any color to your mana pool.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 212, :mana => 3, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Pentavus", :edition => "M12", :color => "Art", :cost => "7", :type => "Artifact Creature - Construct", :text => "Pentavus enters the battlefield with five +1/+1 counters on it.%1, Remove a +1/+1 counter from Pentavus: Put a 1/1 colorless Pentavite artifact creature token with flying onto the battlefield.%1, Sacrifice a Pentavite: Put a +1/+1 counter on Pentavus.", :power => "0", :toughness => "0", :flavor => "", :rarity => "R", :artist => "Greg Staples", :number => 213, :mana => 7, :power_int => 0, :toughness_int => 0, :power_text => "0", :toughness_text => "0", :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Quicksilver Amulet", :edition => "M12", :color => "Art", :cost => "4", :type => "Artifact", :text => "%4, %T: You may put a creature card from your hand onto the battlefield.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Brad Rigney", :number => 214, :mana => 4, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Rusted Sentinel", :edition => "M12", :color => "Art", :cost => "4", :type => "Artifact Creature - Golem", :text => "Rusted Sentinel enters the battlefield tapped.", :power => "3", :toughness => "4", :flavor => "", :rarity => "U", :artist => "Jason Felix", :number => 215, :mana => 4, :power_int => 3, :toughness_int => 4, :power_text => "3", :toughness_text => "4", :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Scepter of Empires", :edition => "M12", :color => "Art", :cost => "3", :type => "Artifact", :text => "%T: Scepter of Empires deals 1 damage to target player. It deals 3 damage to that player instead if you control artifacts named Crown of Empires and Throne of Empires.", :power => "", :toughness => "", :flavor => "'With this scepter, smite your enemies.'

		Card.create({ :name => "Solemn Simulacrum", :edition => "M12", :color => "Art", :cost => "4", :type => "Artifact Creature - Golem", :text => "When Solemn Simulacrum enters the battlefield, you may search your library for a basic land card and put that card onto the battlefield tapped. If you do, shuffle your library.

		Card.create({ :name => "Sundial of the Infinite", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact", :text => "%1, %T: End the turn. Activate this ability only during your turn.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Vincent Proce", :number => 218, :mana => 2, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Swiftfoot Boots", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact - Equipment", :text => "Equipped creature has hexproof and haste.

		Card.create({ :name => "Thran Golem", :edition => "M12", :color => "Art", :cost => "5", :type => "Artifact Creature - Golem", :text => "As long as Thran Golem is enchanted, it gets +2/+2 and has flying, first strike, and trample.", :power => "3", :toughness => "3", :flavor => "The golems of the ancient Thran still draw power in ways that baffle the ancient artificers today.", :rarity => "U", :artist => "Ron Spears", :number => 220, :mana => 5, :power_int => 3, :toughness_int => 3, :power_text => "3", :toughness_text => "3", :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Throne of Empires", :edition => "M12", :color => "Art", :cost => "4", :type => "Artifact", :text => "%1, %T: Put a 1/1 white Soldier creature token onto the battlefield. Put five of those tokens onto the battlefield instead if you control artifacts named Crown of Empires and Scepter of Empires.", :power => "", :toughness => "", :flavor => "'With this throne, unite your empire.'

		Card.create({ :name => "Worldslayer", :edition => "M12", :color => "Art", :cost => "5", :type => "Artifact - Equipment", :text => "Whenever equipped creature deals combat damage to a player, destroy all permanents other then Worldslayer.

		Card.create({ :name => "Wurm's Tooth", :edition => "M12", :color => "Art", :cost => "2", :type => "Artifact", :text => "Whenever a player casts a green spell, you may gain 1 life.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "", :number => 223, :mana => 2, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Buried Ruin", :edition => "M12", :color => "Lnd", :cost => "", :type => "Land", :text => "%T: Add %1 to your mana pool.%2, %T, Sacrifice Buried Ruin: Return target artifact card from your graveyard to your hand.", :power => "", :toughness => "", :flavor => "History has buried its treasures deep.", :rarity => "U", :artist => "Franz Vohwinkel", :number => 224, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Dragonskull Summit", :edition => "M12", :color => "Lnd", :cost => "", :type => "Land", :text => "Dragonskull Summit enters the battlefield tapped unless you control a Swamp or a Mountain.%T: Add %B or %R to your mana pool.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Jon Foster", :number => 225, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Drowned Catacomb", :edition => "M12", :color => "Lnd", :cost => "", :type => "Land", :text => "Drowned Catacomb enters the battlefield tapped unless you control an Island or a Swamp.%T: Add %U or %B to your mana pool.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Dave Kendall", :number => 226, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Glacial Fortress", :edition => "M12", :color => "Lnd", :cost => "", :type => "Land", :text => "Glacial Fortress enters the battlefield tapped unless you control a Plains or an Island.%T: Add %W or %U to your mana pool.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Franz Vohlwinkel", :number => 227, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Rootbound Crag", :edition => "M12", :color => "Lnd", :cost => "", :type => "Land", :text => "Rootbound Crag enters the battlefield tapped unless you control a Mountain or a Forest.%T: Add %R or %G to your mana pool.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Matt Stewart", :number => 228, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Sunpetal Grove", :edition => "M12", :color => "Lnd", :cost => "", :type => "Land", :text => "Sunpetal Grove enters the battlefield tapped unless you control a Forest or a Plains.%T: Add %G or %W to your mana pool.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Jason Chan", :number => 229, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Plains", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Plains", :text => "[W]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 230, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Plains", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Plains", :text => "[W]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 231, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Plains", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Plains", :text => "[W]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 232, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Plains", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Plains", :text => "[W]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 233, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Island", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Island", :text => "[U]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 234, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Island", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Island", :text => "[U]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 235, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Island", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Island", :text => "[U]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 236, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Island", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Island", :text => "[U]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 237, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Swamp", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Swamp", :text => "[B]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 238, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Swamp", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Swamp", :text => "[B]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 239, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Swamp", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Swamp", :text => "[B]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 240, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Swamp", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Swamp", :text => "[B]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 241, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Mountain", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Mountain", :text => "[R]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 242, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Mountain", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Mountain", :text => "[R]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 243, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Mountain", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Mountain", :text => "[R]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 244, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Mountain", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Mountain", :text => "[R]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 245, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Forest", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Forest", :text => "[G]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 246, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Forest", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Forest", :text => "[G]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 247, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Forest", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Forest", :text => "[G]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 248, :sort_color => "6C", :sort_set => "2011-07"})

		Card.create({ :name => "Forest", :edition => "M12", :color => "Lnd", :cost => "", :type => "Basic Land - Forest", :text => "[G]", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "", :number => 249, :sort_color => "6C", :sort_set => "2011-07"})

	end

	def self.down
	end
end