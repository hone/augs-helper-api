class InitiativeCard < ApplicationRecord
  enum card_type: {
    hero: "hero",
    villain: "villain",
  }
  has_many :initiative_deck_entries
  has_many :battles, through: :initiative_deck_entries
end
