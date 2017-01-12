class Card
  attr_reader :question, :answer

  def initialize(input_options)
    @question = input_options[0]
    @answer = input_options[1]
  end

end

class Deck < Card
  attr_reader :cards
  def initialize(input_options)
    super
    @cards = input_options
  end

  def draw_card
    all_cards = []
    shuffled_deck = []
    @cards.each do |card|
      all_cards << card
    end
    shuffled_deck = all_cards.shuffle
    
    card1 = Card.new(shuffled_deck[0])
    

  end

end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

deck.draw_card
# while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
# end