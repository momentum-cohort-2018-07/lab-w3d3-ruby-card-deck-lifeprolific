class Card

  attr_reader :rank, :suit

  def initialize(rank, suit)

    @ranks = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
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
    greater_rank = @ranks.find_index(@rank) > @ranks.find_index(other_card.rank)
    equal_rank = @ranks.find_index(@rank) === @ranks.find_index(other_card.rank)
    greater_suit = @suits.find_index(@suit) > @suits.find_index(other_card.suit)
    if greater_rank
      true
    elsif equal_rank && greater_suit
      true
    else
      false
    end
  end
end