class Solution
    # @param a : integer
    # @param b : integer
    # @return an array of integers
    def stepnum(a, b)
        return nil if a.nil? || b.nil?
        
        arr = (0..9).to_a
        result = []
        arr.each do |item|
            stepnums = checkStep(a,b,item)
            result << stepnums.sort! if !stepnums.empty?
        end
        result.flatten.sort
    end
    
    def checkStep(a, b, num)
        all_step_nums = []
        
        queue = []
        queue << num
        until queue.empty?
            stepnum = queue.pop
            if a <= stepnum && stepnum <= b
                all_step_nums << stepnum
            end
            
            next if stepnum == 0 || stepnum > b
            
            lastdigit = stepnum % 10
            
            stepnum_a = stepnum * 10 + (lastdigit - 1)
            stepnum_b = stepnum * 10 + (lastdigit + 1)
            
            if lastdigit == 0
                queue << stepnum_b
            elsif lastdigit == 9
                queue << stepnum_a
            else
                queue << stepnum_a
                queue << stepnum_b
            end
        end
        
        all_step_nums
    end
end
