# Definition for a  binary tree node
# class TreeNode
#     attr_accessor :left,:right,:data
#     def initialize(data)
#         @data = data
#         @left = nil
#         @right = nil
#     end
# end
class Solution
    # @param a : root node of tree
    # @return an array of array of integers
    def levelOrder(a)
    
        return [] if a.nil?
        
        levels = []
        queue = []
        queue << a
        until queue.empty?
            size = queue.size
            i = 0
            level = []
            while i < size do
                node = queue.delete_at(0)
                level << node.data
                queue << node.left if node.left
                queue << node.right if node.right
                i += 1
            end
            levels << level
        end
        
        levels
    end
end
