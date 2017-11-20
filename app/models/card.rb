class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :deck

  validates :questions, :answer, presence: true
end
