class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.references :round, foreign_key: true
      t.references :card, foreign_key: true
      t.boolean :is_solved, default: false

      t.timestamps
    end
  end
end
