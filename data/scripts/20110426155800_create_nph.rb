class CreateNph < ActiveRecord::Migration
	def self.up
		scars_block = Block.find_by_name('Scars of Mirrodin')
		CardSet.create({ :name => 'New Phyrexia', :myr_id => 'NPH', :lackey_id => '', :supported_codes=> 'NPH', :block_id =>  scars_block.id, :date => '2011-05'})
		Card.create({ :name => "Karn Liberated", :edition => "NPH", :color => "Art", :cost => "7", :type => "Planeswalker - Karn", :text => "+4: Target player exiles a card from his or her hand.
-3: Exile target permanent.
-14: Restart the game, leaving in exile all non-Aura permanent cards exiled with Karn Liberated. Then put those cards onto the battlefield under your control.", :power => "6", :toughness => "", :flavor => "", :rarity => "M", :artist => "Jason Chan", :number => 1, :mana => 7, :power_int => 6, :power_text => "6", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Apostle's Blessing", :edition => "NPH", :color => "W", :cost => "1W", :type => "Instant", :text => "Target artifact or creature you control gains protection from artifacts or from the color of your choice until end of turn.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Brad Rigney", :number => 2, :mana => 2, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Auriok Survivors", :edition => "NPH", :color => "W", :cost => "5W", :type => "Creature - Human Soldier", :text => "When Auriok Survivors enters the battlefield, you may return target Equipment card from your graveyard to the battlefield. If you do, you may attach it to Auriok Survivors.", :power => "4", :toughness => "6", :flavor => "'We are Mirrodin's children. We will reclaim her  - one scrap at a time, if we have to.'", :rarity => "U", :artist => "James Ryman", :number => 3, :mana => 6, :power_int => 4, :toughness_int => 6, :power_text => "4", :toughness_text => "6", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Blade Splicer", :edition => "NPH", :color => "W", :cost => "2W", :type => "Creature - Human Artificer", :text => "When Blade Splicer enters the battlefield, put a 3/3 colorless Golem artifact creature token onto the battlefield.
Golem creatures you control have first strike.", :power => "1", :toughness => "1", :flavor => "", :rarity => "R", :artist => "Greg Staples", :number => 4, :mana => 3, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Cathedral Membrane", :edition => "NPH", :color => "W", :cost => "1W", :type => "Artifact Creature - Wall", :text => "Defender
When Cathedral Membrane is put into a graveyard from the battlefield during combat, it deals 6 damage to each creature it blocked this combat.", :power => "0", :toughness => "3", :flavor => "", :rarity => "U", :artist => "Richard Whitters", :number => 5, :mana => 2, :power_int => 0, :toughness_int => 3, :power_text => "0", :toughness_text => "3", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Chancellor of the Annex", :edition => "NPH", :color => "W", :cost => "4WWW", :type => "Creature - Angel", :text => "You may reveal this card from your opening hand. If you do, when each opponent casts his or her first spell of the game, counter that spell unless that player pays %1.
Flying
Whenever an opponent casts a spell, counter it unless that player pays %1.", :power => "5", :toughness => "6", :flavor => "", :rarity => "R", :artist => "Min Yum", :number => 6, :mana => 7, :power_int => 5, :toughness_int => 6, :power_text => "5", :toughness_text => "6", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Dispatch", :edition => "NPH", :color => "W", :cost => "W", :type => "Instant", :text => "Tap target creature.
Metalcraft - If you control three or more artifacts, exile that creature.", :power => "", :toughness => "", :flavor => "Venser wondered if it could still be called a teleportation spell if the destination was oblivion.", :rarity => "U", :artist => "Erica Yang", :number => 7, :mana => 1, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Due Respect", :edition => "NPH", :color => "W", :cost => "1W", :type => "Instant", :text => "Permanents enter the battlefield tapped this turn.
Draw a card.", :power => "", :toughness => "", :flavor => "'A display of humility is required of those who still possess such frailties.'
-Elesh Norn, Grand Cenobite", :rarity => "U", :artist => "James Ryman", :number => 8, :mana => 2, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Elesh Norn, Grand Cenobite", :edition => "NPH", :color => "W", :cost => "5WW", :type => "Legendary Creature - Praetor", :text => "Vigilance
Other creatures you control get +2/+2.
Creatures your opponents control get -2/-2.", :power => "4", :toughness => "7", :flavor => "'The Gitaxians whisper among themselves of other worlds. If they exist, we must bring Phyrexia's magnificence to them.'", :rarity => "M", :artist => "Igor Kieryluk", :number => 9, :mana => 7, :power_int => 4, :toughness_int => 7, :power_text => "4", :toughness_text => "7", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Exclusion Ritual", :edition => "NPH", :color => "W", :cost => "4WW", :type => "Enchantment", :text => "Imprint - When Exclusion Ritual enters the battlefield, exile target nonland permanent.
Players can't cast spells with the same name as the exiled card.", :power => "", :toughness => "", :flavor => "'Your desires have become our discretion.'
-Izathel, priest of the Annex'", :rarity => "U", :artist => "Daniel Ljunggren", :number => 10, :mana => 6, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Forced Worship", :edition => "NPH", :color => "W", :cost => "1W", :type => "Enchantment - Aura", :text => "Enchant creature
Enchanted creature can't attack.%2%W: Return Forced Worship to its owner's hand.", :power => "", :toughness => "", :flavor => "Imprisonment teaches revenge. Hobbling teaches resignation.", :rarity => "C", :artist => "Karl Kopinski", :number => 11, :mana => 2, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Inquisitor Exarch", :edition => "NPH", :color => "W", :cost => "WW", :type => "Creature - Cleric", :text => "When Inquisitor Exarch enters the battlefield, choose one - You gain 2 life; or target opponent loses 2 life.", :power => "2", :toughness => "2", :flavor => "'Skin is the prison of the blessed and the stronghold of the heretic.'
-Argent Etchings, plate 64, passage 17", :rarity => "U", :artist => "Igor Kieryluk", :number => 12, :mana => 2, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Lost Leonin", :edition => "NPH", :color => "W", :cost => "1W", :type => "Creature - Cat Soldier", :text => "Infect", :power => "2", :toughness => "1", :flavor => "Mirrans were broken down and rebuilt, made to be loyal servants of the force they had fought.", :rarity => "C", :artist => "Min Yum", :number => 13, :mana => 2, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Loxodon Convert", :edition => "NPH", :color => "W", :cost => "3W", :type => "Creature - Elephant Soldier", :text => "", :power => "4", :toughness => "2", :flavor => "Just one drop of the glistening oil can eventually stain even a soul as stalwart as a loxodon's beyond redemption.", :rarity => "C", :artist => "Adrian Smith", :number => 14, :mana => 4, :power_int => 4, :toughness_int => 2, :power_text => "4", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Marrow Shards", :edition => "NPH", :color => "W", :cost => "W", :type => "Instant", :text => "Marrow Shards deals 1 damage to each attacking creature.", :power => "", :toughness => "", :flavor => "'We are a single entity. Dissenters must be sutured into the Orthodoxy.'
-Elesh Norn, Grand Cenobite", :rarity => "U", :artist => "Raymond Swanland", :number => 15, :mana => 1, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Master Splicer", :edition => "NPH", :color => "W", :cost => "3W", :type => "Creature - Human Artificer", :text => "When Master Splicer enters the battlefield, put a 3/3 colorless Golem artifact creature token onto the battlefield.
Golem creatures you control get +1/+1.", :power => "1", :toughness => "1", :flavor => "With Phyrexia's victory at hand, each sect began perfecting its vision.", :rarity => "U", :artist => "Chippy", :number => 16, :mana => 4, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Norn's Annex", :edition => "NPH", :color => "W", :cost => "3WW", :type => "Artifact", :text => "(%PW may be paid for with either %W or 2 life.)
Creatures can't attack you or a planeswalker you control unless their controller pays %PW for each of those creatures.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "James Paick", :number => 17, :mana => 5, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Phyrexian Unlife", :edition => "NPH", :color => "W", :cost => "2W", :type => "Enchantment", :text => "You don't lose the game for having 0 or less life.
As long as your life total is 0 or less, all damage is dealt to you as though its source had infect.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Jason Chan", :number => 18, :mana => 3, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Porcelain Legionnaire", :edition => "NPH", :color => "W", :cost => "2W", :type => "Artifact Creature - Soldier", :text => "First strike", :power => "3", :toughness => "1", :flavor => "'My new design has lightweight plating specially cultivated from heretics' spare tissues.'
-Izathel, priest of the Annex", :rarity => "C", :artist => "Eric Deschamps", :number => 19, :mana => 3, :power_int => 3, :toughness_int => 1, :power_text => "3", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Puresteel Paladin", :edition => "NPH", :color => "W", :cost => "WW", :type => "Creature - Human Knight", :text => "Whenever an Equipment enters the battlefield under your control, you may draw a card.
Metalcraft - As long as you control 3 or more artifacts, each Equipment you control has equip %0.", :power => "2", :toughness => "2", :flavor => "", :rarity => "R", :artist => "Jason Chan", :number => 20, :mana => 2, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Remember the Fallen", :edition => "NPH", :color => "W", :cost => "2W", :type => "Sorcery", :text => "Choose one or both - Return target creature card from your graveyard to your hand; and/or return target artifact card from your graveyard to your hand.", :power => "", :toughness => "", :flavor => "When the Mirrans had fallen, Planeswalkers carried the burden of remembrance.", :rarity => "C", :artist => "Eric Deschamps", :number => 21, :mana => 3, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Sensor Splicer", :edition => "NPH", :color => "W", :cost => "4W", :type => "Creature - Artificer", :text => "When Sensor Splicer enters the battlefield, put a 3/3 colorless Golem artifact creature token onto the battlefield.
Golem creatures you control have vigilance.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "Izzy", :number => 22, :mana => 5, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Shattered Angel", :edition => "NPH", :color => "W", :cost => "3WW", :type => "Creature - Angel", :text => "Flying
Whenever a land enters the battlefield under an opponent's control, you may gain 3 life.", :power => "3", :toughness => "3", :flavor => "She preaches the blessing of the Machine Orthodoxy.", :rarity => "U", :artist => "Kev Walker", :number => 23, :mana => 5, :power_int => 3, :toughness_int => 3, :power_text => "3", :toughness_text => "3", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Shriek Raptor", :edition => "NPH", :color => "W", :cost => "3WW", :type => "Creature - Bird", :text => "Flying
Infect", :power => "2", :toughness => "3", :flavor => "'That's no glint hawk. The skies have changed for the worse.'
-Ria Ivor, White Sun partisan", :rarity => "C", :artist => "Efrem Palacios", :number => 24, :mana => 5, :power_int => 2, :toughness_int => 3, :power_text => "2", :toughness_text => "3", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Suture Priest", :edition => "NPH", :color => "W", :cost => "1W", :type => "Creature - Cleric", :text => "Whenever another creature enters the battlefield under your control, you may gain 1 life.
Whenever a creature enters the battlefield under an opponent's control, you may have that player lose 1 life.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "Igor Kieryluk", :number => 25, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "War Report", :edition => "NPH", :color => "W", :cost => "3W", :type => "Instant", :text => "You gain life equal to the number of creatures on the battlefield plus the number of artifacts on the battlefield.", :power => "", :toughness => "", :flavor => "Underling Ethu's 263rd report read simply 'Yes, my lord. Overwhelmingly, my lord.' This marked the end of the Mirran-Phyrexian war.", :rarity => "C", :artist => "Mike Bierek", :number => 26, :mana => 4, :sort_color => "4W", :sort_set => "2011-05"})

		Card.create({ :name => "Argent Mutation", :edition => "NPH", :color => "U", :cost => "2U", :type => "Instant", :text => "Target permanent becomes an artifact in addition to its other types until end of turn.
Draw a card.", :power => "", :toughness => "", :flavor => "'My world is corrupted beyond cleansing. I must prevent this from happening to others.'
-Karn", :rarity => "U", :artist => "Jana Schirmer & Johannes Voss", :number => 27, :mana => 3, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Arm with Æther", :edition => "NPH", :color => "U", :cost => "2U", :type => "Sorcery", :text => "Until end of turn, creatures you control gain 'Whenever this creature deals combat damage to an opponent, you may return target creature that player controls to its owner's hand.'", :power => "", :toughness => "", :flavor => "'Anything we can do to hurt the Phyrexian invaders is worth dying for.'", :rarity => "U", :artist => "Austin Hsu", :number => 28, :mana => 3, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Blighted Agent", :edition => "NPH", :color => "U", :cost => "1U", :type => "Creature - Human Rogue", :text => "Infect
Blighted Agent is unblockable.", :power => "1", :toughness => "1", :flavor => "'Urabrask may suspect our surveillance, but he cannot stop it.'
-Avaricta, Gitaxian sective", :rarity => "C", :artist => "Anthony Francisco", :number => 29, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Chained Throatseeker", :edition => "NPH", :color => "U", :cost => "5U", :type => "Creature -  Horror", :text => "Infect
Chained Throatseeker can't attack unless defending player is poisoned.", :power => "5", :toughness => "5", :flavor => "", :rarity => "C", :artist => "Stephan Martiniere", :number => 30, :mana => 6, :power_int => 5, :toughness_int => 5, :power_text => "5", :toughness_text => "5", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Chancellor of the Spires", :edition => "NPH", :color => "U", :cost => "4UUU", :type => "Creature - Sphinx", :text => "You may reveal this card from your opening hand. If you do, at the beginning of the first upkeep, each opponent puts the top seven cards of his or her library into his or her graveyard.
Flying
When Chancellor of the Spires enters the battlefield, you may cast target instant or sorcery card from an opponent's graveyard without paying its mana cost.", :power => "5", :toughness => "7", :flavor => "", :rarity => "R", :artist => "Nils Hamm", :number => 31, :mana => 7, :power_int => 5, :toughness_int => 7, :power_text => "5", :toughness_text => "7", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Corrupted Resolve", :edition => "NPH", :color => "U", :cost => "1U", :type => "Instant", :text => "Counter target spell if its controller is poisoned.", :power => "", :toughness => "", :flavor => "'Flesh is a sickness that infects Phyrexia.'
-Avaricta, Gitaxian sective", :rarity => "U", :artist => "Greg Staples", :number => 32, :mana => 2, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Deceiver Exarch", :edition => "NPH", :color => "U", :cost => "2U", :type => "Creature - Cleric", :text => "Flash
When Deceiver Exarch enters the battlefield, choose one - Untap target permanent you control; or tap target permanent an opponent controls.", :power => "1", :toughness => "4", :flavor => "", :rarity => "U", :artist => "Izzy", :number => 33, :mana => 3, :power_int => 1, :toughness_int => 4, :power_text => "1", :toughness_text => "4", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Defensive Stance", :edition => "NPH", :color => "U", :cost => "U", :type => "Enchantment - Aura", :text => "Enchant creature
Enchanted creature gets -1/+1.", :power => "", :toughness => "", :flavor => "'It isn't for fighting. It's for when the fighting's gone bad.'
-Kara Vrist, Mirran resistance", :rarity => "C", :artist => "Dan Scott", :number => 34, :mana => 1, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Gitaxian Probe", :edition => "NPH", :color => "U", :cost => "U", :type => "Sorcery", :text => "Look at target player's hand.
Draw a card.", :power => "", :toughness => "", :flavor => "'My flesh holds no secrets, monster. The spirit of Mirrodin will fight on.'
-Vy Covalt, Mirran resistance", :rarity => "C", :artist => "Chippy", :number => 35, :mana => 1, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Impaler Shrike", :edition => "NPH", :color => "U", :cost => "2UU", :type => "Creature - Bird", :text => "Flying
When Impaler Shrike deals combat damage to a player, you may sacrifice it. If you do, draw three cards.", :power => "3", :toughness => "1", :flavor => "'Interrogation is an unnecessary step for acquiring information.'
-Politus, Gitaxian morphologist", :rarity => "C", :artist => "Nils Hamm", :number => 36, :mana => 4, :power_int => 3, :toughness_int => 1, :power_text => "3", :toughness_text => "1", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Jin-Gitaxias, Core Augur", :edition => "NPH", :color => "U", :cost => "8UU", :type => "Legendary Creature - Praetor", :text => "Flash
At the beginning of your end step, draw seven cards.
Each opponent's maximum hand size is reduced by seven.", :power => "5", :toughness => "4", :flavor => "'It is not a goal, but a process - the process of creating the perfect Phyrexia.'", :rarity => "M", :artist => "Eric Deschamps", :number => 37, :mana => 10, :power_int => 5, :toughness_int => 4, :power_text => "5", :toughness_text => "4", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Mental Misstep", :edition => "NPH", :color => "U", :cost => "U", :type => "Instant", :text => "Counter target spell with converted mana cost 1.", :power => "", :toughness => "", :flavor => "'Your first mistake was thinking I'd let you live long enough to make a second.'
-Sarnvax, Gitaxian sective", :rarity => "U", :artist => "Erica Yang", :number => 38, :mana => 1, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Mindculling", :edition => "NPH", :color => "U", :cost => "5U", :type => "Sorcery", :text => "You draw two cards and target opponent discards two cards.", :power => "", :toughness => "", :flavor => "'Why infiltrate their strongholds when what we seek resides in such a poorly guarded safe?'
-Malcator, Executor of Synthesis", :rarity => "U", :artist => "Cos Koniotis", :number => 39, :mana => 6, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Numbing Dose", :edition => "NPH", :color => "U", :cost => "3UU", :type => "Enchantment - Aura", :text => "Enchant artifact or creature
Enchanted permanent doesn't untap during its controller's untap step.
At the beginning of the upkeep of enchanted permanent's controller, that player loses 1 life.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Brad Rigney", :number => 40, :mana => 5, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Phyrexian Ingester", :edition => "NPH", :color => "U", :cost => "6U", :type => "Creature - Beast", :text => "Imprint - When Phyrexian Ingester enters the battlefield, you may exile target nontoken creature.
Phyrexian Ingester gets +X/+Y, where X is the exiled creature card's power and Y is its toughness.", :power => "3", :toughness => "3", :flavor => "", :rarity => "R", :artist => "Chris Rahn", :number => 41, :mana => 7, :power_int => 3, :toughness_int => 3, :power_text => "3", :toughness_text => "3", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Phyrexian Metamorph", :edition => "NPH", :color => "U", :cost => "3U", :type => "Artifact Creature - Shapeshifter", :text => "(%PU can be paid with either %U or 2 life.)
You may have Phyrexian Metamorph enter the battlefield as a copy of any artifact or creature on the battlefield, except it's an artifact in addition to its other types.", :power => "0", :toughness => "0", :flavor => "", :rarity => "R", :artist => "Jung Park", :number => 42, :mana => 4, :power_int => 0, :toughness_int => 0, :power_text => "0", :toughness_text => "0", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Psychic Barrier", :edition => "NPH", :color => "U", :cost => "UU", :type => "Instant", :text => "Counter target creature spell. Its controller loses 1 life.", :power => "", :toughness => "", :flavor => "'I tolerate Phyrexians because the dragon requires it. But I have no patience for uninvited guests.'
-Tezzeret", :rarity => "C", :artist => "Dan Scott", :number => 43, :mana => 2, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Psychic Surgery", :edition => "NPH", :color => "U", :cost => "1U", :type => "Enchantment", :text => "Whenever an opponent shuffles his or her library, you may look at the top 2 cards of that library. You may exile one of those cards. Then put the rest on top of that library in any order.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Anthony Francisco", :number => 44, :mana => 2, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Spined Thopter", :edition => "NPH", :color => "U", :cost => "2U", :type => "Artifact Creature - Thopter", :text => "Flying", :power => "2", :toughness => "1", :flavor => "'I appreciate the depravity of noble designs turned to devious ends.'
-Tezzeret", :rarity => "C", :artist => "Pete Venters", :number => 45, :mana => 3, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Spire Monitor", :edition => "NPH", :color => "U", :cost => "4U", :type => "Creature - Drake", :text => "Flash
Flying", :power => "3", :toughness => "3", :flavor => "Each monitor is given an eye for each spire it is to guard.", :rarity => "C", :artist => "Daniel Ljunggren", :number => 46, :mana => 5, :power_int => 3, :toughness_int => 3, :power_text => "3", :toughness_text => "3", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Tezzeret's Gambit", :edition => "NPH", :color => "U", :cost => "3U", :type => "Sorcery", :text => "Draw two cards, then proliferate.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Karl Kopinski", :number => 47, :mana => 4, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Vapor Snag", :edition => "NPH", :color => "U", :cost => "U", :type => "Instant", :text => "Return target creature to its owner's hand. Its controller loses 1 life.", :power => "", :toughness => "", :flavor => "'This creature is inadequate. Send it to the splicers for innovation.'
-Malcator, Executor of Synthesis", :rarity => "C", :artist => "Raymond Swanland", :number => 48, :mana => 1, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Viral Drake", :edition => "NPH", :color => "U", :cost => "3U", :type => "Creature - Drake", :text => "Flying
Infect%3%U: Proliferate.", :power => "1", :toughness => "4", :flavor => "", :rarity => "U", :artist => "Lars Grant-West", :number => 49, :mana => 4, :power_int => 1, :toughness_int => 4, :power_text => "1", :toughness_text => "4", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Wing Splicer", :edition => "NPH", :color => "U", :cost => "3U", :type => "Creature - Human Artificer", :text => "When Wing Splicer enters the battlefield, put a 3/3 colorless Golem artifact creature token onto the battlefield.
Golem creatures you control have flying.", :power => "1", :toughness => "1", :flavor => "", :rarity => "U", :artist => "Kev Walker", :number => 50, :mana => 4, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Xenograft", :edition => "NPH", :color => "U", :cost => "4U", :type => "Enchantment", :text => "As Xenograft enters the battlefield, choose a creature type.
Each creature you control is the chosen type in addition to its other types.", :power => "", :toughness => "", :flavor => "'I despise Vorinclex and his slobberings about 'evolution'. Only I know true progress.'
-Jin-Gitaxias, Core Augur", :rarity => "R", :artist => "Daniel Ljunggren", :number => 51, :mana => 5, :sort_color => "2U", :sort_set => "2011-05"})

		Card.create({ :name => "Blind Zealot", :edition => "NPH", :color => "B", :cost => "1BB", :type => "Creature - Human Cleric", :text => "Intimidate
Whenever Blind Zealot deals combat damage to a player, you may sacrifice it. If you do, destroy target creature that player controls.", :power => "2", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Jana Schirmer & Johannes Voss", :number => 52, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Caress of Phyrexia", :edition => "NPH", :color => "B", :cost => "3BB", :type => "Sorcery", :text => "Target players draws three cards, loses 3 life, and gets three poison counters.", :power => "", :toughness => "", :flavor => "'I am weak. Make...me...ideal.'", :rarity => "U", :artist => "Karl Kopinski", :number => 53, :mana => 5, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Chancellor of the Dross", :edition => "NPH", :color => "B", :cost => "4BBB", :type => "Creature - Vampire", :text => "You may reveal this card from your opening hand. If you do, at the beginning of the first upkeep, each opponent loses 3 life, then you gain life equal to the life lost this way.
Flying, lifelink", :power => "6", :toughness => "6", :flavor => "", :rarity => "R", :artist => "Stephan Martiniere", :number => 54, :mana => 7, :power_int => 6, :toughness_int => 6, :power_text => "6", :toughness_text => "6", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Dementia Bat", :edition => "NPH", :color => "B", :cost => "4B", :type => "Creature - Bat", :text => "Flying%4%B, Sacrifice Dementia Bat: Target player discards two cards.", :power => "2", :toughness => "2", :flavor => "'When terror outweighs all other thoughts, they will understand that I am the true Father of Machines.'
-Azax-Azog, the Demon Thane", :rarity => "C", :artist => "Daarken", :number => 55, :mana => 5, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Despise", :edition => "NPH", :color => "B", :cost => "B", :type => "Sorcery", :text => "Target opponent reveals his or her hand. You choose a creature or planeswalker card from it. That player discards that card.", :power => "", :toughness => "", :flavor => "'Truth is always a weapon in your enemies' hands.'
-Geth, Lord of the Vault", :rarity => "U", :artist => "Terese Nielsen", :number => 56, :mana => 1, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Dismember", :edition => "NPH", :color => "B", :cost => "1BB", :type => "Instant", :text => "Target creature gets -5/-5 until end of turn.", :power => "", :toughness => "", :flavor => "'You serve Phyrexia. Your pieces would better serve Phyrexia elsewhere.'
-Azax-Azog, the Demon Thane", :rarity => "U", :artist => "Terese Nielsen", :number => 57, :mana => 3, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Enslave", :edition => "NPH", :color => "B", :cost => "4BB", :type => "Enchantment - Aura", :text => "Enchant creature
You control enchanted creature.
At the beginning of your upkeep, enchanted creature deals 1 damage to its owner.", :power => "", :toughness => "", :flavor => "Phyrexia extended its command until there was nothing left to take.", :rarity => "U", :artist => "Chris Rahn", :number => 58, :mana => 6, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Entomber Exarch", :edition => "NPH", :color => "B", :cost => "2BB", :type => "Creature - Cleric", :text => "When Entomber Exarch enters the battlefield, choose one - Return target creature card from your graveyard to your hand; or target opponent reveals his or her hand, you choose a noncreature card from it, then that player discards that card.
2/2", :power => "2", :toughness => "2", :flavor => "", :rarity => "U", :artist => "Svetlin Velinov", :number => 59, :mana => 4, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Evil Presence", :edition => "NPH", :color => "B", :cost => "B", :type => "Enchantment - Aura", :text => "Enchant land
Enchanted land is a Swamp.", :power => "", :toughness => "", :flavor => "'The Accorders would lament the transformation of their cherished lands, had they lived to see it.'
-Sheoldred, Whispering One", :rarity => "C", :artist => "Scott Chou", :number => 60, :mana => 1, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Geth's Verdict", :edition => "NPH", :color => "B", :cost => "BB", :type => "Instant", :text => "Target player sacrifices a creature and loses 1 life.", :power => "", :toughness => "", :flavor => "'Everyone should owe you something.'
-Geth, Lord of the Vault", :rarity => "C", :artist => "Whit Brachna", :number => 61, :mana => 2, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Glistening Oil", :edition => "NPH", :color => "B", :cost => "BB", :type => "Enchantment - Aura", :text => "Enchant creature
Enchanted creature has Infect.
At the beginning of your upkeep, put a -1/-1 counter on enchanted creature.
When Glistening Oil is put into a graveyard from the battlefield, return Glistening Oil to its owner's hand.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Steven Belledin", :number => 62, :mana => 2, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Grim Affliction", :edition => "NPH", :color => "B", :cost => "2B", :type => "Instant", :text => "Put a -1/-1 counter on target creature, then proliferate.", :power => "", :toughness => "", :flavor => "Even the small wounds let hope bleed out. ", :rarity => "C", :artist => "Erica Yang", :number => 63, :mana => 3, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Ichor Explosion", :edition => "NPH", :color => "B", :cost => "5BB", :type => "Sorcery", :text => "As an additional cost to cast Ichor Explosion, sacrifice a creature.
All creatures get -X/-X until end of turn, where X is the sacrificed creature's power.", :power => "", :toughness => "", :flavor => "The first explosion that didn't excite goblins.", :rarity => "U", :artist => "James Ryman", :number => 64, :mana => 7, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Life's Finale", :edition => "NPH", :color => "B", :cost => "4BB", :type => "Sorcery", :text => "Destroy all creatures, then search target opponent's library for up to three creature cards and put them into his or her graveyard. Then that player shuffles his or her library.", :power => "", :toughness => "", :flavor => "The feeble resistance of the flesh is over. Phyrexia spreads its shadow over all.", :rarity => "R", :artist => "Svetlin Velinov", :number => 65, :mana => 6, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Mortis Dogs", :edition => "NPH", :color => "B", :cost => "3B", :type => "Creature- Hound", :text => "Whenever Mortis Dogs attacks, it gets +2/+0 until end of turn.
When Mortis Dogs is put into a graveyard from the battlefield, target player loses life equal to its power.", :power => "2", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Chippy", :number => 66, :mana => 4, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Parasitic Implant", :edition => "NPH", :color => "B", :cost => "3B", :type => "Enchantment - Aura", :text => "Enchant creature
At the beginning of your upkeep, enchanted creature's controller sacrifices it and you put a 1/1 colorless Myr artifact creature token onto the battlefield.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Jason Felix", :number => 67, :mana => 4, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Phyrexian Obliterator", :edition => "NPH", :color => "B", :cost => "BBBB", :type => "Creature -  Horror", :text => "Trample
Whenever a source deals damage to Phyrexian Obliterator, that source's controller sacrifices that many permanents.", :power => "5", :toughness => "5", :flavor => "'Behold blessed perfection.'
-Sheoldred, Whispering One", :rarity => "M", :artist => "Todd Lockwood", :number => 68, :mana => 4, :power_int => 5, :toughness_int => 5, :power_text => "5", :toughness_text => "5", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Pith Driller", :edition => "NPH", :color => "B", :cost => "4B", :type => "Artifact Creature - Horror", :text => "When Pith Driller enters the battlefield, put a -1/-1 counter on target creature.", :power => "2", :toughness => "4", :flavor => "After boring up through the crust of Mirrodin, it turned its expertise upon the surface dwellers.", :rarity => "C", :artist => "Nils Hamm", :number => 69, :mana => 5, :power_int => 2, :toughness_int => 4, :power_text => "2", :toughness_text => "4", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Postmortem Lunge", :edition => "NPH", :color => "B", :cost => "XB", :type => "Sorcery", :text => "Return target creature card with converted mana cost X from your graveyard to the battlefield. It gains haste. Exile it at the beginning of the next end step.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Daarken", :number => 70, :mana => 2, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Praetor's Grasp", :edition => "NPH", :color => "B", :cost => "1BB", :type => "Sorcery", :text => "Search target opponent's library for a card and exile it face down, then that player shuffles his or her library. As long as it remains exiled, you may look at it and cast it as though it were in your hand.", :power => "", :toughness => "", :flavor => "Sheoldred weaves every thread of information into a noose to hang her enemies.", :rarity => "R", :artist => "Steve Argyle", :number => 71, :mana => 3, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Reaper of Sheoldred", :edition => "NPH", :color => "B", :cost => "4B", :type => "Creature -  Horror", :text => "Infect
Whenever a source deals damage to Reaper of Sheoldred, that source's controller gets a poison counter.", :power => "2", :toughness => "5", :flavor => "", :rarity => "U", :artist => "Stephan Martiniere", :number => 72, :mana => 5, :power_int => 2, :toughness_int => 5, :power_text => "2", :toughness_text => "5", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Sheoldred, Whispering One", :edition => "NPH", :color => "B", :cost => "5BB", :type => "Legendary Creature - Praetor", :text => "Swampwalk
At the beginning of your upkeep, return target creature card from your graveyard to the battlefield.
At the beginning of each opponent's upkeep, that player sacrifices a creature.", :power => "6", :toughness => "6", :flavor => "", :rarity => "M", :artist => "Jana Schirmer & Johannes Voss", :number => 73, :mana => 7, :power_int => 6, :toughness_int => 6, :power_text => "6", :toughness_text => "6", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Surgical Extraction", :edition => "NPH", :color => "B", :cost => "B", :type => "Instant", :text => "(%PB can be paid with either %B or 2 life.)
Choose target card in a graveyard other than a basic land card. Search its owner's graveyard, hand, and library for all cards with the same name as that card and exile them. Then that player shuffles his or her library.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Greg Staples", :number => 74, :mana => 1, :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Toxic Nim", :edition => "NPH", :color => "B", :cost => "4BB", :type => "Creature - Zombie", :text => "Infect%B: Regenerate Toxic Nim.", :power => "4", :toughness => "1", :flavor => "The nim have become roving killers marshaled by whichever thane holds tenuous leadership.", :rarity => "C", :artist => "Karl Kopinski", :number => 75, :mana => 6, :power_int => 4, :toughness_int => 1, :power_text => "4", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Vault Skirge", :edition => "NPH", :color => "B", :cost => "1B", :type => "Artifact Creature - Imp", :text => "Flying
Lifelink", :power => "1", :toughness => "1", :flavor => "From the remnants of the dead, Geth forged a swarm to safeguard his throne.", :rarity => "C", :artist => "Brad Rigney", :number => 76, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Whispering Specter", :edition => "NPH", :color => "B", :cost => "1BB", :type => "Creature - Specter", :text => "Flying
Infect
Whenever Whispering Specter deals combat damage to a player, you may sacrifice it. If you do, that player discards a card for each poison counter he or she has.", :power => "1", :toughness => "1", :flavor => "", :rarity => "U", :artist => "Jason Felix", :number => 77, :mana => 3, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "3B", :sort_set => "2011-05"})

		Card.create({ :name => "Act of Aggression", :edition => "NPH", :color => "R", :cost => "3RR", :type => "Instant", :text => "Gain control of target creature an opponent controls until end of turn. Untap that creature. It gains haste until end of turn.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Whit Brachna", :number => 78, :mana => 5, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Artillerize", :edition => "NPH", :color => "R", :cost => "3R", :type => "Instant", :text => "As an additional cost to cast Artillerize, sacrifice an artifact or creature.
Artillerize deals 5 damage to target creature or player.", :power => "", :toughness => "", :flavor => "Phyrexian or Mirran, most goblins stick to the job they know best.", :rarity => "C", :artist => "Johann Bodin", :number => 79, :mana => 4, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Bludgeon Brawl", :edition => "NPH", :color => "R", :cost => "2R", :type => "Enchantment", :text => "Each noncreature, non-Equipment artifact is an Equipment with equip %X and 'Equipped creature gets +X/+0,' where X is that artifact's converted mana cost.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Kev Walker", :number => 80, :mana => 3, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Chancellor of the Forge", :edition => "NPH", :color => "R", :cost => "4RRR", :type => "Creature - Giant", :text => "You may reveal this card from your opening hand. If you do, at the beginning of the first upkeep, put a 1/1 red Goblin creature token with haste onto the battlefield.
When Chancellor of the Furnace enters the battlefield, put X 1/1 red Goblin creatures with haste onto the battlefield, where X is the number of creatures you control.", :power => "5", :toughness => "5", :flavor => "", :rarity => "R", :artist => "Chippy", :number => 81, :mana => 7, :power_int => 5, :toughness_int => 5, :power_text => "5", :toughness_text => "5", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Fallen Ferromancer", :edition => "NPH", :color => "R", :cost => "3R", :type => "Creature - Human Shaman", :text => "Infect%1%R, %T: Fallen Ferromancer deals 1 damage to target creature or player.", :power => "1", :toughness => "1", :flavor => "", :rarity => "U", :artist => "David Rapoza", :number => 82, :mana => 4, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Flameborn Viron", :edition => "NPH", :color => "R", :cost => "4RR", :type => "Creature - Insect", :text => "", :power => "6", :toughness => "4", :flavor => "'Large or small, all will toil for the Great Work.'
-Decree of Urabrask", :rarity => "C", :artist => "Svetlin Velinov", :number => 83, :mana => 6, :power_int => 6, :toughness_int => 4, :power_text => "6", :toughness_text => "4", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Furnace Scamp", :edition => "NPH", :color => "R", :cost => "R", :type => "Creature - Beast", :text => "Whenever Furnace Scamp deals combat damage to a player, you may sacrifice it. If you do, Furnace Scamp deals 3 damage to that player.", :power => "1", :toughness => "1", :flavor => "Born of the core, and dying to stoke it.", :rarity => "C", :artist => "Karl Kopinski", :number => 84, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Geosurge", :edition => "NPH", :color => "R", :cost => "RRRR", :type => "Sorcery", :text => "Add %R%R%R%R%R%R%R to your mana pool. Spend this mana only to cast artifact or creature spells.", :power => "", :toughness => "", :flavor => "'The mountains have been corrupted. Otherwise, they would not lend me their fire so easily.'
-Koth of the Hammer", :rarity => "U", :artist => "Igor Kieryluk", :number => 85, :mana => 4, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Gut Shot", :edition => "NPH", :color => "R", :cost => "R", :type => "Instant", :text => "Gut Shot deals 1 damage to target creature or player.", :power => "", :toughness => "", :flavor => "'Down here, we have a more pointed version of the scriptures.'
-Urabrask's enforcer", :rarity => "U", :artist => "Greg Staples", :number => 86, :mana => 1, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Invader Parasite", :edition => "NPH", :color => "R", :cost => "3RR", :type => "Creature - Insect", :text => "Imprint - When Invader Parasite enters the battlefield, exile target land.
Whenever a land with the same name as the exiled card enters the battlefield under an opponent's control, Invader Parasite deals 2 damage to that player.", :power => "3", :toughness => "2", :flavor => "", :rarity => "R", :artist => "Volkan Baga", :number => 87, :mana => 5, :power_int => 3, :toughness_int => 2, :power_text => "3", :toughness_text => "2", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Moltensteel Dragon", :edition => "NPH", :color => "R", :cost => "4RR", :type => "Artifact Creature - Dragon", :text => "Flying%PR: Moltensteel Dragon gets +1/+0 until end of turn.", :power => "4", :toughness => "4", :flavor => "An apocalypse in dragon form.", :rarity => "R", :artist => "James Ryman", :number => 88, :mana => 6, :power_int => 4, :toughness_int => 4, :power_text => "4", :toughness_text => "4", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Ogre Menial", :edition => "NPH", :color => "R", :cost => "3R", :type => "Creature - Ogre", :text => "Infect%R: Ogre Menial gets +1/+0 until end of turn.", :power => "0", :toughness => "4", :flavor => "", :rarity => "C", :artist => "David Rapoza", :number => 89, :mana => 4, :power_int => 0, :toughness_int => 4, :power_text => "0", :toughness_text => "4", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Priest of Urabrask", :edition => "NPH", :color => "R", :cost => "2R", :type => "Creature - Human Cleric", :text => "When Priest of Urabrask enters the battlefield, add %R%R%R to your mana pool.", :power => "2", :toughness => "1", :flavor => "Even in New Phyrexia, red mana sparks glimmers of individualism, passion, and freedom.", :rarity => "U", :artist => "Kev Walker", :number => 90, :mana => 3, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Rage Extractor", :edition => "NPH", :color => "R", :cost => "4R", :type => "Artifact", :text => "Whenever you cast a spell with ϕ in its mana cost, Rage Extractor deals damage equal to that spell's converted mana cost to target creature or player.", :power => "", :toughness => "", :flavor => "New Phyrexia is an engine that both consumes and creates malice.", :rarity => "U", :artist => "Raymond Swanland", :number => 91, :mana => 5, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Razor Swine", :edition => "NPH", :color => "R", :cost => "2R", :type => "Creature - Boar", :text => "First strike
Infect", :power => "2", :toughness => "1", :flavor => "'They aren't helping the forges. Send them to the surface.'
-Furnace boss, sector 12", :rarity => "C", :artist => "Dave Allsop", :number => 92, :mana => 3, :power_int => 2, :toughness_int => 1, :power_text => "2", :toughness_text => "1", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Ruthless Invasion", :edition => "NPH", :color => "R", :cost => "3R", :type => "Sorcery", :text => "Nonartifact creatures can't block this turn.", :power => "", :toughness => "", :flavor => "'For the survival of our people, every conflict must now end in retreat.'
-Pythor, Mirran resistance", :rarity => "C", :artist => "Svetlin Velinov", :number => 93, :mana => 4, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Scrapyard Salvo", :edition => "NPH", :color => "R", :cost => "1RR", :type => "Sorcery", :text => "Scrapyard Salvo deals damage to target player equal to the number of artifact cards in your graveyard.", :power => "", :toughness => "", :flavor => "'Squealstokers! Build me a glorious pile of Mirran metal. Then add yourselves to the pile.'
-Furnace boss, sector 11", :rarity => "C", :artist => "Austin Hsu", :number => 94, :mana => 3, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Slag Fiend", :edition => "NPH", :color => "R", :cost => "R", :type => "Creature - Construct", :text => "Slag Fiend's power and toughness are each equal to the number of artifact cards in all graveyards.", :power => "*", :toughness => "*", :flavor => "'Seal the furnace vents. Admit no others. We'll tend our forges without their tainted ways.'
-Decree of Urabrask", :rarity => "R", :artist => "Mike Bierek", :number => 95, :mana => 1, :power_int => 99, :toughness_int => 99, :power_text => "*", :toughness_text => "*", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Slash Panther", :edition => "NPH", :color => "R", :cost => "4R", :type => "Artifact Creature - Cat", :text => "(%PR can be paid with either %R or 2 life.)
Haste", :power => "4", :toughness => "2", :flavor => "It runs an endless circuit along the roads of the soon-to-be-forgotten Mirran civilisation.", :rarity => "C", :artist => "Matt Stewart", :number => 96, :mana => 5, :power_int => 4, :toughness_int => 2, :power_text => "4", :toughness_text => "2", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Tormentor Exarch", :edition => "NPH", :color => "R", :cost => "3R", :type => "Creature - Cleric", :text => "When Tormentor Exarch enters the battlefield, choose one - Target creature gets +2/+0 until end of turn; or target creature gets -0/-2 until end of turn.", :power => "2", :toughness => "2", :flavor => "'Tend the molten slag, or be the molten slag.'
-Urabrask's enforcer", :rarity => "U", :artist => "Brad Rigney", :number => 97, :mana => 4, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Urabrask the Hidden", :edition => "NPH", :color => "R", :cost => "3RR", :type => "Legendary Creature - Praetor", :text => "Creatures you control have Haste.
Creatures your opponents control enter the battlefield tapped.", :power => "4", :toughness => "4", :flavor => "", :rarity => "M", :artist => "Brad Righey", :number => 98, :mana => 5, :power_int => 4, :toughness_int => 4, :power_text => "4", :toughness_text => "4", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Victorious Destruction", :edition => "NPH", :color => "R", :cost => "4R", :type => "Sorcery", :text => "Destroy target artifact or land. Its controller loses 1 life.", :power => "", :toughness => "", :flavor => "'The refugees look at these structures with hope. We must relieve them of this burden.'
-Juex, Tormentor Exarch", :rarity => "C", :artist => "Jung Park", :number => 99, :mana => 5, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Volt Charge", :edition => "NPH", :color => "R", :cost => "2R", :type => "Instant", :text => "Volt Charge deals 3 damage to target creature or player. Proliferate.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Jana Schirmer & Johannes Voss", :number => 100, :mana => 3, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Vulshok Refugee", :edition => "NPH", :color => "R", :cost => "1RR", :type => "Creature - Human Warrior", :text => "Protection from red", :power => "3", :toughness => "2", :flavor => "'I will carve my people's vengeance on the face of Phyrexia.'", :rarity => "U", :artist => "Wayne Reynolds", :number => 101, :mana => 3, :power_int => 3, :toughness_int => 2, :power_text => "3", :toughness_text => "2", :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Whipflare", :edition => "NPH", :color => "R", :cost => "1R", :type => "Sorcery", :text => "Whipflare deals 2 damage to each nonartifact creature.", :power => "", :toughness => "", :flavor => "The slag-workers wasted no time in creating their own flare pulses to cleanse the area of the incompleat.", :rarity => "U", :artist => "Johann Bodin", :number => 102, :mana => 2, :sort_color => "0R", :sort_set => "2011-05"})

		Card.create({ :name => "Beast Within", :edition => "NPH", :color => "G", :cost => "2G", :type => "Instant", :text => "Destroy target permanent. Its controller puts a 3/3 green Best creature token onto the battlefield.", :power => "", :toughness => "", :flavor => "'Kill the weak so they can't drag the strong down to their level. This is true compassion.'
-Benzir, archdruid of Temple Might", :rarity => "U", :artist => "Dave Allsop", :number => 103, :mana => 3, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Birthing Pod", :edition => "NPH", :color => "G", :cost => "3G", :type => "Artifact", :text => "(%PG may be paid for with either %G or 2 life.)%1%PG, %T, Sacrifice a creature: Search your library for a creature card with converted mana cost equal to 1 plus the sacrificed creature's converted mana cost, put it onto the battlefield, then shuffle your library. Activate this ability only any time you could cast a sorcery.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Daarken", :number => 104, :mana => 4, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Brutalizer Exarch", :edition => "NPH", :color => "G", :cost => "5G", :type => "Creature - Cleric", :text => "When Brutalizer Exarch enters the battlefield, choose one - Search your library for a creature card, reveal it, then shuffle your library and put that card on top of it; or put target noncreature permanent on the bottom of its owner's library.", :power => "3", :toughness => "3", :flavor => "", :rarity => "U", :artist => "Mark Zug", :number => 105, :mana => 6, :power_int => 3, :toughness_int => 3, :power_text => "3", :toughness_text => "3", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Chancellor of the Tangle", :edition => "NPH", :color => "G", :cost => "4GGG", :type => "Creature - Beast", :text => "You may reveal this card from your opening hand. If you do, at the beginning of your first main phase, add %G to your mana pool.
Vigilance, reach", :power => "6", :toughness => "7", :flavor => "", :rarity => "R", :artist => "Steve Prescott", :number => 106, :mana => 7, :power_int => 6, :toughness_int => 7, :power_text => "6", :toughness_text => "7", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Corrosive Gale", :edition => "NPH", :color => "G", :cost => "XG", :type => "Sorcery", :text => "Corrosive Gale deals X damage to each creature with flying.", :power => "", :toughness => "", :flavor => "'Wipe Sheoldred's spies from the sky. She'll see the result of our vision soon enough.'
-Glissa", :rarity => "U", :artist => "Dan Scott", :number => 107, :mana => 2, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Death-Hood Cobra", :edition => "NPH", :color => "G", :cost => "1G", :type => "Creature - Snake", :text => "%1%G: Death-Hood Cobra gains reach until end of turn.%1%G: Death-Hood Cobra gains deathtouch until end of turn.", :power => "2", :toughness => "2", :flavor => "", :rarity => "C", :artist => "Jason Felix", :number => 108, :mana => 2, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Fresh Meat", :edition => "NPH", :color => "G", :cost => "3G", :type => "Instant", :text => "Put a 3/3 green Beast creature token onto the battlefield for each creature put into your graveyard from the battlefield this turn.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Dave Allsop", :number => 109, :mana => 4, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Glissa's Scorn", :edition => "NPH", :color => "G", :cost => "1G", :type => "Instant", :text => "Destroy target artifact. Its controller lose 1 life.", :power => "", :toughness => "", :flavor => "'If it were fit to survive, it wouldn't have been so easily put down.'
-Glissa", :rarity => "C", :artist => "Nils Hamm", :number => 110, :mana => 2, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Glistener Elf", :edition => "NPH", :color => "G", :cost => "G", :type => "Creature - Elf Warrior", :text => "Infect", :power => "1", :toughness => "1", :flavor => "'Beg me for life, and I will fill you with the glory of Phyrexian perfection.'", :rarity => "C", :artist => "Steve Argyle", :number => 111, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Greenhilt Trainee", :edition => "NPH", :color => "G", :cost => "3G", :type => "Creature - Elf Warrior", :text => "%T: Target creatures gets +4/+4 until end of turn. Activate this ability only if Greenhilt Trainee's power is 4 or greater.", :power => "2", :toughness => "3", :flavor => "'Our ancestors adapted to this world of metal. Just as they did, we will adapt to this world of evil.'", :rarity => "U", :artist => "Chris Rahn", :number => 112, :mana => 4, :power_int => 2, :toughness_int => 3, :power_text => "2", :toughness_text => "3", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Leeching Bite", :edition => "NPH", :color => "G", :cost => "1G", :type => "Instant", :text => "Target creature gets +1/+1 until end of turn. Another target creature gets -1/-1 until end of turn.", :power => "", :toughness => "", :flavor => "A substantial portion of Vorinclex's forces became fuel for the rest.", :rarity => "C", :artist => "Cos Koniotis", :number => 113, :mana => 2, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Maul Splicer", :edition => "NPH", :color => "G", :cost => "6G", :type => "Creature - Human Artificer", :text => "When Maul Splicer enters the battlefield, put two 3/3 colorless Golem artifact creature tokens onto the battlefield.
Golem creatures you control have trample.", :power => "1", :toughness => "1", :flavor => "", :rarity => "C", :artist => "Jason Chan", :number => 114, :mana => 7, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Melira, Sylvok Outcast", :edition => "NPH", :color => "G", :cost => "1G", :type => "Legendary Creature - Human Scout ", :text => "You can't get poison counters.
Creatures you control can't have -1/-1 counters placed on them.
Creatures your opponents control lose infect.", :power => "2", :toughness => "2", :flavor => "Once a pariah, now Mirrodin's greatest hope.", :rarity => "R", :artist => "Min Yum", :number => 115, :mana => 2, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Mutagenic Growth", :edition => "NPH", :color => "G", :cost => "G", :type => "Instant", :text => "(%PG can be paid with either %G or 2 life.)
Target creature gets +2/+2 until end of turn.", :power => "", :toughness => "", :flavor => "'Sympathy is for weaklings. Whoever survives, wins.'
-Benzir, archdruid of Temple Might", :rarity => "C", :artist => "Dave Kendall", :number => 116, :mana => 1, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Mycosynth Fiend ", :edition => "NPH", :color => "G", :cost => "2G", :type => "Creature - Horror ", :text => "Mycosynth Fiend gets +1/+1 for each poison counter your opponents have.", :power => "2", :toughness => "2", :flavor => "'I wish I could take credit for it, but nature progresses on its own, just the way it should.'
-Vorinclex, Voice of Hunger", :rarity => "U", :artist => "Kev Walker", :number => 117, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Noxious Revival ", :edition => "NPH", :color => "G", :cost => "G", :type => "Instant", :text => "Put target card from a graveyard on top of its owner's library.", :power => "", :toughness => "", :flavor => "'Dead or alive, my creations are stronger than Jin-Gitaxias's septic minions.'
-Vorinclex, Voice of Hunger", :rarity => "U", :artist => "Matt Stewart", :number => 118, :mana => 1, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Phyrexian Swarmlord", :edition => "NPH", :color => "G", :cost => "4GG", :type => "Creature - Insect Horror", :text => "Infect
At the beginning of your upkeep, put a 1/1 green Insect creature token with infect onto the battlefield for each poison counter your opponents have.", :power => "4", :toughness => "4", :flavor => "", :rarity => "R", :artist => "Svetlin Velinov", :number => 119, :mana => 6, :power_int => 4, :toughness_int => 4, :power_text => "4", :toughness_text => "4", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Rotted Hystrix", :edition => "NPH", :color => "G", :cost => "4G", :type => "Creature - Beast", :text => "", :power => "3", :toughness => "6", :flavor => "Vorinclex had no grand plan. The oil did its own work, evolving creatures into worthy predators.", :rarity => "C", :artist => "Dave Allsop", :number => 120, :mana => 5, :power_int => 3, :toughness_int => 6, :power_text => "3", :toughness_text => "6", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Spinebiter", :edition => "NPH", :color => "G", :cost => "4GG", :type => "Creature - Beast", :text => "Infect
You may have Spinebiter assign its combat damage as though it weren't blocked.", :power => "3", :toughness => "4", :flavor => "", :rarity => "U", :artist => "Jaime Jones", :number => 121, :mana => 6, :power_int => 3, :toughness_int => 4, :power_text => "3", :toughness_text => "4", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Thundering Tanadon ", :edition => "NPH", :color => "G", :cost => "4GG", :type => "Artifact Creature - Beast", :text => "Trample", :power => "5", :toughness => "4", :flavor => "'We do not need beakers and vials to test our predators.'
-Vorinclex, Voice of Hunger", :rarity => "C", :artist => "Dan Scott", :number => 122, :mana => 6, :power_int => 5, :toughness_int => 4, :power_text => "5", :toughness_text => "4", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Triumph of the Hordes ", :edition => "NPH", :color => "G", :cost => "2GG", :type => "Sorcery", :text => "Until end of turn, creatures you control get +1/+1 and gain trample and infect.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Izzy", :number => 123, :mana => 4, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Viridian Betrayers ", :edition => "NPH", :color => "G", :cost => "1GG", :type => "Creature - Elf Warrior", :text => "Viridian Betrayers has infect as long as an opponent is poisoned.", :power => "3", :toughness => "1", :flavor => "To secure a place in Phyrexia's ranks, they hunted their surviving kin.", :rarity => "C", :artist => "Karl Kopinski", :number => 124, :mana => 3, :power_int => 3, :toughness_int => 1, :power_text => "3", :toughness_text => "1", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Viridian Harvest", :edition => "NPH", :color => "G", :cost => "G", :type => "Enchantment - Aura", :text => "Enchant artifact
When enchanted artifact is put into a graveyard, you gain 6 life.", :power => "", :toughness => "", :flavor => "'In the midst of horror beyond imagining, I still see things that lift my heart.'
-Ezuri", :rarity => "C", :artist => "Johann Bodin", :number => 125, :mana => 1, :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Vital Splicer ", :edition => "NPH", :color => "G", :cost => "3G", :type => "Creature - Human Artificer", :text => "When Vital Splicer enters the battlefield, put a 3/3 colorless Golem artifact creature token onto the battlefield.%1: Regenerate target Golem you control.", :power => "1", :toughness => "1", :flavor => "'For every one that falls, ten shall rise. The revelation of New Phyrexia is at hand.'
-Vorinclex, Voice of Hunger", :rarity => "U", :artist => "Daarken", :number => 126, :mana => 4, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Vorinclex, Voice of Hunger ", :edition => "NPH", :color => "G", :cost => "6GG", :type => "Legendary Creature - Praetor", :text => "Trample
Whenever you tap a land for mana, add one mana to your mana pool of any type that land produced.
Whenever an opponent taps a land for mana, that land doesn't untap during its controller's next untap step.", :power => "7", :toughness => "6", :flavor => "", :rarity => "M", :artist => "Karl Kopinski", :number => 127, :mana => 8, :power_int => 7, :toughness_int => 6, :power_text => "7", :toughness_text => "6", :sort_color => "1G", :sort_set => "2011-05"})

		Card.create({ :name => "Jor Kadeen, the Prevailer", :edition => "NPH", :color => "W/R", :cost => "3RW", :type => "Legendary Creature - Human Warrior", :text => "First strike
Metalcraft - Creatures you control get +3/+0 as long as you control three or more artifacts.", :power => "5", :toughness => "4", :flavor => "'As long as my hand holds a blade, there's hope for a pure Mirrodin once again.'", :rarity => "R", :artist => "Austin Hsu", :number => 128, :mana => 5, :power_int => 5, :toughness_int => 4, :power_text => "5", :toughness_text => "4", :sort_color => "0R4W", :sort_set => "2011-05"})

		Card.create({ :name => "Alloy Myr", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact Creature - Myr ", :text => "%T: Add one mana of any color to your mana pool.", :power => "2", :toughness => "2", :flavor => "With or without witnesses, the suns continued their prismatic dance.", :rarity => "U", :artist => "Matt Cavotta", :number => 129, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Batterskull", :edition => "NPH", :color => "Art", :cost => "5", :type => "Artifact - Equipment", :text => "Living weapon
Equipped creature gets +4/+4 and has vigilance and lifelink.%3: Return Batterskull to its owner's hand.
Equip  %5", :power => "", :toughness => "", :flavor => "", :rarity => "M", :artist => "Mark Zug", :number => 130, :mana => 5, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Blinding Souleater", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact Creature - Cleric ", :text => "%PW,%T : Tap target creature.", :power => "1", :toughness => "3", :flavor => "'We thank the souleaters for inscribing our souls with subservience, to reinforce the sacred order.'
-Drones' hymn of gratitude", :rarity => "C", :artist => "Igor Kieryluk", :number => 131, :mana => 3, :power_int => 1, :toughness_int => 3, :power_text => "1", :toughness_text => "3", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Caged Sun", :edition => "NPH", :color => "Art", :cost => "6", :type => "Artifact", :text => "When Caged Sun enters the battlefield, choose a color.
Creatures you control of the chosen color have +1/+1.
Whenever you tap a land for one or more mana of the chosen color, add one mana of the chosen color to your mana pool.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Scott Chou", :number => 132, :mana => 6, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Conversion Chamber", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact", :text => "%2,%T: Exile target artifact card from a graveyard. Put a charge counter on Conversion Chamber.%2,%T , Remove a charge counter from Conversion Chamber: Put a 3/3 colorless Golem artifact creature token onto the battlefield.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Anthony Francisco", :number => 133, :mana => 3, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Darksteel Relic", :edition => "NPH", :color => "Art", :cost => "0", :type => "Artifact ", :text => "Darksteel Relic is indestructible.", :power => "", :toughness => "", :flavor => "'It's the last thing we can call our own.'
-Minhu, Mirran Resistance", :rarity => "U", :artist => "Daniel Ljunggren", :number => 134, :mana => 0, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Etched Monstrosity", :edition => "NPH", :color => "Art", :cost => "5", :type => "Artifact Creature - Golem", :text => "Etched Monstrosity enters the battlefield with five -1/-1 counters on it.%W%U%B%R%G, Remove five -1/-1 counters from Etched Monstrosity: Target player draws three cards.", :power => "10", :toughness => "10", :flavor => "Now etched only with the scars of Phyresis.", :rarity => "M", :artist => "Steven Belledin", :number => 135, :mana => 5, :power_int => 10, :toughness_int => 10, :power_text => "10", :toughness_text => "10", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Gremlin Mine", :edition => "NPH", :color => "Art", :cost => "1", :type => "Artifact", :text => "%1,%T , Sacrifice Gremlin Mine: Gremlin Mine deals 4 damage to target artifact creature.%1,%T, Sacrifice Gremlin Mine: Remove up to four charge counters from target noncreature artifact.", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Matt Stewart", :number => 136, :mana => 1, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Hex Parasite", :edition => "NPH", :color => "Art", :cost => "1", :type => "Artifact Creature - Insect", :text => "%X%PB: Remove up to X counters from target permanent. For each counter removed this way, Hex Parasite gets +1/+0 until end of turn (%PB may be paid for with either %B or 2 life.)", :power => "1", :toughness => "1", :flavor => "Drawn by power, fueled by conquest.", :rarity => "R", :artist => "Raymond Swanland", :number => 137, :mana => 1, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Hovermyr", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact Creature - Myr", :text => "Flying, vigilance", :power => "1", :toughness => "2", :flavor => "Originally created to harvest blinkmoths, the hovermyr are now the silent observers of a dying world.", :rarity => "C", :artist => "Dan Scott", :number => 138, :mana => 2, :power_int => 1, :toughness_int => 2, :power_text => "1", :toughness_text => "2", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Immolating Souleater", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact Creature - Hound (C)", :text => "%PR: Immolating Souleater gets +1/+0 until end of turn.", :power => "1", :toughness => "1", :flavor => "'We thank the souleaters for melting the sinful that we may be reminded of our own insignificance.'
-Drones' hymn of gratitude", :rarity => "C", :artist => "Austin Hsu", :number => 139, :mana => 2, :power_int => 1, :toughness_int => 1, :power_text => "1", :toughness_text => "1", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Insatiable Souleater", :edition => "NPH", :color => "Art", :cost => "4", :type => "Artifact Creature - Beast", :text => "%PG: Insatiable Souleater gains trample until end of turn.", :power => "5", :toughness => "1", :flavor => "'We thank the souleaters for culling or sick so that the strong may earn their triumphs.'
-Drones' hymn of gratitude", :rarity => "C", :artist => "Dave Kendall", :number => 140, :mana => 4, :power_int => 5, :toughness_int => 1, :power_text => "5", :toughness_text => "1", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Isolation Cell", :edition => "NPH", :color => "Art", :cost => "4", :type => "Artifact", :text => "Whenever an opponent casts a creature spell, that player loses 2 life unless he or she pays %2.", :power => "", :toughness => "", :flavor => "'Attrition is the answer. Starve them, and let their despair be their undoing.'
-Sheoldred, Whispering One", :rarity => "U", :artist => "Adrian Smith", :number => 141, :mana => 4, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Kiln Walker", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact Creature - Construct", :text => "Whenever Kiln Walker attacks, it gets +3/+0 until end of turn.", :power => "0", :toughness => "3", :flavor => "If it possesses an ability to understand and appreciate life, it has never shown it.", :rarity => "U", :artist => "Volkan Baga", :number => 142, :mana => 3, :power_int => 0, :toughness_int => 3, :power_text => "0", :toughness_text => "3", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Lashwrithe", :edition => "NPH", :color => "Art", :cost => "4", :type => "Artifact - Equipment", :text => "Living weapon
Equip %PB%PB(%PB may be paid for with either %B or 2 life.)
Equipped creature gets +1/+1 for each Swamp you control.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "Jason Felix", :number => 143, :mana => 4, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Mindcrank", :edition => "NPH", :color => "Art", :cost => "2", :type => " Artifact", :text => "Whenever an opponent loses life, that player puts that many cards from the top of his or her library into his or her graveyard. (Damage dealt by sources without infect causes loss of life.)", :power => "", :toughness => "", :flavor => "'Let go of your memories and be reborn.'
-Argent Etchings, plate 106, pasage 27", :rarity => "U", :artist => "Chris Rahn", :number => 144, :mana => 2, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Mycosynth Wellspring", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact", :text => "When Mycosynth Wellspring enters the battlefield or is put into a graveyard from the battlefield, you may search your library for a basic land card, reveal it, put it into your hand, then shuffle your library.", :power => "", :toughness => "", :flavor => "The oil created the mycosynth. The mycosynth created New Phyrexia.", :rarity => "C", :artist => "David Rapoza", :number => 145, :mana => 2, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Myr Superion", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact Creature - Myr", :text => "Spend only mana produced by creatures to cast Myr Superion.", :power => "5", :toughness => "6", :flavor => "Two kinds of myr survive: the powerful and those who stay close by them.", :rarity => "R", :artist => "Jana Schirmer & Johannes Voss", :number => 146, :mana => 2, :power_int => 5, :toughness_int => 6, :power_text => "5", :toughness_text => "6", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Necropouncer ", :edition => "NPH", :color => "Art", :cost => "6", :type => "Artifact - Equipment", :text => "Living weapon
Equipped creature gets +3/+1 and has haste.
Equip %2", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Cos Koniotis", :number => 147, :mana => 6, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Omen Machine", :edition => "NPH", :color => "Art", :cost => "6", :type => "Artifact", :text => "Players can't draw cards.
At the beginning of each player's draw step, that player exiles the top card of his or her library. If it's a land card, the player puts it onto the battlefield. Otherwise, the player casts it without paying its mana cost if able.", :power => "", :toughness => "", :flavor => "", :rarity => "R", :artist => "David Rapoza", :number => 148, :mana => 6, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Pestilent Souleater", :edition => "NPH", :color => "Art", :cost => "5", :type => "Artifact Creature - Insect", :text => "%PB: Pestilent Souleater gains infect until end of turn.", :power => "3", :toughness => "3", :flavor => "", :rarity => "C", :artist => "Matt Stewart", :number => 149, :mana => 5, :power_int => 3, :toughness_int => 3, :power_text => "3", :toughness_text => "3", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Phyrexian Hulk", :edition => "NPH", :color => "Art", :cost => "6", :type => "Artifact Creature - Golem", :text => "", :power => "5", :toughness => "4", :flavor => "An invasion weapon of ages past, the glistening oil contained the blueprints of countless atrocities.", :rarity => "C", :artist => "Steven Belledin", :number => 150, :mana => 6, :power_int => 5, :toughness_int => 4, :power_text => "5", :toughness_text => "4", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Pristine Talisman", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact", :text => "%T: Add %1 to your mana pool. You gain 1 life.", :power => "", :toughness => "", :flavor => "'Tools and artisans can be destroyed, but the act of creation is inviolate.'
-Elspeth Tirel", :rarity => "C", :artist => "Matt Cavotta", :number => 151, :mana => 3, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Shrine of Boundless Growth", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact ", :text => "At the beginning of your upkeep or whenever you cast a green spell, put a charge counter on Shrine of Boundless Growth.%T, Sacrifice Shrine of Boundless Growth: Add %1 to your mana pool for each charge counter on Shrine of Boundless Growth.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Karl Kopinski", :number => 152, :mana => 3, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Shrine of Burning Rage", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact", :text => "At the beginning of your upkeep or whenever you cast a red spell, put a charge counter on Shrine of Burning Rage.%3,%T , Sacrifice Shrine of Burning Rage: Shrine of Burning Rage deals damage equal to the number of charge counters on it to target creature or player.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Dave Kendall", :number => 153, :mana => 2, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Shrine of Limitless Power", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact", :text => "At the beginning of your upkeep or whenever you cast a black spell, put a charge counter on Shrine of Limitless Power.%4,%T , Sacrifice Shrine of Limitless Power: Target player discards a card for each charge counter on Shrine of Limitless Power.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Min Yum", :number => 154, :mana => 3, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Shrine of Loyal Legions", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact", :text => "At the beginning of your upkeep or whenever you cast a white spell, put a charge counter on Shrine of Loyal Legions.%3,%T , Sacrifice Shrine of Loyal Legions: Put a 1/1 colorless Myr artifact creature token onto the battlefield for each charge counter on Shrine of Loyal Legions.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Igor Kieryluk", :number => 155, :mana => 2, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Shrine of Piercing Vision", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact", :text => "At the beginning of your upkeep or whenever you cast a blue spell, put a charge counter on Shrine of Piercing Vision.%T, Sacrifice Shrine of Piercing Vision: Look at the top X cards of your library, where X is the number of charge counters on Shrine of Piercing Vision. Put one of those cards into your hand and the rest on the bottom of your library in any order.", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Jana Schirmer & Johannes Voss", :number => 156, :mana => 2, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Sickleslicer", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact - Equipment", :text => "Living Weapon
Equipped creature gets +2/+2.
Equip %4", :power => "", :toughness => "", :flavor => "", :rarity => "U", :artist => "Jason Felix", :number => 157, :mana => 3, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Soul Conduit", :edition => "NPH", :color => "Art", :cost => "6", :type => "Artifact", :text => "%6,%T : Two target players exchange life totals.", :power => "", :toughness => "", :flavor => "'You have an unhealthy attachment to your selfhood. I can help you with that.'
-Malcator, Executor of Synthesis", :rarity => "R", :artist => "Brad Rigney", :number => 158, :mana => 6, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Spellskite", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact Creature - Horror", :text => "%PU: Change a target of target spell or ability to Spellskite.(%PU may be paid for with either %U or 2 life.)", :power => "0", :toughness => "4", :flavor => "'Let's show Vorinclex that progress doesn't always need teeth or claws.'
-Malcator, Executor of Syntheses", :rarity => "R", :artist => "Chippy", :number => 159, :mana => 2, :power_int => 0, :toughness_int => 4, :power_text => "0", :toughness_text => "4", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Surge Node", :edition => "NPH", :color => "Art", :cost => "1", :type => "Artifact", :text => "Surge Node enters the battlefield with six charge counters on it.%1,%T , Remove a charge counter from Surge Node: Put a charge counter on target artifact.", :power => "", :toughness => "", :flavor => "Without a foe to focus on , the machine priests had time to indulge in new sciences.", :rarity => "U", :artist => "Lars Grant-West", :number => 160, :mana => 1, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Sword of War and Peace", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact - Equipment", :text => "Equipped creature gets +2/+2 and has protection from red and from white.
Whenever equipped creature deals combat damage to a player, Sword of War and Peace deals damage to that player equal to the number of cards in his or her hand and you gain 1 life for each card in your hand.
Equip %2", :power => "", :toughness => "", :flavor => "", :rarity => "M", :artist => "Chris Rahn", :number => 161, :mana => 3, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Torpor Orb", :edition => "NPH", :color => "Art", :cost => "2", :type => "Artifact", :text => "Creatures entering the battlefield don't cause abilities to trigger.", :power => "", :toughness => "", :flavor => "'Phyrexia is certainly dangerous, but I have to admire so of its innovations.'
-Tezzeret", :rarity => "R", :artist => "Svetlin Velinov", :number => 162, :mana => 2, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Trespassing Souleater", :edition => "NPH", :color => "Art", :cost => "3", :type => "Artifact Creature - Construct", :text => "%PU: Trespassing Souleater is unblockable this turn. (%PU can be paid with either %U or 2 life.)", :power => "2", :toughness => "2", :flavor => "'We thank the souleaters for surveilling our lives that we may be preserved from our own ignorance.'
-Drones' hymn of gratitude", :rarity => "C", :artist => "Scott Chou", :number => 163, :mana => 3, :power_int => 2, :toughness_int => 2, :power_text => "2", :toughness_text => "2", :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Unwinding Clock", :edition => "NPH", :color => "Art", :cost => "4", :type => "Artifact", :text => "Untap all artifacts you control during each other player's untap step.", :power => "", :toughness => "", :flavor => "'The partisans have unearthed a strange artifact. None know its origin, but it gives them a hope of a life beyond.'
-Elspeth's journal", :rarity => "R", :artist => "Mike Bierek", :number => 164, :mana => 4, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Phyrexia's Core", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Land", :text => "%T: Add %1 to your mana pool.%1,%T , Sacrifice an artifact: You gain 1 life.", :power => "", :toughness => "", :flavor => "'So even the heart of our world has succumbed.'
-Koth of the Hammer", :rarity => "U", :artist => "Franz Volwinkel", :number => 165, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Plains", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Plains", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "James Paick", :number => 166, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Plains", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Plains", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "James Paick", :number => 167, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Island", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Island", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Jung Park", :number => 168, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Island", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Island", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Jung Park", :number => 169, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Swamp", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Swamp", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Lars Grant-West", :number => 170, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Swamp", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Swamp", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Lars Grant-West", :number => 171, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Mountain", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Mountain", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Tomasz Jedruszek", :number => 172, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Mountain", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Mountain", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Tomasz Jedruszek", :number => 173, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Forest", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Forest", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Mark Tedin", :number => 174, :sort_color => "6C", :sort_set => "2011-05"})

		Card.create({ :name => "Forest", :edition => "NPH", :color => "Lnd", :cost => "", :type => "Basic Land - Forest", :text => "", :power => "", :toughness => "", :flavor => "", :rarity => "C", :artist => "Mark Tedin", :number => 175, :sort_color => "6C", :sort_set => "2011-05"})

	end

	def self.down
	end
end
