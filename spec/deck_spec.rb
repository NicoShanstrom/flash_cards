require './lib/card'
require './lib/deck'
require 'pry'

RSpec.describe Deck do
    it "checks that deck exists" do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

        deck = Deck.new(card1, card2, card3)

        expect(deck).to be_an_instance_of(Deck)
    end

    it 'stores cards in a deck' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

        deck = Deck.new(card1, card2, card3)

        expect(deck.cards).to eq([card1, card2, card3])
    end

    it 'has an amount of cards' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        
        deck = Deck.new(card1, card2, card3)

        expect(deck.count).to eq(3)
    end

    it 'checks if the deck has cards in the :STEM category' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

        deck = Deck.new(card1, card2, card3)
        expect(deck.cards_in_category).to eq([card2, card3])
    end

    it 'checks if the deck has cards in the :Geography category' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        
        deck = Deck.new(card1, card2, card3)
        expect(deck.cards_in_category).to eq([card1])
    end

    it 'checks if the deck has cards in the :Pop culture category' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        
        deck = Deck.new(card1, card2, card3)
        expect(deck.cards_in_category).to eq([])
    end
end



