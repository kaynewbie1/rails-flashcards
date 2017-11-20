class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses
  has_many :rounds, through: :deck

  validates :question, :answer, presence: true
end
