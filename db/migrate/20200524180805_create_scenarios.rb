class CreateScenarios < ActiveRecord::Migration[6.0]
  def change
    create_table :scenarios do |t|
      t.string :name
      t.references :campaign, null: false, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
