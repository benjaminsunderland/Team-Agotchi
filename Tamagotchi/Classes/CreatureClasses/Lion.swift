//
//  Lion.swift
//  Tamagotchi
//
//  Created by James Hughes on 10/11/2017.
//  Copyright © 2017 Tammo Team. All rights reserved.
//

import Foundation

class Lion {
    
    var size: Int
    var age: Int
    var temp: Int
    var hungry: Bool
    var bursting: Bool
    var stomachContents: [String] = []
    var awake: Bool
    var happy: Int
    var born: Bool
    var alive: Bool
    var sick = false
    
    init(size: Int, age: Int, temp: Int, hungry: Bool, bursting: Bool, born: Bool) {
        self.size = size;
        self.age = age;
        self.temp = temp;
        self.hungry = true;
        self.bursting = false;
        self.awake = true;
        self.happy = 1
        self.born = born;
        self.alive = true
    }
    
    
    func lionStartsHungry() -> Bool {
        hungry = true
        return hungry
    }
    
   
    
    func eat(meal: String) -> String {
        if stomachContents.count <= 2 {
            stomachContents.append(meal)
        } else {
            return "Stomach Full"
        }
        return meal
    }
    
    func hungerStatus() -> Bool {
        if stomachContents.count <= 1 {
            hungry = true
            return hungry
        } else {
            hungry = false
            return hungry
        }
    }
    
    func pooNow(innerFunction:@escaping()->Void) {
        stomachContents.removeLast()
        innerFunction()
    }
    
    func updateAge() {
        age += 1
    }
    
    func timeTracker(time: Int) -> Int {
        return time
    }
    
    func awakeStatus() -> String {
        if awake == true {
            return "waaaa i'm tired"
            // take a time argument (based on actual time, and converted for our unit of time, and then let the player
            // know that the lion needs to sleep, or
            // does not need to sleep. depening on when it
            // last had a sleep.
            // depends on the age on the lion.
            // perhaps use a hash, key day, value sleep or nil.
        }
        
        return "Placeholdertext"
    }
    
    func sleep() {

        // if time creature has been awake for 4 'hours', it needs to sleep, and this makes it sleep.
        // will sleep for a set time.
    }
    
}
