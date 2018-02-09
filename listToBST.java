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
	   Integer[] list_array = new Integer[10000000];
	   while(head != null){
	       list_length ++;
	       list_array[i] = head.val;
	       head = head.next;
	       i++;
	   }
	   
	   list_array = Arrays.copyOfRange(list_array, 0, list_length);
	   return splitIntoLeftRight(list_array, list_length);
	}
	
	private TreeNode splitIntoLeftRight(Integer[] arr, int len){
	    if (len == 0)
	        return null;
	        
	    if(len == 1)
	        return new TreeNode(arr[0]);
	    
	    
	    int low = 0, high = len;
	    if(len%2 == 0){
	        
	        int mid = (low + high)/2; 
	        TreeNode root = new TreeNode(arr[mid]);
	        
	        Integer[] left_arr = Arrays.copyOfRange(arr, low, mid);
	        root.left = splitIntoLeftRight(left_arr, mid);
	
	        Integer[] right_arr = Arrays.copyOfRange(arr, mid+1, high);
      	    root.right = splitIntoLeftRight(right_arr, mid-1);
	        
	        return root;
	    }else {
	        int mid = (int)(low + high)/2;
	        TreeNode root = new TreeNode(arr[mid]);
	        
	        Integer[] left_arr = Arrays.copyOfRange(arr, low, mid);
	        root.left = splitIntoLeftRight(left_arr, mid);
	        
	        Integer[] right_arr = Arrays.copyOfRange(arr, mid+1, high);
	        root.right = splitIntoLeftRight(right_arr, mid);
	        
	        return root;
	    }
	}
}
