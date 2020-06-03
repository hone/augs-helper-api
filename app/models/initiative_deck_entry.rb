class InitiativeDeckEntry < ApplicationRecord
  belongs_to :battle
  belongs_to :initiative_card
end
