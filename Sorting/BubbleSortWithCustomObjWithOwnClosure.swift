class Student {
    var rollNo : Int?
    var name : String?
    var grade : String?
  
    init(studRollno : Int?, studName : String?, studGrade : String?) {
        self.rollNo = studRollno
        self.name = studName
        self.grade = studGrade
    }
  // *****************************************************************************************************************************
  // MARK: - No Need to conform Comparable, Equatable protocol because here we write own logic like comparable protocol functoion
  //which is taking any type of objects (Generic)
  static func sortedCustomObjectWithClosure<T>(ar : inout [T], lessThan : (_ obj1 : T, _ obj2 : T) -> Bool) {
      var i = 0
      while(i < ar.count) {
        var j = 0
        while(j < ar.count - i - 1) {
             if lessThan(ar[j], ar[j + 1]) {
                var temp = ar[j]
                ar[j] = ar[j + 1]
                ar[j + 1] = temp
            }
            j += 1
        }
        i += 1
    }
}
var studArr = [Student]()
var studObj1 = Student(studRollno: 3, studName: "Gaurav", studGrade: "A")
var studObj2 = Student(studRollno: 2, studName: "Varsha", studGrade: "B")
var studObj3 = Student(studRollno: 1, studName: "Muskan", studGrade: "C")

studArr.append(studObj3)
studArr.append(studObj2)
studArr.append(studObj1)

// Function call
Student.sortedCustomObjectWithClosure(ar: &studArr) { obj1, obj2 in
    obj1.rollNo ?? 0 > obj2.rollNo ?? 0 
}
