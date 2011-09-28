
module Games
  module Parts
    
    class Deck  

      
    end

    class NumberDeck

      def initialize(range)
        @range = range
        @size = range.count
        require 'pry'
        binding.pry
      end
    end
  end
end
