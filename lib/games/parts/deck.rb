
module Games
  module Parts
    
    class Deck
      attr_reader :size

      def choose(n)
        binding.pry
      end
    end

    class NumberDeck < Deck

      def initialize(range)
        @range = range
        @size = range.count
      end
    end
  end
end
