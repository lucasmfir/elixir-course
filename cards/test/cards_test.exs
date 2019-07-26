defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck/0 creates a deck with 20 cards" do
    deck_length = length(Cards.create_deck())
    
    assert deck_length == 20
  end

  test "shuffle/1 a deck randomizes it" do
    deck = Cards.create_deck()

    refute deck == Cards.shuffle(deck)
  end

  test "contains?/2 returns if a deck contains a specific card" do
    deck = Cards.create_deck()
    existing_card = "Ace of Diamonds"
    not_existent_card = "Ace of Goldens"

    assert Cards.contains?(deck, existing_card)
    refute Cards.contains?(deck, not_existent_card)
  end
end
