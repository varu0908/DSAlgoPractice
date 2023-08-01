class Student : Comparable, Equatable {
    var rollNo : Int?
    var name : String?
    var grade : String?
  
    init(studRollno : Int?, studName : String?, studGrade : String?) {
        self.rollNo = studRollno
        self.name = studName
        self.grade = studGrade
    }
  
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.rollNo! > rhs.rollNo!
    }
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.rollNo! == rhs.rollNo!
    }
  // *********************************************************************************
  // MARK: - Create Custom logic for sorting like as higher order **sorted** function
    func sortedCustomObject<T : Comparable>( ar : inout [T]) -> Void {
        var i = 0
        while(i < ar.count) {
          var j = 0
          while(j < ar.count - i - 1) {
            if (ar[j] < ar[j+1]) {
                var temp = ar[j]
                ar[j] = ar[j + 1]
                ar[j + 1] = temp
            }
            j = j + 1
          }
        i = i + 1
    }
}
var studArr = [Student]()
var studObj1 = Student(studRollno: 3, studName: "Gaurav", studGrade: "A")
var studObj2 = Student(studRollno: 2, studName: "Varsha", studGrade: "B")
var studObj3 = Student(studRollno: 1, studName: "Muskan", studGrade: "C")

studArr.append(studObj3)
studArr.append(studObj2)
studArr.append(studObj1)
studObj1.sortedCustomObject(ar : &studArr)
