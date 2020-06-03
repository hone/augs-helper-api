# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
InitiativeCard.create([
  {
    name: 'Leonardo',
    subtitle: 'leader',
    card_type: 'hero',
  },
  {
    name: 'Donatello',
    subtitle: 'smart',
    card_type: 'hero',
  },
  {
    name: 'Raphael',
    subtitle: 'enraged',
    card_type: 'hero',
  },
  {
    name: 'Michelangelo',
    subtitle: 'nimble',
    card_type: 'hero'
  },
  {
    name: 'Angel Bridge',
    subtitle: 'swift dragon',
    card_type: 'hero',
  },
  {
    name: "April O\'Neil",
    subtitle: 'beta-tech',
    card_type: 'hero',
  },
  {
    name: 'Bebop',
    subtitle: 'wild hog',
    card_type: 'villain',
  },
  {
    name: 'Bebop and Rocksteady',
    subtitle: 'gruesome twosome',
    card_type: 'villain',
  },
  {
    name: 'Foot Bruiser',
    subtitle: 'brute',
    card_type: 'villain',
  },
  {
    name: 'Foot Elite',
    subtitle: 'skilled',
    card_type: 'villain',
  },
  {
    name: 'Foot Ninja',
    subtitle: 'soldier',
    card_type: 'villain',
  },
  {
    name: 'Hun',
    subtitle: 'enforcer',
    card_type: 'villain',
  },
  {
    name: 'Karai',
    subtitle: 'archer',
    card_type: 'villain',
  },
  {
    name: 'Leonardo',
    subtitle: 'chunin',
    card_type: 'villain',
  },
  {
    name: 'Old Hob',
    subtitle: 'ringleader',
    card_type: 'hero',
  },
  {
    name: 'Purple Dragons',
    subtitle: 'gang mentality',
    card_type: 'villain',
  },
  {
    name: 'Rocksteady',
    subtitle: 'rhino-saurus',
    card_type: 'villain',
  },
  {
    name: 'Shredder',
    subtitle: 'commanding',
    card_type: 'villain',
  },
  {
    name: 'Slash',
    subtitle: 'juggernaut',
    card_type: 'hero',
  },
  {
    name: 'Slash',
    subtitle: 'savage',
    card_type: 'hero',
  },
  {
    name: 'Splinter',
    subtitle: 'sensei',
    card_type: 'hero',
  },
  {
    name: 'Splinter',
    subtitle: 'master',
    card_type: 'hero',
  }
])
thug_brawler = InitiativeCard.create(
  {
    name: 'Thug Brawler',
    subtitle: 'determined',
    card_type: 'villain',
  }
)
thug_gunner = InitiativeCard.create(
  {
    name: 'Thug Gunner',
    subtitle: 'eagle-eyed',
    card_type: 'villain',
  }
)
foot_ninja = InitiativeCard.create(
  {
    name: 'Foot Ninja',
    subtitle: 'numerous',
    card_type: 'villain',
  }
)
alopex = InitiativeCard.create(
  {
    name: 'Alopex',
    subtitle: 'agile',
    card_type: 'villain',
  }
)
old_hob = InitiativeCard.create(
  {
    name: 'Old Hob',
    subtitle: 'cunning',
    card_type: 'villain',
  }
)
mousers = InitiativeCard.create(
  {
    name: 'Mousers',
    subtitle: 'remote-controlled',
    card_type: 'villain',
  }
)
mega_mouser = InitiativeCard.create(
  {
    name: 'Mega Mouser',
    subtitle: 'reinforced',
    card_type: 'villain',
  }
)
baxter = InitiativeCard.create(
  {
    name: 'Baxter Stockman',
    subtitle: 'mastermind',
    card_type: 'villain',
  }
)

tutorial = Campaign.create(name: 'Tutorial', ident: 'T')
t1 = tutorial.battles.create(name: 'Something Stinks!', number: 1)
t1.initiative_deck_entries.create(initiative_card: thug_brawler, quantity: 2)
t1.initiative_deck_entries.create(initiative_card: thug_gunner)
t1.initiative_deck_entries.create(initiative_card: foot_ninja)
t1.initiative_deck_entries.create(initiative_card: alopex)
t2 = tutorial.battles.create(name: 'Join the Foot...', number: 2)
t2.initiative_deck_entries.create(initiative_card: thug_brawler, quantity: 2)
t2.initiative_deck_entries.create(initiative_card: thug_gunner)
t2.initiative_deck_entries.create(initiative_card: foot_ninja)
t2.initiative_deck_entries.create(initiative_card: alopex)
t3 = tutorial.battles.create(name: 'Reject Round Up', number: 3)
t3.initiative_deck_entries.create(initiative_card: thug_brawler, quantity: 2)
t3.initiative_deck_entries.create(initiative_card: thug_gunner)
t3.initiative_deck_entries.create(initiative_card: foot_ninja)

cic = Campaign.create(name: 'Change is Constant', ident: '1')
cic1 = cic.battles.create(name: 'The Skies Rumble', number: 1)
cic1.initiative_deck_entries.create(initiative_card: thug_brawler, quantity: 2)
cic1.initiative_deck_entries.create(initiative_card: thug_gunner)
cic2 = cic.battles.create(name: 'Lost and Found', number: 2)
cic2.initiative_deck_entries.create(initiative_card: thug_brawler, quantity: 2)
cic2.initiative_deck_entries.create(initiative_card: thug_gunner)
cic2.initiative_deck_entries.create(initiative_card: old_hob)
cic3 = cic.battles.create(name: 'A Family Reunited', number: 3)
cic3.initiative_deck_entries.create(initiative_card: thug_brawler, quantity: 2)
cic3.initiative_deck_entries.create(initiative_card: thug_gunner)
cic3.initiative_deck_entries.create(initiative_card: old_hob)

eoen = Campaign.create(name: 'Enemies Old Enemeies New', ident: '2')
eoen1 = eoen.battles.create(name: 'Rat Trap', number: 1)
eoen1.initiative_deck_entries.create(initiative_card: mousers)
eoen2 = eoen.battles.create(name: 'A Better Mouse Trap', number: 2)
eoen2.initiative_deck_entries.create(initiative_card: mousers)
eoen2.initiative_deck_entries.create(initiative_card: old_hob)
eoen3 = eoen.battles.create(name: "Baxter's Gambit", number: 3)
eoen3.initiative_deck_entries.create(initiative_card: thug_gunner)
eoen3.initiative_deck_entries.create(initiative_card: mousers)
eoen3.initiative_deck_entries.create(initiative_card: mega_mouser)
eoen4 = eoen.battles.create(name: 'Protocol: Exterminate', number: 4)
eoen4.initiative_deck_entries.create(initiative_card: mousers)
eoen4.initiative_deck_entries.create(initiative_card: mega_mouser)
eoen4.initiative_deck_entries.create(initiative_card: baxter)
