When /^I create a deck from (\d+) to (\d+)$/ do |m, n|
  Games::Parts::NumberDeck.new ((m.to_i)..(n.to_i))
end

Then /^I have (\d+) cards to deal$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

