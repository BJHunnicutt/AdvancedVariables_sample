# Card.rb

class Card
  # This @@numcards will keep adding up everytime the class is initiated => you know the number of cards initiated int he deck
  @@numcards = 0
  MAX_VALUE = 13
  MIN_VALUE = 1
  attr_accessor :value, :suit
  def initialize(value, suit)
    @value = value
    @suit  = suit
    @@numcards += 1
    MAX_VALUE = 78
  end

  # This class method is essentially a reader method
  def self.numcards
    return @@numcards
  end
  def to_s
    return value.to_s + " of " + suit.to_s.capitalize
  end
end


two_of_hearts = Card.new(2, :hearts)
three_of_diamonds = Card.new(3, :diamonds)
puts "You have the #{two_of_hearts.to_s}"
puts "You have the #{three_of_diamonds.to_s}"
puts "There are: #{Card.numcards} cards."
