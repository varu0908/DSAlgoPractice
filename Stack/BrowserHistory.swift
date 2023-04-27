//MARK: https://leetcode.com/problems/design-browser-history/description/ 

class BrowserHistory {
    var stack = [String]()
    var forwardList = [String]()
    init(_ homepage: String) {
        stack.append(homepage)
    }
    
    func visit(_ url: String) {
        stack.append(url)
        forwardList.removeAll()
    }
    
    func back(_ steps: Int) -> String {
        var st = steps
        while (st > 0) {
            if (stack.count > 1) {
                forwardList.append(stack[stack.count - 1])
                stack.removeLast()
                st = st - 1
            } else {
                break
            }
        }
        return stack[stack.count - 1]
    }
    
    func forward(_ steps: Int) -> String {
        if (forwardList.count == 0) {
            return stack[stack.count - 1]
        }
        var st = steps
        while (st > 0) {
            if  (forwardList.count > 0) {
                stack.append(forwardList[forwardList.count - 1])
                forwardList.removeLast()
                st = st - 1
            } else {
                break;
            }
        }

        return stack[stack.count - 1]
    }
}

/**
 * Your BrowserHistory object will be instantiated and called as such:
 * let obj = BrowserHistory(homepage)
 * obj.visit(url)
 * let ret_2: String = obj.back(steps)
 * let ret_3: String = obj.forward(steps)
 */
