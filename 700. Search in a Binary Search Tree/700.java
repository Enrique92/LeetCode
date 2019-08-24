/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
class Solution {
    public TreeNode searchBST(TreeNode root, int val) {
        // If the root Tree is null
        if (root == null) {
            return null;
        }
        
        // If the root Tree is equal to the next value
        if (root.val == val) {
            return root;
        }
        
        // If the root Tree is less than the next value
        if (root.val < val) {
            return searchBST(root.right, val);
        } else {
            return searchBST(root.left, val);
        }
    }
}