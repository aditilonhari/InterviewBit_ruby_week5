class Solution
    # @param a : integer
    # @param b : integer
    # @param c : integer
    # @param k : integer
    # @return an array of integers
    def solve(a, b, c, k)
        initial_set = [a,b,c].sort
        a,b,c = initial_set
        initial_index = [0,0,0]
        final_ans = []
        while(final_ans.length < k)
            min,min_ind = initial_set.each_with_index.min    
            final_ans << min if(final_ans[-1] != min)
            if(min_ind == 0)
                no = a
            elsif(min_ind == 1)
                no = b
            else
                no = c
            end
            initial_set[min_ind] = final_ans[initial_index[min_ind]] * no
            initial_index[min_ind] += 1
        end
        final_ans

    end
end
