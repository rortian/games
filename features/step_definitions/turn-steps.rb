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

class DumbProxy
  attr_accessor :over

  def initialize
    @over = false
  end

  def over?
    @over
  end

end

Given /^An indefinite game$/ do
  @proxy = DumbProxy.new
  @game = Games::Parts::IndefiniteTurns.new @proxy
end

Then /^It should play an indefinite number of turns$/ do
  times = 0
  Thread.new { |t| sleep 0.03; @proxy.over = true }
  @game.each { times += 1 }
  times.should > 0
end

