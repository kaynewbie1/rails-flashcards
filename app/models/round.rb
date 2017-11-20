class Round < ApplicationRecord
  belongs_to :deck
  belongs_to :player, class_name: "User"
end
