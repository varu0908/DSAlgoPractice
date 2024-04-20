import Foundation

class TreeNode<T> {
    var val : T?
    var leftNode : TreeNode<T>?
    var rightNode : TreeNode<T>?
    init(val : T?) {
        self.val = val
    }
}

class Tree {
    static func createTree<T>(_ arr : [T?]) -> TreeNode<T>? {
        var root : TreeNode<T>?
        guard arr.count > 0 else { return nil }
        if arr.count >= 1 {
            root = TreeNode(val: arr[0])
            var queue = [TreeNode<T>]()
            queue.append(root!)
            
            var curtIdx = 1
            while(queue.count > 0) {
                var temp = queue.removeFirst()
                
                if (curtIdx < arr.count && arr[curtIdx] != nil) {
                    var leftNode = TreeNode(val : arr[curtIdx])
                    temp.leftNode = leftNode
                    queue.append(leftNode)
                }
                curtIdx += 1
                
                if (curtIdx < arr.count && arr[curtIdx] != nil) {
                    var rightNode = TreeNode(val : arr[curtIdx])
                    temp.rightNode = rightNode
                    queue.append(rightNode)
                }
                curtIdx += 1
            }
        }
        return root
    }
    
    static func printPreorder<T>(_ root : TreeNode<T>?) {
        if (root == nil) {
            return
        }
        
        print(root?.val ?? 0)
        printPreorder(root?.leftNode)
        printPreorder(root?.rightNode)
    }
    
    static func printLevelOrder<T>(_ root : TreeNode<T>?) {
        if root == nil {
            return
        }
        var queue = [TreeNode<T>?]()
        queue.append(root)
        
        while (queue.count > 0) {
            var temp = queue.removeFirst()
            print(temp?.val ?? 0)
            
            if (temp?.leftNode != nil) {
                queue.append(temp?.leftNode)
            }
            if (temp?.rightNode != nil) {
                queue.append(temp?.rightNode)
            }
        }
    }
    
    static func checkLevelInLevelOrder<T>(_ root : TreeNode<T>?) {
        if root == nil {
            return
        }
        var queue = [TreeNode<T>?]()
        queue.append(root)
        var markerNode = TreeNode<T>(val: nil)
        queue.append(markerNode)
        
        while(queue.count > 1) {
            var temp = queue.removeFirst()
            if temp?.val != nil {
                if (temp?.leftNode != nil) {
                    queue.append(temp?.leftNode)
                }
                if (temp?.rightNode != nil) {
                    queue.append(temp?.rightNode)
                }
                print(temp?.val ?? 0,terminator: " ")
                
            }else {
                print("\n")
                queue.append(markerNode)
            }
        }
    }
}

//Tree.printLevelOrder(Tree.createTree([1,2,3,4,nil, 5, nil]))
Tree.checkLevelInLevelOrder(Tree.createTree([1,2,3,4,5,6,7,8,9,10]))


