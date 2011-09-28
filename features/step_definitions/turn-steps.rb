Given /^A (\d+) turn game$/ do |n|
  n = n.to_i
  @game = Games::Parts::NTurns.new n 
end

Then /^There should be (\d+) turns$/ do |arg1|
  times = 0
  @game.each { times += 1 }
  binding.pry
    pending # express the regexp above with the code you wish you had
end

