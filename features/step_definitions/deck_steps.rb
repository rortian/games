When /^I create a deck from (\d+) to (\d+)$/ do |m, n|
  @deck = Games::Parts::NumberDeck.new ((m.to_i)..(n.to_i))
end

Then /^I have (\d+) cards to deal$/ do |hack|
  hack.to_i.should == @deck.size
end

Then /^I can calculate the number of combinations there are if I choose (\d+) random cards$/ do |n|
  @calc = @deck.choose n.to_i

end
