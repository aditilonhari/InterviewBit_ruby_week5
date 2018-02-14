require 'set'

class Solution
    # @param a : integer
    # @return a string
    def multiple(a)
        return nil if a.nil?
        return 0 if a == 0
        
        result = a
        i = 1
        loop do
            result = i * a
            arr = result.to_s.split(//)
            arr = arr.each.map(&:to_i)
            return result.to_s if arr.to_set == Set.new([1]) || arr.to_set == Set.new([0]) || arr.to_set == Set.new([0,1])
            i += 1
        end
    end
end
