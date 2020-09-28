require_relative 'test_helper'

describe Card do
  describe 'You can create a Card instance' do

    it 'Can be created' do
      # an array of symbol
      %i[hearts spades clubs diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it 'Raises an ArgumentError for invalid parameters' do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
      expect {Card.new(1, :clovers)}.must_raise ArgumentError
    end
  end

  describe 'Testing to_s' do

    it 'to_s returns a readable String value logically for values 2-10' do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      # Act
      card = Card.new(2, :diamonds)

      # Assert
      expect(card.to_s).must_equal '2 of diamonds'
    end

    it 'to_s returns a readable String value for Ace, Jack, Queen, King' do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)
      #
      # For reference:
      #  1: Ace
      #  11: Jack
      #  12: Queen
      #  13: King
      hash_face_cards = {
        1 => "Ace",
        11 => "Jack",
        12 => "Queen",
        13 => "King"
      }
      hash_face_cards.each do |number, face_value|
        # Initialize an instance of card using num as value and suit
        card = Card.new(number, :hearts)
        expect(card.to_s).must_equal "#{face_value} of hearts"
      end

    end
  end

  describe 'Reader methods' do


    it 'Can retrieve the value of the card using a `.value`.' do
      # ensure that `.value works as expected`

    end

    it 'Can retrieve the value of the card using a `.suit`.' do
      # ensure that `.suit works as expected returning the symbol of the suit`

    end
  end

end
