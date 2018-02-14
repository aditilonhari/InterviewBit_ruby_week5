class Solution
    # @param a : integer
    # @param b : integer
    # @return an array of integers
    def stepnum(a, b)
        return nil if a.nil? || b.nil?
        
        result = []
        (a..b).each do |item|
            if checkStep(item)    
                result << item
            end
        end
        result
    end
    
    def checkStep(num)
        num_array = num.to_s.split(//)
        (0...num_array.length-1).each do |i|
            diff = (num_array[i].to_i - num_array[i+1].to_i).abs
            return false if diff != 1 
        end
        
        return true
    end
end
