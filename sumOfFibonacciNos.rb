class Solution
    def initialize
        @fib = [1, 1]
    end
    def fib(n)
      return @fib[n] if @fib[n]
      @fib[n] = @fib[n - 1] + @fib[n - 2]
    end
    # @param a : integer
    # @return an integer
    def fibsum(a)
        return 0 if a == 0
        (0..(1.0 / 0)).each do |n|
            return 1 if fib(n) == a
            return 1 + fibsum(a - fib(n - 1)) if fib(n) > a
        end
    end
end
