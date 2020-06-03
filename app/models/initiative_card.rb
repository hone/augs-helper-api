class InitiativeCard < ApplicationRecord
  has_many :initiative_deck_entries
  has_many :battles, through: :initiative_deck_entries
end
