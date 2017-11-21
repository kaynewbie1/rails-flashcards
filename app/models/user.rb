class User < ApplicationRecord
  has_secure_password

  has_many :rounds, foreign_key: :player_id
  has_many :guesses, through: :rounds
  has_many :decks_played, through: :rounds, source: :deck
  has_many :cards_guessed, through: :guesses, source: :card

  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

end
