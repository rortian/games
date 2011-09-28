module Games
  module Parts
    class Turns

      def each
        while !over?
          yield
        end
      end

    end

    class NTurns < Turns

      def initialize(n)
        @n = n
        @left = n + 1
      end

      def over?
        @left -= 1
        @left == 0
      end

    end

    class IndefiniteTurns < Turns

      def initialize(decider)
        @decider = decider
      end

      def over?
        @decider.over?
      end

    end

    class RoundRobinTurns

      def initialize(players)
        @players = players
      end

      def each
      end

      
    end
    
  end
end
