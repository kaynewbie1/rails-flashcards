class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.references :deck, foreign_key: true
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
