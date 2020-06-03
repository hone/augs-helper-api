class CreateInitiativeCards < ActiveRecord::Migration[6.0]
  def change
    create_table :initiative_cards do |t|
      t.string :name
      t.string :subtitle

      t.timestamps
    end
    add_index :initiative_cards, :name
  end
end
