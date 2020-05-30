class CreateInitiativeDeckEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :initiative_deck_entries do |t|
      t.references :scenario, null: false, foreign_key: true
      t.references :initiative_card, null: false, foreign_key: true
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
