Given /^A (\d+) turn game$/ do |n|
  n = n.to_i
  @game = Games::Parts::NTurns.new n 
end

Then /^There should be (\d+) turns$/ do |n|
  n = n.to_i
  times = 0
  @game.each { times += 1 }
  times.should == n
end

