class Card

  attr_reader :rank, :suit

  def initialize(rank, suit)

    @ranks = [:a, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    @suits = [:clubs, :diamonds, :hearts, :spades]

    if @ranks.include?(rank)
      @rank = rank
    else
      @rank = "invalid rank"
    end

    if @suits.include?(suit)
      @suit = suit
    else
      @suit = "invalid suit"
    end
  end

  def greater_than?(other_card)
    puts "this card's rank value is "
    puts @ranks.find_index(@rank)
    puts "this card's rank value is "
    puts @suits.find_index(@suit)
    puts "other card's rank value is "
    puts @ranks.find_index(other_card.rank)
    puts "other card's rank value is "
    puts @suits.find_index(other_card.suit)

  end
end