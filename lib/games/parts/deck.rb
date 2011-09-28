
module Games
  module Parts
    
    class Deck
      attr_reader :size
    end

    class NumberDeck < Deck

      def initialize(range)
        @range = range
        @size = range.count
      end
    end
  end
end
