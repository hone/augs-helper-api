class AddTypeToInitiativeCards < ActiveRecord::Migration[6.0]
  def change
    create_enum :initiative_card_type, ["hero", "villain"]

    change_table :initiative_cards do |t|
      t.enum :card_type, enum_name: :initiative_card_type
    end
  end
end
