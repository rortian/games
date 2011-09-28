
module Games
  module Parts
    
    class Deck
      attr_reader :size

      def choose(n)
        left = @size - n
        if(left == 0 || left == @size)
          1
        else
          if(left == 1 || n == 1)
            @size
          else
            if n >= left
              numerator = ((n+1)..@size).reduce(:*)
              denom = (1..left).reduce(:*)
              numerator / denom
            else
              numerator = ((left+1)..@size).reduce(:*)
              denom = (1..n).reduce(:*)
              numerator / denom
            end
          end
        end
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
