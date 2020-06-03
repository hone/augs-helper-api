class Battle < ApplicationRecord
  belongs_to :campaign
  has_many :initiative_deck_entries
  has_many :initiative_cards, through: :initiative_deck_entries
end
