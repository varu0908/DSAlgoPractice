// Binary Tree
public class TreeNode<T> {
    public var value: T
    public var left : TreeNode<T>?
    public var right : TreeNode<T>?
    //public var children = [TreeNode<T>]()

    public init(_ value: T) {
        self.value = value
        self.left = nil
        self.right = nil
    }

    public func addLeftChild(_ node: TreeNode<T>) {
        left = node
    }
    public func addRightChild(_ node: TreeNode<T>) {
        right = node
    }
}

func traverse<T>(_ root : TreeNode<T>?) {
    if (root == nil) {
        return
    }
    print(root?.value)
    traverse(root!.left)
    traverse(root!.right)
}

var root1 = TreeNode<Int>(1);
var root2 = TreeNode<Int>(2);
var root3 = TreeNode<Int>(3);
var root4 = TreeNode<Int>(4);

root1.addLeftChild(root2) // root1.left = root2
root1.addRightChild(root3)
root2.addLeftChild(root4)

traverse(root1)
