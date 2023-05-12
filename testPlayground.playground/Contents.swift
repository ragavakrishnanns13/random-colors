import UIKit

//arrays:
//var ages = [11,22,33,44,55]
//
//ages.insert(29, at: 0
//)
//ages.append(24)
//print(ages)
//ages.sort()
//print(ages)

//sets
//var ages = [1,2,3,4,5,6,7]
//
//var agesSet: Set<Int>=[]
//agesSet = [22,33,44,55,66,55,66,66,66,66]
//agesSet.insert(12)
//agesSet.contains(101)
//print(agesSet)

//dictionary
//let children: [String:String]=[
//    "Crackhead":"Luke",
//    "Smart":"Alex",
//    "Flirty":"Megan"
//]
//children["Smart"]

//functions, argument label, call site, parameters
//func adder(firstNum:Int, to secondNum:Int)->Int{
//    return firstNum+secondNum;
//}
//
//adder(firstNum: 33, to: 34)
//

//if,else if , else
//let darkModeon=false
//
//if darkModeon==true{
//    print("Epic")
//}
//else{
//    print("Not epic bro")
//}

//for loops, _ (used in place of immutable variable), ranges ... from to, ..< from to lessthan, ..>from to greter than
//
//var randomIntegers:[Int] = []
//
//for _ in 0..<10 {
//    let randomNumbers = Int.random(in: 0...50)
//    randomIntegers.append(randomNumbers)
//}
//print(randomIntegers)

//Enum or Enumeration are basically group of values that are related //switch
//enum moodSwing{
//    case sad
//    case happy
//    case angry
//}
//func getRagavsmood(when mood:moodSwing){
//
//    switch mood
//    {
//    case .angry:
//        print("okay bye")
//    case .sad:
//        print("iam tired yoo, i need rest")
//    case .happy:
//        print("yawn")
//    }
//
//}
//getRagavsmood(when: .sad)

//basic code with operators +,-,*,/,% and some logical operators

//optionals - they are used to handle absence of values which has the ability to crash our app
//var ages: [Int] = [22,11,2,3,4,5,76,45,43]
//ages.sort()
//if let:
//if let oldestAge = ages.last {
//    print("The oldest age is \(oldestAge)")
//}else {
//    print("There is no possible ages to find the oldest aged.")
//}
//nil coalescing: assinging values when there is no values like 999
//let oldestAge = ages.last ?? 999
//func getOldestage() {
//    guard let oldestAge = ages.last else {return}
//    print("\(oldestAge) is the oldest age.")
//}
//getOldestage()
//force unwrap: it will look for a value no matter what and crash, so don't use force wrap much excpet needed so much
//let oldestAge = ages.last!

//self -> it is the instance of the class

//class and inheritance
//class mobilePhones {
//    var model: String
//    var launchedYear: Int?
//    var price: Int
//
//    init (model: String, launchedYear: Int, price: Int){
//        self.model=model
//        self.launchedYear=launchedYear
//        self.price=price
//    }
//    func printValues(){
//        print(model)
//        print(launchedYear!)
//        print(price)
//    }
//
//}
//iPhone is a subclass of class mobilePhones
//class iPhone : mobilePhones{
//    override func printValues() {
//        print("To prove overriding")
//    }
//}
//let iphone11 = iPhone.init(model: "fjslf", launchedYear: 33, price: 23)
//
//iphone11.printValues()

//struct -> light weight and performant over classes. struct uses value types and classes uses reference types(when a change is made it effects the original truth but value types are a new copy and does not change the og truth) //important job interview question
//struct mobilePhones{
//    model:String
//    year:Int
//}

//extentions are used to add custom functionalitiles to a existing one
//subclass only gives the functionalities to itself but extentions gives it to the overall of what extension is it for
//extension String{
//
//    func removeWhiteSpaces()->String{
//        return components(separatedBy: .whitespaces).joined()
//    }
//}
//let myName = "ragava krishnan n s "
//print(myName.removeWhiteSpaces())

//breakpints can be enables by clicking on the line number, they are used to stop the code and debug purpose

let i: Int
for i in 1...100{
    
    if(i%3==0 && i%5==0){
        print("FIZZBUZZ")
    }
    else if(i%3==0){
        print("FIZZ")
    }
    else if(i%5==0 ){
        print("BUZZ")
    }
    else{
        print(i)
    }
    
}
