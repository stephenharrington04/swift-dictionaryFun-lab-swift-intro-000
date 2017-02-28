//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var namesInList = [String]()
        for (name, typeOfIceCream) in favoriteFlavorsOfIceCream {
            if typeOfIceCream == flavor {
                namesInList.append(name)
            }
        }
        return namesInList
    }
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var namesInList = [String]()
        for (name, typeOfIceCream) in favoriteFlavorsOfIceCream {
            if typeOfIceCream == flavor {
                namesInList.append(name)
            }
        }
        return namesInList.count
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        var flavorOfIceCream: String? = nil
        for (name, typeOfIceCream) in favoriteFlavorsOfIceCream {
            if person == name {
                flavorOfIceCream = typeOfIceCream
            }
        }
        return flavorOfIceCream
    }
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson person: String) -> Bool {
        var trueOrFalse = Bool ()
        for (name, typeOfIceCream) in favoriteFlavorsOfIceCream {
            if person == name {
                if flavor == typeOfIceCream {
                    trueOrFalse = false
                } else {
                    favoriteFlavorsOfIceCream["\(name)"] = "\(flavor)"
                    trueOrFalse = true
                }
            }else {
                trueOrFalse = false
            }
        }
        return trueOrFalse
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        var trueOrFalse = Bool ()
        for (name, typeOfIceCream) in favoriteFlavorsOfIceCream {
            if person == name {
                favoriteFlavorsOfIceCream["\(name)"] = nil
                trueOrFalse = true
            } else {
                trueOrFalse = false
            }
        }
        return trueOrFalse
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        let numberOfAttendees = favoriteFlavorsOfIceCream.count
        return numberOfAttendees
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        var trueOrFalse = Bool ()
        for (name, typeOfIceCream) in favoriteFlavorsOfIceCream{
            if name == person {
                trueOrFalse = false
            } else {
                favoriteFlavorsOfIceCream["\(person)"] = "\(flavor)"
                trueOrFalse = true
            }
        }
        return trueOrFalse
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list = ""
        for name in allNames {
            for (person, flavor) in favoriteFlavorsOfIceCream {
                if name == person {
                    if list == "" {
                        list += "\(name) likes \(flavor)"
                    } else {
                        list += "\n"
                        list += "\(name) likes \(flavor)"
                    }
                }
        }
        }
        
        return list
    }

    
    
    
    
    
    

}
