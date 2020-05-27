module RSpec
  module JsonMatcher
    class ExactMatcher < AbstractMatcher
      def compare(&reason)
        ExactComparer.compare(parsed, expected, &reason)
      end

      def inspect
        self.expected.ai
      end
    end
  end
end
