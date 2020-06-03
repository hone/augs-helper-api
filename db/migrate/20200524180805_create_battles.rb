class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.string :name
      t.references :campaign, null: false, foreign_key: true
      t.integer :number
      t.integer :player_count, default: 4

      t.timestamps
    end
  end
end
