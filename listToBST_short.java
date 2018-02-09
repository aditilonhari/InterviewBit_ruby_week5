/**
 * Definition for binary tree
 * class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
/**
 * Definition for singly-linked list.
 * class ListNode {
 *     public int val;
 *     public ListNode next;
 *     ListNode(int x) { val = x; next = null; }
 * }
 */
public class Solution {
	public TreeNode sortedListToBST(ListNode a) {
	    if(a==null)
	        return null;
	        
	   int list_length = 0, i = 0;
	   ListNode head = a;
	   ArrayList<Integer> list_array = new ArrayList<Integer>();
	   while(head != null){
	       list_length ++;
	       list_array.add(head.val);
	       head = head.next;
	   }
	   
	   return splitIntoLeftRight(list_array,0, list_length-1);
	}
	
	private TreeNode splitIntoLeftRight(ArrayList<Integer> num,int s, int e)
	{
	    if(s>e)
	        return null;
	    
	    int mid = s+(e-s)/2;
	    TreeNode node = new TreeNode(num.get(mid));
	    node.left = splitIntoLeftRight(num,s,mid-1);
	    node.right= splitIntoLeftRight(num,mid+1,e);
	    return node;
	    
	}
}
