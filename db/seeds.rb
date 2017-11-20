Deck.destroy_all


deck = Deck.create!( title: "Tennis Topics" )
deck_1 = Deck.create!( title: "Tennis Topics II" )


card_1 = Card.create!( question: "Who stormed off court at the end of the 1999 French Open and had to have her mother coax her back?", answer: "Martina Hingis", deck: deck )

card_2 = Card.create!( question: "Who was the first black tennis player to win the US Open?", answer: "Arthur Ash", deck: deck )

card_3 = Card.create!( question: "Which tennis player famously yelled 'You cannot be serious!' at an umpire?", answer: "John McEnroe", deck: deck )

card_4 = Card.create!( question: "At which Hills was US Open tennis played before it moved to Flushing Meadow?", answer: "Forest Hills", deck: deck_1 )

card_5 = Card.create!( question: "Who won the ladies singles most times at Wimbledon in the 80s?", answer: "Martina Navratilova", deck: deck_1 )

card_6 = Card.create!( question: "Who won the 2017 US Open?", answer: "Sloane Stephens" , deck: deck_1 )

user = User.create!(username: "Serena", email: "ace@ace.com")

round = Round.create!(deck: deck, player: user)

guess_1 = Guess.create!(round: round, card_id: rand(1...6), is_solved: true)
guess_2 = Guess.create!(round: round, card_id: rand(1...6))
guess_3 = Guess.create!(round: round, card_id: rand(1...6))
guess_4 = Guess.create!(round: round, card_id: rand(1...6))
