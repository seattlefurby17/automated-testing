
# card.rb

# Check for valid value
VALID_SUITS = [:hearts, :spades, :clubs, :diamonds].freeze

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    raise ArgumentError, "The #{suit} is invalid" unless VALID_SUITS.include?(suit)
    raise ArgumentError, "#{value} is an invalid value" if value < 1 || value > 13

    @value = value
    @suit = suit

  end

  def to_s
    if value == 1
      return "Ace of #{suit.to_s}"
    elsif value == 11
      return "Jack of #{suit.to_s}"
    elsif value == 12
      return "Queen of #{suit.to_s}"
    elsif value == 13
      return "King of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end

end
