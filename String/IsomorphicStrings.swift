// MARK: Check Strings is Isomorphic or not?

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var dict = [Character : Character]()
    var dict1 = [Character : Character]()
    if s.count != t.count {
        return false
    }
    let sArray = Array(s)
    let tArray = Array(t)
    
    for i in 0..<s.count {
        var sch = sArray[i]
        var tch = tArray[i]
        var val = dict[sch] ?? nil;
        if val == nil {
            var val2 = dict1[tch]
            if (val2 == nil) {
                dict[sch] = tch
                dict1[tch] = sch
            } else {
                return false;
            }
        } else {
            if (val != tch) {
                return false
            }
        }
    }
    return true
}
