class InitiativeDeckEntry < ApplicationRecord
  belongs_to :scenario
  belongs_to :initiative_card
end
