When /^I create a deck from (\d+) to (\d+)$/ do |m, n|
  @deck = Games::Parts::NumberDeck.new ((m.to_i)..(n.to_i))
end

Then /^I have (\d+) cards to deal$/ do |hack|
  hack.to_i.should == @deck.size
end

Then /^I can calculate the number of combinations there are if I choose (\d+) random cards$/ do |n|
  n = n.to_i
  @calc = @deck.choose n
  size = @deck.size
  @calc.should == (1..size).reduce(:*)/((1..(size-n)).reduce(:*)*(1..n).reduce(:*))
end

Then /^I can deal (\d+) cards$/ do |n|
  n = n.to_i
  @dealt = @deck.deal(n)
  @dealt.size.should == n
end

