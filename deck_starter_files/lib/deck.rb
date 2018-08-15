require_relative "card"

class Deck

  def initialize

    @cards = []

    @ranks = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    @suits = [:clubs, :diamonds, :hearts, :spades]

    @suits.each do |suit|
      @ranks.each {|rank| @cards << Card.new(rank, suit)}
    end

  end

  def cards_left
    @cards.length
  end

  def draw
    @cards.shift
  end

  def shuffle
  end
end
